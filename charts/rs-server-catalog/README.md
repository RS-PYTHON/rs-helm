# rs-server-catalog

![Version: 0.1.0-a3](https://img.shields.io/badge/Version-0.1.0--a3-informational?style=flat-square) ![AppVersion: v1.0a3](https://img.shields.io/badge/AppVersion-v1.0a3-informational?style=flat-square)

RS SERVER CATALOG

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| RS-PYTHON |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity |
| app.bucketConfig | object | `{"bucketConfigFileName":"expiration_bucket.csv","expirationBucketCsv":"*, *, *, 30, rspython-ops-catalog-all-production\n","externalCatalogBucketConfigMapName":"","useExternalCatalogBucketConfigMap":false}` | Bucket configuration to use to monitor the lifespan and name of data buckets Use an external configuration through an external configmap with the value "externalCatalogBucketConfigMapName" OR Set your own configuration in the value expirationBucketCsv |
| app.bucketConfig.bucketConfigFileName | string | `"expiration_bucket.csv"` | File name for the configuration. If you use an external configmap, put the name of the file of your configmap, so the environment variables are set properly |
| app.bucketConfig.expirationBucketCsv | string | `"*, *, *, 30, rspython-ops-catalog-all-production\n"` | Bucket configuration. Used only if useExternalCatalogBucketConfigMap is false. Default config puts all data in a bucket called rspython-ops-catalog-all-production with a lifespan of 30 days. |
| app.bucketConfig.externalCatalogBucketConfigMapName | string | `""` | Name of the external configmap to use. Used only if useExternalCatalogBucketConfigMap is true |
| app.bucketConfig.useExternalCatalogBucketConfigMap | bool | `false` | Set to true to use an external configmap for the configuration instead of the one set in expirationBucketCsv |
| app.catalogBucket | string | `"rs-cluster-catalog"` | Object Storage bucket for the catalog |
| app.confDir | string | `"/app/conf"` | Config directory for the application |
| app.dataLifecyclePeriod | int | `86400` | Period in seconds between two data lifecycle cleaning tasks. If <0, the task is deactivated. |
| app.docsUrl | string | `"/catalog/api.html"` | URL of FastAPI Swagger UI |
| app.metadata.description | string | `"STAC catalog of Copernicus Reference System Python"` | update the catalog metadata description parameter over the default one received from the pystac client |
| app.metadata.id | string | `"rs-python"` | update the catalog metadata id parameter over the default one received from the pystac client |
| app.metadata.title | string | `"RS-PYTHON STAC Catalog"` | update the catalog metadata title parameter over the default one received from the pystac client |
| app.openApiUrl | string | `"/catalog/api"` | URL of FastAPI OpenAPI schema |
| app.port | int | `8000` | Port for the application |
| app.prefixPath | string | `"/catalog"` | The path prefix for the underlying FastAPI router |
| app.presignedUrlExpirationTime | int | `1800` | Presigned URL expiration time in seconds. 30 min by default |
| app.uacHomeUrl | string | `"https://apikeymanager.subdomain.example.com/docs"` | URL of the API Key Manager home page (public) |
| app.uacURL | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `""` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `""` | OIDC End Point |
| auth.secret.oidc_realm | string | `""` | OIDC Realm |
| cors.credentials | bool | `true` | Set to true to enable credentials via CORS requests. Note that you'll need to set CORS_ORIGINS to something other than *, because credentials are disallowed for wildcard CORS origins. |
| cors.headers | string | `"[\"*\"]"` | If CORS credentials are true and you're using an Authorization header, set this to Content-Type,Authorization. Alternatively, you can allow all headers by setting this to *. |
| cors.methods | string | `"[\"GET\",\"POST\",\"OPTIONS\"]"` | A list of HTTP methods that should be allowed for cross-origin requests. Defaults to "GET,POST,OPTIONS" |
| cors.origins_ | string | `"[\"https://stac-browser-catalog.subdomain.example.com\",\"http://localhost:8080\"]"` | A list of origins that should be permitted to make cross-origin requests. Needed for STAC Browser |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"rs-server-catalog"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"1.0a3"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | list | `["/catalog","/auth"]` | Ingress path |
| initContainers | list | `[]` | Pod initContainers |
| namespace | string | `"processing"` | Namespace for the deployment |
| obs.endpoint | string | `"http://minio.minio.svc.cluster.local:9000"` | URL of the object storage service endpoint |
| obs.region | string | `"sbg"` | Region of the object storage service |
| obs.secret.ak | string | `"TDr8foJqSygBQ9YFmWDy"` | Access Key to authenticate with the object storage service |
| obs.secret.sk | string | `"z2RaqjFttnVZRTsLLqmy4PE6PzJOKzPsE47alDBs"` | Secret Key to authenticate with the object storage service |
| otel.trace_body | bool | `false` | Trace request bodies and response contents with OpenTelemetry ? |
| otel.trace_headers | bool | `false` | Trace request headers with OpenTelemetry ? |
| postgres.db | string | `"catalog"` | PostgreSQL database name |
| postgres.host | string | `"rs-server-catalog-db.database.svc.cluster.local"` | PostgreSQL service URL |
| postgres.port | string | `"5432"` | PostgreSQL port |
| postgres.secret.pass | string | `"password"` | Password to authenticate with the PostgreSQL service |
| postgres.secret.user | string | `"postgres"` | Username to authenticate with the PostgreSQL service |
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
