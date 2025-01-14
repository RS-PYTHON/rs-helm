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
