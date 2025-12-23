# rs-server-prip

![Version: 0.1.0-a5](https://img.shields.io/badge/Version-0.1.0--a5-informational?style=flat-square) ![AppVersion: v1.0a5](https://img.shields.io/badge/AppVersion-v1.0a5-informational?style=flat-square)

RS SERVER PRIP

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| RS-PYTHON |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity |
| app.confDir | string | `"/app/conf"` | Config directory for the application |
| app.eodagConfigFile | string | `"prip_ws_config.yaml"` | Set properly the EODAG_PRIP_CONFIG env var. |
| app.eodagConfigFileTokenModule | string | `"prip_ws_config_token_module.yaml"` |  |
| app.oauth2Attributes | string | `"monthly-download-volume-limit-gb"` | OAuth2 attributes to read and save, as a comma-separated str |
| app.port | int | `8000` | Port for the application |
| app.pripSearchConfigFile | string | `"prip_search_config.yaml"` |  |
| app.ptypeMappingFile | string | `"product_type_mapping.yaml"` |  |
| app.station.s1a.endpoint.url | string | `"http://mockup-prip-s1a.processing.svc.cluster.local:8080/Products"` | PRIP station URL |
| app.station.s2b.endpoint.url | string | `"http://mockup-prip-s2b.processing.svc.cluster.local:8080/Products"` | PRIP station URL |
| app.stationConfigFile | string | `"stations_cfg.json"` | Station configuration file for the application |
| app.uacURL | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service |
| app.useTokenModule | bool | `false` | The way the token for the external stations is loaded: own module or let eodag to do it (set it to false) |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `""` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `""` | OIDC End Point |
| auth.secret.oidc_realm | string | `""` | OIDC Realm |
| cors.origins | string | `"https://stac-browser-prip.subdomain.example.com,http://localhost:8080"` | A list of origins that should be permitted to make cross-origin requests. Needed for STAC Browser |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"rs-server-prip"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"1.0a4"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | list | `["/prip"]` | Ingress path |
| initContainers | list | `[]` | Pod initContainers |
| namespace | string | `"processing"` | Namespace for the deployment |
| obs.endpoint | string | `"http://minio.minio.svc.cluster.local:9000"` | URL of the object storage service endpoint |
| obs.region | string | `"sbg"` | Region of the object storage service |
| obs.secret.ak | string | `"TDr8foJqSygBQ9YFmWDy"` | Access Key to authenticate with the object storage service |
| obs.secret.sk | string | `"z2RaqjFttnVZRTsLLqmy4PE6PzJOKzPsE47alDBs"` | Secret Key to authenticate with the object storage service |
| otel.trace_body | bool | `false` | Trace request bodies and response contents with OpenTelemetry ? |
| otel.trace_headers | bool | `false` | Trace request headers with OpenTelemetry ? |
| probe.liveness.initialDelaySeconds | int | `0` | InitialDelaySeconds for the liveness probe |
| probe.liveness.path | string | `"/health"` | Path for the liveness probe |
| probe.liveness.periodSeconds | int | `30` | periodSeconds for the liveness probe |
| probe.liveness.port | int | `8000` | Port for the liveness probe |
| probe.liveness.timeoutSeconds | int | `5` | timeoutSeconds for the liveness probe |
| probe.readiness.initialDelaySeconds | int | `0` | InitialDelaySeconds for the readiness probe |
| probe.readiness.path | string | `"/health"` | Path for the readiness probe |
| probe.readiness.periodSeconds | int | `30` | periodSeconds for the readiness probe |
| probe.readiness.port | int | `8000` | Port for the readiness probe |
| probe.readiness.timeoutSeconds | int | `5` | timeoutSeconds for the readiness probe |
| probe.startup.initialDelaySeconds | int | `10` | InitialDelaySeconds for the liveness probe |
| probe.startup.path | string | `"/health"` | Path for the liveness probe |
| probe.startup.periodSeconds | int | `2` | periodSeconds for the liveness probe |
| probe.startup.port | int | `8000` | Port for the liveness probe |
| probe.startup.timeoutSeconds | int | `1` | timeoutSeconds for the liveness probe |
| replicaCount | int | `1` | Number of replicas for the deployment |
| resources.limit.cpu | string | `"500m"` | Pod CPU limit |
| resources.limit.ram | string | `"1000Mi"` | Pod memory limit |
| resources.request.cpu | string | `"100m"` | Pod CPU request |
| resources.request.ram | string | `"256Mi"` | Pod memory request |
| service.port | int | `8080` | Port for the service |
| tempo.endpoint | string | `"http://alloy.monitoring.svc.cluster.local:4317"` | Grafana tempo endpoint. |
| tolerations | list | `[]` | Pod toleration |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
