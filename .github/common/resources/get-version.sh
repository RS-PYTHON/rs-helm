#!/bin/bash
# Copyright 2023-2026 Airbus, CS Group
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Enable pipefail so git command failures do not result in null versions downstream
set -euo pipefail

: "${GITHUB_OUTPUT:=${RUNNER_TEMP:-/tmp}/github_output.txt}"
touch "${GITHUB_OUTPUT}"

RS_SERVER_GIT="https://github.com/${GITHUB_REPOSITORY_OWNER:-RS-PYTHON}/rs-server.git"

if [[ "${GITHUB_REF_TYPE}" == "tag" ]]; then
  if [[ "${GITHUB_REF_NAME}" =~ v[0-9].[0-9][ab] || "${GITHUB_REF_NAME}" =~ v[0-9][ab] ]] ; then
    # Sprint release
    # v0.1a10
    APP_VERSION=$(\
      git ls-remote --tags --refs --sort="v:refname" \
      "${RS_SERVER_GIT}" | grep -E 'v[0-9](.)?([0-9])?[ab]' | tail -n1 | sed 's/.*\///' \
    )
    echo "APP_VERSION=${APP_VERSION}" >> "${GITHUB_OUTPUT}"
    # v0.1a10
    echo "IMAGE_VERSION=${APP_VERSION#v}" >> "${GITHUB_OUTPUT}"
    # 0.1a10

    # Ugly workaround to transform the chart_version into SemVer 2, required by Helm
    CHART_VERSION_TMP=$(echo "${GITHUB_REF_NAME}" | sed 's/.*\///' | sed 's/^v//')
    CHART_VERSION_PREFIX=${CHART_VERSION_TMP%[ab]*}
    CHART_VERSION_SUFFIX=${CHART_VERSION_TMP/#${CHART_VERSION_PREFIX}}
    while [[ ${#CHART_VERSION_PREFIX} -lt 5 ]]; do
      CHART_VERSION_PREFIX+=".0"
    done
    if [[ ${#CHART_VERSION_PREFIX} -eq 5 ]]; then
      echo "CHART_VERSION=${CHART_VERSION_PREFIX}-${CHART_VERSION_SUFFIX}" >> "${GITHUB_OUTPUT}"
    fi
    # v0.1a7 => 0.1.0-a7
    # v1a7 => 1.0.0-a7
  elif [[ "${GITHUB_REF_NAME}" = v[0-9].[0-9] || "${GITHUB_REF_NAME}" = v[0-9] ]] ; then
    # Checkpoint release
    # v0.1 or v1
    APP_VERSION=$(\
      git ls-remote --tags --refs --sort="v:refname" \
      "${RS_SERVER_GIT}" | grep -E 'v[0-9](.)?([0-9])?$' | tail -n1 | sed 's/.*\///' \
    )
    echo "APP_VERSION=${APP_VERSION}" >> "${GITHUB_OUTPUT}"
    # v0.1
    echo "IMAGE_VERSION=${APP_VERSION#v}" >> "${GITHUB_OUTPUT}"
    # 0.1

    CHART_VERSION=$(echo "${GITHUB_REF_NAME}" | sed 's/.*\///' | sed 's/^v//')
    while [[ ${#CHART_VERSION} -lt 5 ]]; do
      CHART_VERSION+=".0"
    done
    if [[ ${#CHART_VERSION} -eq 5 ]]; then
      echo "CHART_VERSION=${CHART_VERSION}" >> "${GITHUB_OUTPUT}"
    fi
    # v0.1 => 0.1.0
    # v1   => 1.0.0
  fi
elif [[ "${GITHUB_REF_TYPE}" == "branch" ]]; then
  APP_VERSION=$(\
    git ls-remote --tags --refs --sort="v:refname" \
    "${RS_SERVER_GIT}" | grep -E 'v[0-9](.)?([0-9])?[ab]' | tail -n1 | sed 's/.*\///' \
  )
  echo "APP_VERSION=${APP_VERSION}" >> "${GITHUB_OUTPUT}"
  # v0.1a10

  ref_exists_in_rs_server=$(git ls-remote --heads "${RS_SERVER_GIT}" "${GITHUB_HEAD_REF}" | wc -l)
  if [[ "${ref_exists_in_rs_server}" == "1" ]]; then
    # Replace special characters by -
    IMAGE_VERSION=${GITHUB_HEAD_REF//[^a-zA-Z0-9]/-}
    # feat-711-multiple-item-search
  else
    IMAGE_PREFIX=${APP_VERSION#v}
    # 0.1a10
    IMAGE_VERSION=$(gh api "/orgs/${GITHUB_REPOSITORY_OWNER:-RS-PYTHON}/packages/container/rs-server-cadip/versions" \
      --jq '.[].metadata.container.tags[]' | grep "^${IMAGE_PREFIX}" | grep -v -- '-cache$' | sort -V | tail -n1)
    # 0.1a10.post105
    if [[ -z "${IMAGE_VERSION}" ]]; then
      echo "❌ No image found for prefix ${IMAGE_PREFIX} in rs-server-cadip" >&2
      exit 1
    fi
  fi
  echo "IMAGE_VERSION=${IMAGE_VERSION}" >> "${GITHUB_OUTPUT}"

  # Ugly workaround to transform the chart_version into SemVer 2, required by Helm
  CHART_VERSION_TMP=$(git ls-remote --tags --refs --sort="v:refname" \
      "${RS_SERVER_GIT}" | grep -E 'v[0-9](.)?([0-9])?[ab]' | tail -n1 | sed 's/.*\///' | sed 's/^v//')
  CHART_VERSION_PREFIX=${CHART_VERSION_TMP%[ab]*}
  CHART_VERSION_SUFFIX=${CHART_VERSION_TMP/#${CHART_VERSION_PREFIX}}
  while [[ ${#CHART_VERSION_PREFIX} -lt 5 ]]; do
    CHART_VERSION_PREFIX+=".0"
  done
  if [[ ${#CHART_VERSION_PREFIX} -eq 5 ]]; then
    echo "CHART_VERSION=${CHART_VERSION_PREFIX}-${CHART_VERSION_SUFFIX}-$(git rev-parse --short "${GITHUB_SHA}")" >> "${GITHUB_OUTPUT}"
  fi
  # v0.1a7 => 0.1.0-a7-1tr5hrt
  # v1a7 => 1.0.0-a7-1tr5hrt
fi

echo "APP_VERSION, IMAGE_VERSION and CHART_VERSION written to: ${GITHUB_OUTPUT}"
cat "${GITHUB_OUTPUT}"
