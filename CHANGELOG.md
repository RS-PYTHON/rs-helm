# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> Content of release :
>
>- **Added** for new features.
>- **Changed** for changes in existing functionality.
>- **Deprecated** for soon-to-be removed features.
>- **Removed** for now removed features.
>- **Fixed** for any bug fixes.
>- **Security** in case of vulnerabilities.

## [1.0a8] - 2026-03-27

### Added

- [PR#216](https://github.com/RS-PYTHON/rs-helm/pull/216) : new short dataset for S3 L0 processor
- [RSPY-979](https://github.com/RS-PYTHON/rs-helm/pull/232) : return valid geojson geometries#232

### Changed

- [RSPY-940](https://github.com/RS-PYTHON/rs-helm/pull/222): Use new auxip types
- bump docker image

### Fixed

- [PR#224](https://github.com/RS-PYTHON/rs-helm/pull/224) : Fix copyright
- [PR#226](https://github.com/RS-PYTHON/rs-helm/pull/226) : Fix mockup station names
- [PR#230](https://github.com/RS-PYTHON/rs-helm/pull/230) : Deploy correct rs-server version in tests

### Removed

- [RSPY-981](https://github.com/RS-PYTHON/rs-helm/pull/229) : Remove EDRS

## [1.0a7] - 2026-03-02

### Added

- [RSPY-906](https://github.com/RS-PYTHON/rs-helm/pull/217) : stac search external ids
- [PR#212](https://github.com/RS-PYTHON/rs-helm/pull/212) : new: 2 auxips, 2 cadus
- [PR#213](https://github.com/RS-PYTHON/rs-helm/pull/213) : Added antemeridian-crossing product

### Changed

- [PR#215](https://github.com/RS-PYTHON/rs-helm/pull/215) : Update to SeaweedFS 4.12
- [PR#221](https://github.com/RS-PYTHON/rs-helm/pull/221) : Update to seaweedfs 4.13
- [RSPY-926](https://github.com/RS-PYTHON/rs-helm/pull/218) : rs-server-osam
- [RSPY-490](https://github.com/RS-PYTHON/rs-helm/pull/220) : Allow to externalize CADIP/AUXIP collections configuration files
- Update docker image tag

### Removed

- [PR#219](https://github.com/RS-PYTHON/rs-helm/pull/219) : Remove useless OBS configuration


## [1.0a6] - 2026-02-02

### Added

- [PR#194](https://github.com/RS-PYTHON/rs-helm/pull/194) : Save keycloak attribute
- [PR#202](https://github.com/RS-PYTHON/rs-helm/pull/202) : New CADIP session S1A_20250611050700059594
- [PR#204](https://github.com/RS-PYTHON/rs-helm/pull/204) : Added 2 new AUX for S1L0
- [PR#190](https://github.com/RS-PYTHON/rs-helm/pull/190) : multiple item search
- [PR#205](https://github.com/RS-PYTHON/rs-helm/pull/205) : stac-external-ids-extension
- [PR#210](https://github.com/RS-PYTHON/rs-helm/pull/210) : Update to stac-browser v4.0.0

### Changed

- [PR#207](https://github.com/RS-PYTHON/rs-helm/pull/207) : Update to Helm 3.20.0
- [PR#196](https://github.com/RS-PYTHON/rs-helm/pull/196) : Retrieve and deploy correct image tags in CI/CD
- [PR#201](https://github.com/RS-PYTHON/rs-helm/pull/201) : Replace minio by seaweedfs
- [PR#209](https://github.com/RS-PYTHON/rs-helm/pull/209) : Enable CI on develop and tags
- [PR#210](https://github.com/RS-PYTHON/rs-helm/pull/210) : Add proxy timeout read for catalog ingress (1 hour)
- bump docker image tag

### Fixed

- [PR#194](https://github.com/RS-PYTHON/rs-helm/pull/197) : remove mockup secret from rs-server-edrs
- [PR#199](https://github.com/RS-PYTHON/rs-helm/pull/199) : Fix case where same branch exists in rs-server with special chars
- [PR#193](https://github.com/RS-PYTHON/rs-helm/pull/193) : edrs sync config

## [1.0a5] - 2025-12-23

### Added

- [RSPY-857](https://github.com/RS-PYTHON/rs-helm/pull/185) : Feat rspy857/endpoint bucket configuration
- [RSPY-814](https://github.com/RS-PYTHON/rs-helm/pull/180) : EDRS staging
- [RSPY-808](https://github.com/RS-PYTHON/rs-helm/pull/179) : rs-server-edrs
- [RSPY-807](https://github.com/RS-PYTHON/rs-helm/pull/175) : edrs mockup

### Changed

- [PR#183](https://github.com/RS-PYTHON/rs-helm/pull/183) : Update to stac-fastapi-pgstac 6.1.1
- [PR#185](https://github.com/RS-PYTHON/rs-helm/pull/185) : Update GitHub actions
- bump docker image tag
- update root README with rs-server-edrs and mockup-station-edrs

## [1.0a4] - 2025-11-20

### Changed

- [PR#174](https://github.com/RS-PYTHON/rs-helm/pull/174) : Regex support for S01SSMGRD
- [PR#176](https://github.com/RS-PYTHON/rs-helm/pull/176) : Update CORS values for stac-fastapi-pgstac v6.1.0
- [RSPY-834](https://github.com/RS-PYTHON/rs-helm/pull/177) : Implement CQL2 temporal operators in rs-server-cadip
- [PR#178](https://github.com/RS-PYTHON/rs-helm/pull/178) : Update URLs, comments and product type
- bump docker image tag

## [1.0a3] - 2025-10-23

### Added

- [PR#167](https://github.com/RS-PYTHON/rs-helm/pull/167) : Added S3B_20251010143722593812
- [PR#169](https://github.com/RS-PYTHON/rs-helm/pull/169) : Added 2 new prip products

### Changed

- [PR#166](https://github.com/RS-PYTHON/rs-helm/pull/166) : Pass cluster info from client to rs-dpr-service 166
- [RSPY-829](https://github.com/RS-PYTHON/rs-helm/pull/170) : Make client_id Optional for credential
- bump docker image tag

### fixed

- [PR#168](https://github.com/RS-PYTHON/rs-helm/pull/168) : Add missing env variable to allow staging PRIP products
- [PR#171](https://github.com/RS-PYTHON/rs-helm/pull/171) : Fix/cadip s3 ids
- [PR#172](https://github.com/RS-PYTHON/rs-helm/pull/172) : Modify lint-test workflow for Python and yamale

## [1.0a2] - 2025-09-29

### Added

- [RSPY-324](https://github.com/RS-PYTHON/rs-helm/pull/160) : Add new rs-prip-service
- [RSPY-761](https://github.com/RS-PYTHON/rs-helm/pull/161) : Preparing prip staging
- [RSPY-761](https://github.com/RS-PYTHON/rs-helm/pull/162) : Ptype config

### Changed

- [RSPY-766](https://github.com/RS-PYTHON/rs-helm/pull/159) : Updated rs-dpr-service Helm chart to include multiple environment variable for multiple processors
- Bump docker image version

## [1.0a1] - 2025-08-29

### Added

- [PR#151](https://github.com/RS-PYTHON/rs-helm/pull/151) : Add Lint and Test Chart Github Action
- [RSPY-402](https://github.com/RS-PYTHON/rs-helm/pull/145) : Add mockup PRIP station

### Changed

- [RSPY-667](https://github.com/RS-PYTHON/rs-helm/pull/156) : Update to stac-fastapi-pgstac 6.0.0
- [PR#152](https://github.com/RS-PYTHON/rs-helm/pull/152) : Update to pgstac 0.9.8
- Bump docker image version

### Fixed

- [PR#154](https://github.com/RS-PYTHON/rs-helm/pull/154) : Fix SonarQube kubernetes:S6865 - disable automounting

### Removed

- [PR#153](https://github.com/RS-PYTHON/rs-helm/pull/153) : Remove unused workdir for CADIP and AUXIP applications

## [0.2] - 2025-08-04

### Added

- [PR#138](https://github.com/RS-PYTHON/rs-helm/pull/138) : Update to stac-browser 3.3.5
- [PR#137](https://github.com/RS-PYTHON/rs-helm/pull/137) : Update to pgstac 0.9.7
- [RSPY-156](https://github.com/RS-PYTHON/rs-helm/pull/140) : data lifecycle (cleanup of expired STAC items)
- [PR#141](https://github.com/RS-PYTHON/rs-helm/pull/141) : update from tempo to alloy
- [RSPY-696](https://github.com/RS-PYTHON/rs-helm/pull/143) : Use CADIP STAC extension 1.3.0
- [RSPY-564](https://github.com/RS-PYTHON/rs-helm/pull/146) : Add maxItemsPerPage option in STAC browser chart

### Changed

- [PR#142](https://github.com/RS-PYTHON/rs-helm/pull/142) : Update link to valid copernicus Sentinel Data Legal Notice
- [PR#144](https://github.com/RS-PYTHON/rs-helm/pull/144) : Update STAC extensions
- Bump docker images version

## [0.2a15] - 2025-07-04

### Added

- [RSPY-569](https://github.com/RS-PYTHON/rs-helm/pull/130) : Added support for S3 authentication
- [RSPY-603](https://github.com/RS-PYTHON/rs-helm/pull/133) : Add obs description template
- [RSPY-706](https://github.com/RS-PYTHON/rs-helm/pull/134) : Handle AUXIP parameters that can have one or several values

### Changed

- [RSPY-601](https://github.com/RS-PYTHON/rs-helm/pull/132) : Revert operationnel namespace
- Bump docker images version

## [0.2a14] - 2025-06-10

### Added

- [RSPY-676](https://github.com/RS-PYTHON/rs-helm/pull/129) : Add new CADIP StationId field
- [RSPY-601-603](https://github.com/RS-PYTHON/rs-helm/pull/128) : Add osam service

## [0.2a13] - 2025-05-15

### Added

- [RSPY-557](https://github.com/RS-PYTHON/rs-helm/pull/116) : Use the auxip/cadip refresh token
- [RSPY-670](https://github.com/RS-PYTHON/rs-helm/pull/119) : Add ADGS2 secret
- [RSPY-487](https://github.com/RS-PYTHON/rs-helm/pull/120) : Deploy a ConfigMap to configure rs-catalog and rs-staging
- [PR#122](https://github.com/RS-PYTHON/rs-helm/pull/122) : trace otel request body
- [RSPY-641](https://github.com/RS-PYTHON/rs-helm/pull/125) : Add CQL2 temporal operators support to rs-server-auxip
- [RSPY-652/653/654](https://github.com/RS-PYTHON/rs-helm/pull/123) : Add rs-dpr-service

### Changed

- [PR#119](https://github.com/RS-PYTHON/rs-helm/pull/119) : Add ADGS2 secret
- [PR#124](https://github.com/RS-PYTHON/rs-helm/pull/124) :  Clean postgres from adgs and cadip
- Bump docker images version

### Fixed

- Set startupProbe.initialDelaySeconds to 10 for rs-server-adgs and rs-server-cadip
- [PR#126](https://github.com/RS-PYTHON/rs-helm/pull/126) : use indent instead of nindent in configmaps

## [0.2a12] - 2025-04-14

### Added

- RSPY-561 : Smarter handling of Staging OAuth2 tokens
- RSPY-611 : Publish our own STAC extension(s)

### Changed

- PgStac : bump version to `0.9.6`
- Bump docker images version to `0.2a12`

### Fixed

- RSPY-551 : No opentelemetry data for rs-server-adgs, rs-server-cadip, rs-server-staging after start/stop platform
- [PR#114](https://github.com/RS-PYTHON/rs-helm/pull/114) : Typo in `app.kubernetes.io/component` for ADGS

## [0.2a11] - 2025-03-12

### Added

- RSPY-602 : Update stac-fastapi / stac-fastapi-pgstac / pgstac to 5.0.x / 4.0.x / 0.9.x
- RSPY-614 : Add describedby links to CADIP/AUXIP collections
- Add affinity and tolerations for all services

### Changed

- [PR#102](https://github.com/RS-PYTHON/rs-helm/pull/102) : use `StatefulSet` for RS services with a PVC + add `startupProbe` + add recommended labels
- [PR#104](https://github.com/RS-PYTHON/rs-helm/pull/104) : rework secret
- [PR#106](https://github.com/RS-PYTHON/rs-helm/pull/106) : remove redundant -svc from all service names
- [PR#98](https://github.com/RS-PYTHON/rs-helm/pull/98) : add missing type for stac license link

## [0.2a10] - 2025-02-18

### Added

- RSPY-493 : extend filter attributes for rs-server-cadip/adgs

### Changed

- [PR#90](https://github.com/RS-PYTHON/rs-helm/pull/90) : Rename staging secret to allow multiple instances
- [PR#95](https://github.com/RS-PYTHON/rs-helm/pull/95) : Update configs for rs-server-cadip/adgs
- RSPY-596 : Update to stac-browser 3.3.0
- bumped docker images tags

### Fixed

- [PR#96](https://github.com/RS-PYTHON/rs-helm/pull/96) : Fix CADIP eodag config
- RSPY-598 : Support lte/gte operators for rs-server-cadip/adgs

## [0.2a9] - 2025-01-15

:sparkler: Happy new year !

> :warning: **BREAKING** : After [PR RS-PYTHON/rs-server#688](https://github.com/RS-PYTHON/rs-server/pull/688) configuration files should only be edited from the templates rs-server repository ([search link](https://github.com/search?q=repo%3ARS-PYTHON%2Frs-server+path%3Aservices%2F*%2Fconfig%2F*template*.yaml&type=code)).

### Added

- rs-server-staging : env variable for the dask's cluster selection

### Changed

- rs-server-cadip & rs-server-adgs : synchronize config files for int values
  - `max_items_per_page` increased by x10
- bump docker image tags
- adgs platformShortName in uppercase

### Fixed

- RSPY-555 : [RS-SERVER-ADGS] Collection configuration not modifiable with configmap update
  - additionnal commit : Add Absolute path for adgsSearchconfigFile
- RSPY-558 : Affinity and Toleration not set on rs-server-cadip, rs-server-adgs
- RSPY-575 : Cannot contact MasPalomas station anymore with token module = false

## [0.2a8] - 2024-12-12

> :warning: **BREAKING** : After [PR RS-PYTHON/rs-server#688](https://github.com/RS-PYTHON/rs-server/pull/688) configuration files should only be edited from the templates rs-server repository ([search link](https://github.com/search?q=repo%3ARS-PYTHON%2Frs-server+path%3Aservices%2F*%2Fconfig%2F*template*.yaml&type=code)).

### Added

- RSPY-342 : Persist staging jobs in a postgresql database (needs pygeoapi 0.18)
- RSPY-556 : Low performance of CADIP/AUXIP searches
- RSPY-527 : Securely support redirections when downloading a CADIP/AUXIP file

### Changed

- rs-server-station-secrets: Parameter client_secret should be optional
- use lowercase checksum from eodag
- bump docker image tags

### Fixed

- RSPY-555 : [RS-SERVER-ADGS] Collection configuration not modifiable with configmap update
- RSPY-558 : Affinity and Toleration configuration for rs-server-cadip and rs-server-adgs
- RSPY-511 : Search pagination from multiple CADIP/AUXIP stations

## [0.2a7] - 2024-11-22

> :warning: **BREAKING** : After [PR RS-PYTHON/rs-server#688](https://github.com/RS-PYTHON/rs-server/pull/688) configuration files should only be edited from the templates rs-server repository ([search link](https://github.com/search?q=repo%3ARS-PYTHON%2Frs-server+path%3Aservices%2F*%2Fconfig%2F*template*.yaml&type=code)).

### Added

- rs-server-adgs
  - name to the queryable
  - adgs2 mockup station in the conf
- RSPY-131 : rs-server-pagination

### Changed

- Set value of `context` to on in pgstac_settings (needed for pagination)
- rs-server-cadip : Sort is now by `PublicationDate`
- RSPY-450 : Update pgstac to 0.8.6
- bump docker image's tag

### Fixed

- Identation and removed useless quotes in multiple config files
- RSPY-518 : Staging not integrated with Tempo
- Missing CORS header for stac browser
- RSPY-531 : Add Catalog obs environment variable to be configurable

## [0.2a6] - 2024-11-07

### Added

- RSPY-403 : STAC Queryables (Catalog database part)
- RSPY-326 : Implement basic staging process
- Added new ADGS station (adgs2) in rs-server-station-secrets

### Changed

- ADGS service with new stac changes
- ADGS ingress path is now a list (temp fix while migrating from adgs to auxip endpoint)
- ADGS mockup updated with attributes
- ADGS mockup and ADGS for multiple adgs station

### Fixed

- Fixed missing platform in cadip
- Fixed several YAML indentation

## [0.2a5] - 2024-10-10

### Added

- RSPY-358 : Update helm charts to deploy RSPY-352
- RSPY-230 : Deploy STAC browser

### Changed

- Bumped Image version of docker images

### Fixed

- RSPY-419 : [Rs-server] Errors with rs-server-staging

## [0.2a4] - 2024-09-24

### Added

- RSPY-396 : Implement missing fields of virtual STAC collections

### Changed

- Bumped Image version of docker images

### Fixed

- RSPY-346 : add oauth2 auth endpoint for rs-server-catalog

## [0.2a3] - 2024-09-05

### Added

- RSPY-341 : Update products types after eodag3 update
- RSPY-321 : First implementation of rs-server-staging
- RSPY-322 : Cadip search stac view
- RSPY-346 : Oauth2 authentication + cookie secret

### Changed

- app.uacURL from `http://apikeymanager.processing.svc.cluster.local:8000/check/api_key` to `http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key`
- Bumped Image version of docker images

### Fixed

- RSPY-405 : uacCheckUrl or uacURL

## [0.2a2] - 2024-07-18

### Added

- RSPY-40 : LTA mockup
- RSPY-273 : add `app.uacHomeUrl` on rs-server-catalog
- RSPY-282 : add `app.metadata.description`, `app.metadata.id` and `app.metadata.title` on rs-server-catalog

## [0.2a1] - 2024-06-26

### Added

- Liveness and Readiness probes for mdockup-processor-dpr, mockup-station-cadip, mockup-station-adgs and rs-server-catalog
- `presignedUrlExpirationTime` for rs-server-catalog
- `cadipSessionExpand` for mockup-station-cadip
- `uacHomeUrl` for rs-server-frontend

### Changed

- Renamed `uacURL` to `uacCheckUrl` for rs-server-frontend
- CI/CD to take into account non SemVer 2 versions from rs-server
- ConfigMap for mockup-station-cadip
- Bumped Image version of docker images

### Fixed

- Liveness and Readiness probes for rs-server-catalog-db

## [0.1a10] - 2024-06-12

### Added

- Grafana Tempo for rs-server-cadip, rs-server-auxip, rs-server-catalog
- PVC for mockup-station-cadip and mockup-station-adgs
- ConfigMap for mockup-station-cadip and mockup-station-adgs

### Changed

- Ingress : added a parameter to enabled or not in the value file. Enabled is set to true by default.
- Image version for mockup

## [0.1a8] - 2024-04-30

### Added

- DPR mockup

### Changed

- Set tag from `latest` to `0.1a8` to match rs-server latest version.

### Removed

- `image.tag` in favor of `image.version`

## [0.1a7] - 2024-04-16

### Added

First release of RS-Server Helm Charts.
