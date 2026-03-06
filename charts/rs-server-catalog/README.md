# rs-server-catalog

![Version: 0.1.0-a7](https://img.shields.io/badge/Version-0.1.0--a7-informational?style=flat-square) ![AppVersion: v1.0a7](https://img.shields.io/badge/AppVersion-v1.0a7-informational?style=flat-square)

RS SERVER CATALOG

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| RS-PYTHON |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity |
| app.catalogBucket | string | `"rs-cluster-catalog"` | Object Storage bucket for the catalog |
| app.confDir | string | `"/app/conf"` | Config directory for the application |
| app.dataLifecyclePeriod | int | `86400` | Period in seconds between two data lifecycle cleaning tasks. If <0, the task is deactivated. Default: 24 hours |
| app.docsUrl | string | `"/catalog/api.html"` | URL of FastAPI Swagger UI |
| app.endpointOsam | string | `"https://subdomain.example.com/osam"` | URL of OSAM service |
| app.metadata.description | string | `"STAC catalog of Copernicus Reference System Python"` | update the catalog metadata description parameter over the default one received from the pystac client |
| app.metadata.id | string | `"rs-python"` | update the catalog metadata id parameter over the default one received from the pystac client |
| app.metadata.title | string | `"RS-PYTHON STAC Catalog"` | update the catalog metadata title parameter over the default one received from the pystac client |
| app.oauth2Attributes | string | `"monthly-download-volume-limit-gb"` | OAuth2 attributes to read and save, as a comma-separated str |
| app.openApiUrl | string | `"/catalog/api"` | URL of FastAPI OpenAPI schema |
| app.port | int | `8000` | Port for the application |
| app.prefixPath | string | `"/catalog"` | The path prefix for the underlying FastAPI router |
| app.presignedUrlExpirationTime | int | `1800` | Presigned URL expiration time in seconds. 30 min by default |
| app.uacHomeUrl | string | `"https://apikeymanager.subdomain.example.com/docs"` | URL of the API Key Manager home page (public) |
| app.uacURL | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `"apikeymanager"` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `"https://iam.example.com"` | OIDC End Point |
| auth.secret.oidc_realm | string | `"rspy"` | OIDC Realm |
| cors.credentials | bool | `true` | Set to true to enable credentials via CORS requests. Note that you'll need to set CORS_ORIGINS to something other than *, because credentials are disallowed for wildcard CORS origins. |
| cors.headers | string | `"*"` | If CORS credentials are true and you're using an Authorization header, set this to Content-Type,Authorization. Alternatively, you can allow all headers by setting this to *. |
| cors.methods | string | `"GET,POST,OPTIONS"` | A list of HTTP methods that should be allowed for cross-origin requests. Defaults to "GET,POST,OPTIONS" |
| cors.origins | string | `"https://stac-browser-catalog.subdomain.example.com,http://localhost:8080"` | A list of origins that should be permitted to make cross-origin requests. Needed for STAC Browser |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"rs-server-catalog"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"1.0a6"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | list | `["/catalog","/auth"]` | Ingress path |
| initContainers | list | `[]` | Pod initContainers |
| namespace | string | `"processing"` | Namespace for the deployment |
| obs.endpoint | string | `"http://seaweedfs-s3.seaweedfs.svc.cluster.local:9000"` | URL of the object storage service endpoint |
| obs.region | string | `"sbg"` |  |
| obs.secret.ak | string | `"TDr8foJqSygBQ9YFmWDy"` | Access Key to authenticate with the object storage service with admin rights. Only used for the data lifecyle. |
| obs.secret.sk | string | `"z2RaqjFttnVZRTsLLqmy4PE6PzJOKzPsE47alDBs"` | Secret Key to authenticate with the object storage service with admin rights. Only used for the data lifecyle. |
| otel.trace_body | bool | `false` | Trace request bodies and response contents with OpenTelemetry ? |
| otel.trace_headers | bool | `false` | Trace request headers with OpenTelemetry ? |
| postgres.db | string | `"catalog"` | PostgreSQL database name |
| postgres.host | string | `"cnpgstac-rw.database.svc.cluster.local"` | PostgreSQL service URL |
| postgres.port | string | `"5432"` | PostgreSQL port |
| postgres.secret.pass | string | `"password"` | Password to authenticate with the PostgreSQL service |
| postgres.secret.user | string | `"catalog"` | Username to authenticate with the PostgreSQL service |
| probe.liveness.initialDelaySeconds | int | `0` | InitialDelaySeconds for the liveness probe |
| probe.liveness.path | string | `"/catalog/_mgmt/health"` | Path for the liveness probe |
| probe.liveness.periodSeconds | int | `30` | periodSeconds for the liveness probe |
| probe.liveness.port | int | `8000` | Port for the liveness probe |
| probe.liveness.timeoutSeconds | int | `5` | timeoutSeconds for the liveness probe |
| probe.readiness.initialDelaySeconds | int | `0` | InitialDelaySeconds for the readiness probe |
| probe.readiness.path | string | `"/catalog/_mgmt/health"` | Path for the readiness probe |
| probe.readiness.periodSeconds | int | `30` | periodSeconds for the readiness probe |
| probe.readiness.port | int | `8000` | Port for the readiness probe |
| probe.readiness.timeoutSeconds | int | `5` | timeoutSeconds for the readiness probe |
| probe.startup.initialDelaySeconds | int | `20` | InitialDelaySeconds for the liveness probe |
| probe.startup.path | string | `"/catalog/_mgmt/health"` | Path for the liveness probe |
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
