# rs-server-catalog

![Version: 0.0.2-a3](https://img.shields.io/badge/Version-0.0.2--a3-informational?style=flat-square) ![AppVersion: v0.2a3](https://img.shields.io/badge/AppVersion-v0.2a3-informational?style=flat-square)

RS SERVER CATALOG

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| CS GROUP |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| app.catalogBucket | string | `"rs-cluster-catalog"` | Object Storage bucket for the catalog |
| app.metadata.description | string | `"STAC catalog of Copernicus Reference System Python"` | update the catalog metadata description parameter over the default one received from the pystac client |
| app.metadata.id | string | `"rs-python"` | update the catalog metadata id parameter over the default one received from the pystac client |
| app.metadata.title | string | `"RS-PYTHON STAC Catalog"` | update the catalog metadata title parameter over the default one received from the pystac client |
| app.port | int | `8000` | Port for the application |
| app.presignedUrlExpirationTime | int | `1800` | Presigned URL expiration time in seconds. 30 min by default |
| app.uacHomeUrl | string | `"https://apikeymanager.subdomain.example.com/docs"` | URL of the API Key Manager home page (public) |
| app.uacURL | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `""` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `""` | OIDC End Point |
| auth.secret.oidc_realm | string | `""` | OIDC Realm |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"rs-server-catalog"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"0.2a3"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | list | `["/catalog","/auth"]` | Ingress path |
| namespace | string | `"processing"` | Namespace for the deployment |
| obs.endpoint | string | `"http://minio.minio.svc.cluster.local:9000"` | URL of the object storage service endpoint |
| obs.region | string | `"sbg"` | Region of the object storage service |
| obs.secret.ak | string | `"TDr8foJqSygBQ9YFmWDy"` | Access Key to authenticate with the object storage service |
| obs.secret.sk | string | `"z2RaqjFttnVZRTsLLqmy4PE6PzJOKzPsE47alDBs"` | Secret Key to authenticate with the object storage service |
| postgres.db | string | `"catalog"` | PostgreSQL database name |
| postgres.host.ro | string | `"rs-server-catalog-db-svc.database.svc.cluster.local"` | PostgreSQL service URL for Read Only |
| postgres.host.rw | string | `"rs-server-catalog-db-svc.database.svc.cluster.local"` | PostgreSQL service URL for Read Write |
| postgres.port | string | `"5432"` | PostgreSQL port |
| postgres.secret.pass | string | `"password"` | Password to authenticate with the PostgreSQL service |
| postgres.secret.user | string | `"postgres"` | Username to authenticate with the PostgreSQL service |
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
| tempo.endpoint | string | `"http://grafana-tempo-distributor.logging.svc.cluster.local:4317"` | Grafana tempo endpoint. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
