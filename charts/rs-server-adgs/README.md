# rs-server-adgs

![Version: 0.0.2-a5](https://img.shields.io/badge/Version-0.0.2--a5-informational?style=flat-square) ![AppVersion: v0.2a5](https://img.shields.io/badge/AppVersion-v0.2a5-informational?style=flat-square)

RS SERVER ADGS

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| CS GROUP |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity |
| app.confDir | string | `"/app/conf"` | Config directory for the application |
| app.eodagConfigFile | string | `"adgs_ws_config.yaml"` | Set properly the EODAG_ADGS_CONFIG env var. |
| app.eodagConfigFileTokenModule | string | `"adgs_ws_config_token_module.yaml"` |  |
| app.port | int | `8000` | Port for the application |
| app.station.endpoint.url | string | `"http://mockup-station-adgs-svc.processing.svc.cluster.local:8080/Products"` | ADGS URL |
| app.stationConfigFile | string | `"stations_cfg.json"` | Station configuration file for the application |
| app.uacURL | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service |
| app.useTokenModule | bool | `true` | The way the token for the external stations is loaded: own module or let eodag to do it (set it to false) |
| app.workDir | string | `"/app"` | Working directory for the application |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `""` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `""` | OIDC End Point |
| auth.secret.oidc_realm | string | `""` | OIDC Realm |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"rs-server-adgs"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"0.2a5"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | string | `"/adgs"` | Ingress path |
| namespace | string | `"processing"` | Namespace for the deployment |
| obs.endpoint | string | `"http://minio.minio.svc.cluster.local:9000"` | URL of the object storage service endpoint |
| obs.region | string | `"sbg"` | Region of the object storage service |
| obs.secret.ak | string | `"TDr8foJqSygBQ9YFmWDy"` | Access Key to authenticate with the object storage service |
| obs.secret.sk | string | `"z2RaqjFttnVZRTsLLqmy4PE6PzJOKzPsE47alDBs"` | Secret Key to authenticate with the object storage service |
| postgres.db | string | `"rspydemo"` | PostgreSQL database name |
| postgres.host | string | `"postgresql-cluster-rw.database.svc.cluster.local"` | PostgreSQL service URL |
| postgres.port | string | `"5432"` | PostgreSQL port |
| postgres.secret.pass | string | `"test"` | Password to authenticate with the PostgreSQL service |
| postgres.secret.user | string | `"test"` | Username to authenticate with the PostgreSQL service |
| probe.liveness.initialDelaySeconds | int | `30` | InitialDelaySeconds for the liveness probe |
| probe.liveness.path | string | `"/health"` | Path for the liveness probe |
| probe.liveness.periodSeconds | int | `30` | periodSeconds for the liveness probe |
| probe.liveness.port | int | `8000` | Port for the liveness probe |
| probe.liveness.timeoutSeconds | int | `5` | timeoutSeconds for the liveness probe |
| probe.readiness.initialDelaySeconds | int | `30` | InitialDelaySeconds for the readiness probe |
| probe.readiness.path | string | `"/health"` | Path for the readiness probe |
| probe.readiness.periodSeconds | int | `30` | periodSeconds for the readiness probe |
| probe.readiness.port | int | `8000` | Port for the readiness probe |
| probe.readiness.timeoutSeconds | int | `5` | timeoutSeconds for the readiness probe |
| replicaCount | int | `1` | Number of replicas for the deployment |
| resources.limit.cpu | string | `"500m"` | Pod CPU limit |
| resources.limit.ram | string | `"1000Mi"` | Pod memory limit |
| resources.request.cpu | string | `"100m"` | Pod CPU request |
| resources.request.ram | string | `"256Mi"` | Pod memory request |
| service.port | int | `8080` | Port for the service |
| stac_browser.urls | string | `"https://stac-browser-cadip.subdomain.example.com;https://stac-browser-catalog.subdomain.example.com"` |  |
| tempo.endpoint | string | `"http://grafana-tempo-distributor.logging.svc.cluster.local:4317"` | Grafana tempo endpoint. |
| tolerations | list | `[{"effect":"NoSchedule","key":"role","operator":"Equal","value":"access_csc"}]` | Pod toleration |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
