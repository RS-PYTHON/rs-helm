# rs-osam

![Version: 0.1.0-a4](https://img.shields.io/badge/Version-0.1.0--a4-informational?style=flat-square) ![AppVersion: v1.0a4](https://img.shields.io/badge/AppVersion-v1.0a4-informational?style=flat-square)

RS Object Storage Access Manager

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| RS-PYTHON |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity |
| app.bucketConfig | object | `{"bucketConfigFileName":"expiration_bucket.csv","expirationBucketCsv":"*, *, *, 30, rspython-ops-catalog-all-production\n","externalBucketConfigMapName":"","useExternalBucketConfigMap":false}` | Bucket configuration from where the users can be taken Use an external configuration through an external configmap with the value "externalBucketConfigMapName" OR Set your own configuration in the value expirationBucketCsv |
| app.bucketConfig.bucketConfigFileName | string | `"expiration_bucket.csv"` | File name for the configuration. If you use an external configmap, put the name of the file of your configmap, so the environment variables are set properly |
| app.bucketConfig.expirationBucketCsv | string | `"*, *, *, 30, rspython-ops-catalog-all-production\n"` | Bucket configuration. Used only if externalBucketConfigMapName is false. Default config puts all data in a bucket called rspython-ops-catalog-all-production with a lifespan of 30 days. |
| app.bucketConfig.externalBucketConfigMapName | string | `""` | Name of the external configmap to use. Used only if externalBucketConfigMapName is true |
| app.bucketConfig.useExternalBucketConfigMap | bool | `false` | Set to true to use an external configmap for the configuration instead of the one set in expirationBucketCsv |
| app.confDir | string | `"/app/conf"` | Config directory for the application |
| app.docsUrl | string | `"/docs"` | URL suffix for the application. The same value should also be included into ingress.path |
| app.obsDescriptionTemplate | string | `"## linked to keycloak user %keycloak-user% from platform XYZ"` | Description template for ovh users when osam creates them |
| app.port | int | `8000` | Port for the application |
| app.uacHomeUrl | string | `"https://apikeymanager.subdomain.example.com/docs"` | URL of the API Key Manager home page (public) |
| app.uacUrl | string | `"http://apikeymanager.processing.svc.cluster.local:8000/auth/check_key"` | URL of the API Key Manager service (internal) |
| auth.secret.cookie_secret | string | `""` | Random string used to encode cookie-based HTTP sessions in SessionMiddleware |
| auth.secret.oidc_client_id | string | `""` | OIDC CLient ID |
| auth.secret.oidc_client_secret | string | `""` | OIDC Secret used to sync user info from Keycloak |
| auth.secret.oidc_endpoint | string | `""` | OIDC End Point |
| auth.secret.oidc_realm | string | `""` | OIDC Realm |
| image.PullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.name | string | `"operational-services-osam"` | Image name |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"rs-python"` | Image repository |
| image.version | string | `"1.0a4"` | Image version, can be a tag or a digest |
| ingress.enabled | bool | `true` | Enabled/Disable ingress |
| ingress.host | string | `"subdomain.example.com"` | Ingress host name |
| ingress.issuer.name | string | `"letsencrypt-prod"` | Ingress Issuer name |
| ingress.issuer.type | string | `"cluster-issuer"` | Ingress Issuer type |
| ingress.path | list | `["/storage"]` | Ingress path for the application |
| initContainers | list | `[]` | Pod initContainers |
| namespace | string | `"processing"` | Namespace for the deployment |
| obs.endpoint | string | `"http://minio.minio.svc.cluster.local:9000"` | URL of the object storage service endpoint |
| obs.region | string | `"sbg"` | Region of the object storage service |
| obs.secret.ak | string | `"TDr8foJqSygBQ9YFmWDy"` | Access Key to authenticate with the object storage service |
| obs.secret.sk | string | `"z2RaqjFttnVZRTsLLqmy4PE6PzJOKzPsE47alDBs"` | Secret Key to authenticate with the object storage service |
| otel.trace_body | bool | `false` | Trace request bodies and response contents with OpenTelemetry ? |
| otel.trace_headers | bool | `false` | Trace request headers with OpenTelemetry ? |
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
| provider.secret.ovh_application_key | string | `""` | OVH Application Key |
| provider.secret.ovh_application_secret | string | `""` | OVH Application Secret |
| provider.secret.ovh_consumer_key | string | `""` | OVH Consumer Key |
| provider.secret.ovh_endpoint | string | `""` | OVH End Point |
| provider.secret.ovh_service | string | `""` |  |
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
