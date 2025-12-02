# rs-server-staging

![Version: 0.1.0-a4](https://img.shields.io/badge/Version-0.1.0--a4-informational?style=flat-square) ![AppVersion: v1.0a4](https://img.shields.io/badge/AppVersion-v1.0a4-informational?style=flat-square)

RS SERVER STAGING

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| RS-PYTHON |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity |
| app.AccessTokenLifetime | int | `1200` | Access token validity duration (in seconds) |
| app.NbSecsBeforeAccessTokenExpire | int | `60` | Duration before expiration of the access token |
| app.NbSecsBeforeRefreshTokenExpire | int | `60` | Duration before expiration of the refresh token |
| app.RefreshTokenLifetime | int | `3600` | Refresh token validity duration (in seconds) |
| app.bucketConfig | object | `{"bucketConfigFileName":"expiration_bucket.csv","expirationBucketCsv":"*, *, *, 30, rspython-ops-staging-all-production\n","externalStagingBucketConfigMapName":"","useExternalStagingBucketConfigMap":false}` | Bucket configuration to use to monitor the lifespan and name of data buckets Use an external configuration through an external configmap with the value "externalStagingBucketConfigMapName" OR Set your own configuration in the value expirationBucketCsv |
| app.bucketConfig.bucketConfigFileName | string | `"expiration_bucket.csv"` | File name for the configuration. If you use an external configmap, put the name of the file of your configmap, so the environment variables are set properly |
| app.bucketConfig.expirationBucketCsv | string | `"*, *, *, 30, rspython-ops-staging-all-production\n"` | Bucket configuration. Used only if useExternalStagingBucketConfigMap is false. Default config puts all data in a bucket called rspython-ops-staging-all-production with a lifespan of 30 days. |
| app.bucketConfig.externalStagingBucketConfigMapName | string | `""` | Name of the external configmap to use. Used only if useExternalStagingBucketConfigMap is true |
| app.bucketConfig.useExternalStagingBucketConfigMap | bool | `false` | Set to true to use an external configmap for the configuration instead of the one set in expirationBucketCsv |
| app.catalogBucket | string | `"rs-cluster-catalog"` | Object Storage bucket for the catalog |
| app.confDir | string | `"/app/conf"` | Config directory for the application |
| app.docsUrl | string | `"/docs"` | URL suffix for the application. The same value should also be included into ingress.path |
| app.endpointAdgs | string | `"https://subdomain.example.com/auxip"` | Adgs server pod address |
| app.endpointCadip | string | `"https://subdomain.example.com/cadip"` | Cadip server pod address |
| app.endpointCatalog | string | `"http://rs-server-catalog.processing.svc.cluster.local:8080"` | Catalog pod address |
| app.endpointPrip | string | `"https://subdomain.example.com/prip"` | Prip server pod address |
| app.port | int | `8000` | Port for the application |
| app.station | object | `{"adgs":{"type":"auxip"},"adgs2":{"type":"auxip"},"cadip":{"type":"cadip"},"mti":{"type":"cadip"},"s1a":{"type":"prip"},"s2b":{"type":"prip"},"s3rspy":{"type":"s3"},"sgs":{"type":"cadip"}}` | List of configured stations (expect a secret with the same name) |
| app.uacHomeUrl | string | `"https://apikeymanager.subdomain.example.com/docs"` | URL of the API Key Manager home page (public) |
| app.uacUrl | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service (internal) |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `""` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `""` | OIDC End Point |
| auth.secret.oidc_realm | string | `""` | OIDC Realm |
| dask.clusterName | string | `"dask-staging"` | Dask cluster name for staging |
| dask.gateway_address | string | `"http://traefik-dask-gateway.dask-gateway.svc.cluster.local"` | Dask gateway address |
| dask.gateway_auth_type | string | `"jupyterhub"` | Dask gateway auth type |
| dask.jupyterhub_api_token | string | `"JUPYTER_API_TOKEN_HERE"` | Jupyter API Token when dask.jupyterhub=jupyterhub |
| edrs.secret.TO_BE_ADDED | string | `"TO_BE_ADDED"` |  |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"rs-server-staging"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"1.0a3"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | list | `["/processes","/jobs"]` | Ingress path for the application |
| initContainers | list | `[]` | Pod initContainers |
| namespace | string | `"processing"` | Namespace for the deployment |
| obs.endpoint | string | `"http://minio.minio.svc.cluster.local:9000"` | URL of the object storage service endpoint |
| obs.region | string | `"sbg"` | Region of the object storage service |
| obs.secret.ak | string | `"TDr8foJqSygBQ9YFmWDy"` | Access Key to authenticate with the object storage service |
| obs.secret.sk | string | `"z2RaqjFttnVZRTsLLqmy4PE6PzJOKzPsE47alDBs"` | Secret Key to authenticate with the object storage service |
| otel.trace_body | bool | `false` | Trace request bodies and response contents with OpenTelemetry ? |
| otel.trace_headers | bool | `false` | Trace request headers with OpenTelemetry ? |
| postgres.db | string | `"rspydemo"` | PostgreSQL database name |
| postgres.host | string | `"postgresql-cluster-rw.database.svc.cluster.local"` | PostgreSQL service URL |
| postgres.port | string | `"5432"` | PostgreSQL port |
| postgres.secret.pass | string | `"test"` | Password to authenticate with the PostgreSQL service |
| postgres.secret.user | string | `"test"` | Username to authenticate with the PostgreSQL service |
| probe.liveness.initialDelaySeconds | int | `0` | InitialDelaySeconds for the liveness probe |
| probe.liveness.path | string | `"/_mgmt/ping"` | Path for the liveness probe |
| probe.liveness.periodSeconds | int | `30` | periodSeconds for the liveness probe |
| probe.liveness.port | int | `8000` | Port for the liveness probe |
| probe.liveness.timeoutSeconds | int | `5` | timeoutSeconds for the liveness probe |
| probe.readiness.initialDelaySeconds | int | `0` | InitialDelaySeconds for the readiness probe |
| probe.readiness.path | string | `"/_mgmt/ping"` | Path for the readiness probe |
| probe.readiness.periodSeconds | int | `30` | periodSeconds for the readiness probe |
| probe.readiness.port | int | `8000` | Port for the readiness probe |
| probe.readiness.timeoutSeconds | int | `5` | timeoutSeconds for the readiness probe |
| probe.startup.initialDelaySeconds | int | `20` | InitialDelaySeconds for the liveness probe |
| probe.startup.path | string | `"/_mgmt/ping"` | Path for the liveness probe |
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
