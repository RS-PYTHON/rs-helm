# rs-server-edrs

![Version: 0.1.0-a5](https://img.shields.io/badge/Version-0.1.0--a5-informational?style=flat-square) ![AppVersion: v1.0a5](https://img.shields.io/badge/AppVersion-v1.0a5-informational?style=flat-square)

RS SERVER EDRS

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| RS-PYTHON |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity |
| app.confDir | string | `"/app/conf"` | Config directory for the application |
| app.edrsSearchConfigFile | string | `"edrs_search_config.yaml"` |  |
| app.edrsStations | string | `"edrs_stations.yaml"` |  |
| app.port | int | `8000` | Port for the application |
| app.station.bedc.authentication.auth_type | string | `"ftp"` | EDRS BEDC authentication type |
| app.station.bedc.authentication.ca_crt | string | `"/certs/ca.crt"` | EDRS BEDC CA certificate path |
| app.station.bedc.authentication.client_crt | string | `"/certs/tls.crt"` | EDRS BEDC client certificate path |
| app.station.bedc.authentication.client_key | string | `"/certs/tls.key"` | EDRS BEDC client key path |
| app.station.bedc.authentication.password | string | `"test"` | EDRS BEDC authentication password |
| app.station.bedc.authentication.username | string | `"test"` | EDRS BEDC authentication username |
| app.station.bedc.domain | string | `"mockup-station-edrs-headless.processing.svc.cluster.local"` | EDRS BEDC domain |
| app.station.bedc.service.name | string | `"edrs"` | EDRS BEDC service name |
| app.station.bedc.service.port | int | `21` | EDRS BEDC station port |
| app.station.bedc.service.url | string | `"mockup-station-edrs-headless.processing.svc.cluster.local"` | EDRS BEDC station URL |
| app.station.pedc.authentication.auth_type | string | `"ftp"` | EDRS PEDC authentication type |
| app.station.pedc.authentication.ca_crt | string | `"/certs/ca.crt"` | EDRS PEDC CA certificate path |
| app.station.pedc.authentication.client_crt | string | `"/certs/tls.crt"` | EDRS PEDC client certificate path |
| app.station.pedc.authentication.client_key | string | `"/certs/tls.key"` | EDRS PEDC client key path |
| app.station.pedc.authentication.password | string | `"test"` | EDRS PEDC authentication password |
| app.station.pedc.authentication.username | string | `"test"` | EDRS PEDC authentication username |
| app.station.pedc.domain | string | `"mockup-station-edrs-headless.processing.svc.cluster.local"` | EDRS PEDC domain |
| app.station.pedc.service.name | string | `"edrs"` | EDRS PEDC service name |
| app.station.pedc.service.port | int | `21` | EDRS PEDC station port |
| app.station.pedc.service.url | string | `"mockup-station-edrs-headless.processing.svc.cluster.local"` | EDRS PEDC station URL |
| app.uacURL | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service |
| app.useSSL | bool | `true` |  |
| app.useTokenModule | bool | `false` | The way the token for the external stations is loaded: own module or let eodag to do it (set it to false) |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `""` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `""` | OIDC End Point |
| auth.secret.oidc_realm | string | `""` | OIDC Realm |
| cors.origins | string | `"https://stac-browser-edrs.subdomain.example.com,http://localhost:8080"` | A list of origins that should be permitted to make cross-origin requests. Needed for STAC Browser |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"rs-server-edrs"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"1.0a5"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | list | `["/edrs"]` | Ingress path |
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
