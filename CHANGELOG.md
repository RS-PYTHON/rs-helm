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

## [0.2a3] - 2024-09-05

### Added

- RSPY-341 : Update products types after eodag3 update
- RSPY-321 : First implementation of rs-server-staging
- RSPY-322 : Cadip search stac view
- RSPY-346 : Oauth2 authentication + cookie secret

### Changed

- app.uacURL from `http://apikeymanager.processing.svc.cluster.local:8000/check/api_key` to `http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key`

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
