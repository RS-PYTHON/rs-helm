# stac-browser

![Version: 0.0.2-a5](https://img.shields.io/badge/Version-0.0.2--a5-informational?style=flat-square) ![AppVersion: v0.2a5](https://img.shields.io/badge/AppVersion-v0.2a5-informational?style=flat-square)

STAC BROWSER

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| CS GROUP |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| app.SB_allowExternalAccess | string | `"false"` | Allows or disallows loading and browsing external STAC data |
| app.SB_catalogUrl | string | `"https://subdomain.example.com/catalog/"` | URL of the STAC catalog |
| app.SB_detectLocaleFromBrowser | string | `"true"` | Detect locale from user |
| app.SB_historyMode | string | `"history"` | Allows search engines to better crawl STAC Browser |
| app.oidc_client_id | string | `""` | OIDC Public Client ID |
| app.oidc_endpoint | string | `""` | OIDC End Point |
| app.oidc_realm | string | `""` | OIDC Realm |
| app.port | int | `8080` | Port for the application |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"stac-browser"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"sha256:0307f9f4413db9a5550b046b28603efd5dac79303579bc52885a2f187ce8393e"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"stac-browser.subdomain.example.com"` | Ingress host name. |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | string | `"/"` | Ingress path for the application Note that because of bug https://github.com/radiantearth/stac-browser/issues/479 the path is forced to / |
| namespace | string | `"processing"` | Namespace for the deployment |
| probe.liveness.initialDelaySeconds | int | `5` | InitialDelaySeconds for the liveness probe |
| probe.liveness.path | string | `"/"` | Path for the liveness probe |
| probe.liveness.periodSeconds | int | `10` | periodSeconds for the liveness probe |
| probe.liveness.port | int | `8080` | Port for the liveness probe |
| probe.liveness.timeoutSeconds | int | `1` | timeoutSeconds for the liveness probe |
| probe.readiness.initialDelaySeconds | int | `5` | InitialDelaySeconds for the readiness probe |
| probe.readiness.path | string | `"/"` | Path for the readiness probe |
| probe.readiness.periodSeconds | int | `10` | periodSeconds for the readiness probe |
| probe.readiness.port | int | `8080` | Port for the readiness probe |
| probe.readiness.timeoutSeconds | int | `1` | timeoutSeconds for the readiness probe |
| replicaCount | int | `1` | Number of replicas for the deployment |
| resources.limit.cpu | string | `"500m"` | Pod CPU limit |
| resources.limit.ram | string | `"1000Mi"` | Pod memory limit |
| resources.request.cpu | string | `"100m"` | Pod CPU request |
| resources.request.ram | string | `"256Mi"` | Pod memory request |
| service.port | int | `8080` | Port for the service |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
