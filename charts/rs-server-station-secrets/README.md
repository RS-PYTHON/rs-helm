# rs-server-station-secrets

![Version: 0.1.0-a11](https://img.shields.io/badge/Version-0.1.0--a11-informational?style=flat-square) ![AppVersion: v1.0a11](https://img.shields.io/badge/AppVersion-v1.0a11-informational?style=flat-square)

RS SERVER STATION SECRETS

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| RS-PYTHON |  | <https://github.com/RS-PYTHON/rs-helm> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| app.stations.adgs.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.adgs.authentication.authorization | string | `"Basic test"` |  |
| app.stations.adgs.authentication.client_id | string | `"client_id"` |  |
| app.stations.adgs.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.adgs.authentication.grant_type | string | `"password"` |  |
| app.stations.adgs.authentication.password | string | `"test"` |  |
| app.stations.adgs.authentication.scope | string | `nil` |  |
| app.stations.adgs.authentication.token_url | string | `"http://mockup-station-adgs.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.adgs.authentication.username | string | `"test"` |  |
| app.stations.adgs.domain | string | `"mockup-station-adgs.processing.svc.cluster.local"` |  |
| app.stations.adgs.service.name | string | `"auxip"` |  |
| app.stations.adgs.service.url | string | `"http://mockup-station-adgs.processing.svc.cluster.local:8080"` |  |
| app.stations.adgs.trusteddomains[0] | string | `"trusted.domain1.eu"` |  |
| app.stations.adgs.trusteddomains[1] | string | `"trusted.domain2.eu"` |  |
| app.stations.adgs2.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.adgs2.authentication.authorization | string | `"Basic test"` |  |
| app.stations.adgs2.authentication.client_id | string | `"client_id"` |  |
| app.stations.adgs2.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.adgs2.authentication.grant_type | string | `"password"` |  |
| app.stations.adgs2.authentication.password | string | `"test"` |  |
| app.stations.adgs2.authentication.scope | string | `nil` |  |
| app.stations.adgs2.authentication.token_url | string | `"http://mockup-station-adgs2.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.adgs2.authentication.username | string | `"test"` |  |
| app.stations.adgs2.domain | string | `"mockup-station-adgs2.processing.svc.cluster.local"` |  |
| app.stations.adgs2.service.name | string | `"auxip"` |  |
| app.stations.adgs2.service.url | string | `"http://mockup-station-adgs2.processing.svc.cluster.local:8080"` |  |
| app.stations.cadip.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.cadip.authentication.authorization | string | `nil` |  |
| app.stations.cadip.authentication.client_id | string | `"client_id"` |  |
| app.stations.cadip.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.cadip.authentication.grant_type | string | `"password"` |  |
| app.stations.cadip.authentication.password | string | `"test"` |  |
| app.stations.cadip.authentication.scope | string | `nil` |  |
| app.stations.cadip.authentication.token_url | string | `"http://mockup-station-cadip-cadip.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.cadip.authentication.username | string | `"test"` |  |
| app.stations.cadip.domain | string | `"mockup-station-cadip-cadip.processing.svc.cluster.local"` |  |
| app.stations.cadip.service.name | string | `"cadip"` |  |
| app.stations.cadip.service.url | string | `"http://mockup-station-cadip-cadip.processing.svc.cluster.local:8080"` |  |
| app.stations.cdse.authentication.access_key | string | `"example_s3_access_key"` |  |
| app.stations.cdse.authentication.auth_type | string | `"s3"` |  |
| app.stations.cdse.authentication.secret_key | string | `"example_s3_secret_key"` |  |
| app.stations.cdse.domain | string | `"eodata.dataspace.copernicus.eu"` |  |
| app.stations.cdse.service.name | string | `"s3"` |  |
| app.stations.cdse.service.url | string | `"https://eodata.dataspace.copernicus.eu"` |  |
| app.stations.creodias.domain | string | `"datahub.creodias.eu"` |  |
| app.stations.creodias.service.name | string | `"odata"` |  |
| app.stations.creodias.service.url | string | `"https://datahub.creodias.eu/odata/v1/Assets"` |  |
| app.stations.ins.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.ins.authentication.authorization | string | `nil` |  |
| app.stations.ins.authentication.client_id | string | `"client_id"` |  |
| app.stations.ins.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.ins.authentication.grant_type | string | `"password"` |  |
| app.stations.ins.authentication.password | string | `"test"` |  |
| app.stations.ins.authentication.scope | string | `nil` |  |
| app.stations.ins.authentication.token_url | string | `"http://mockup-station-cadip-ins.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.ins.authentication.username | string | `"test"` |  |
| app.stations.ins.domain | string | `"mockup-station-cadip-ins.processing.svc.cluster.local"` |  |
| app.stations.ins.service.name | string | `"cadip"` |  |
| app.stations.ins.service.url | string | `"http://mockup-station-cadip-ins.processing.svc.cluster.local:8080"` |  |
| app.stations.lta.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.lta.authentication.authorization | string | `"Basic test"` |  |
| app.stations.lta.authentication.client_id | string | `"client_id"` |  |
| app.stations.lta.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.lta.authentication.grant_type | string | `"password"` |  |
| app.stations.lta.authentication.password | string | `"test"` |  |
| app.stations.lta.authentication.scope | string | `nil` |  |
| app.stations.lta.authentication.token_url | string | `"http://mockup-lta-lta.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.lta.authentication.username | string | `"test"` |  |
| app.stations.lta.domain | string | `"mockup-lta-lta.processing.svc.cluster.local"` |  |
| app.stations.lta.service.name | string | `"lta"` |  |
| app.stations.lta.service.url | string | `"http://mockup-lta-lta.processing.svc.cluster.local:8080"` |  |
| app.stations.mps.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.mps.authentication.authorization | string | `"Basic test"` |  |
| app.stations.mps.authentication.client_id | string | `"client_id"` |  |
| app.stations.mps.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.mps.authentication.grant_type | string | `"password"` |  |
| app.stations.mps.authentication.password | string | `"test"` |  |
| app.stations.mps.authentication.scope | string | `nil` |  |
| app.stations.mps.authentication.token_url | string | `"http://mockup-station-cadip-mps.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.mps.authentication.username | string | `"test"` |  |
| app.stations.mps.domain | string | `"mockup-station-cadip-mps.processing.svc.cluster.local"` |  |
| app.stations.mps.service.name | string | `"cadip"` |  |
| app.stations.mps.service.url | string | `"http://mockup-station-cadip-mps.processing.svc.cluster.local:8080"` |  |
| app.stations.mti.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.mti.authentication.authorization | string | `nil` |  |
| app.stations.mti.authentication.client_id | string | `"client_id"` |  |
| app.stations.mti.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.mti.authentication.grant_type | string | `"password"` |  |
| app.stations.mti.authentication.password | string | `"test"` |  |
| app.stations.mti.authentication.scope | string | `"openid"` |  |
| app.stations.mti.authentication.token_url | string | `"http://mockup-station-cadip-mti.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.mti.authentication.username | string | `"test"` |  |
| app.stations.mti.domain | string | `"mockup-station-cadip-mti.processing.svc.cluster.local"` |  |
| app.stations.mti.service.name | string | `"cadip"` |  |
| app.stations.mti.service.url | string | `"http://mockup-station-cadip-mti.processing.svc.cluster.local:8080"` |  |
| app.stations.nsg.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.nsg.authentication.authorization | string | `nil` |  |
| app.stations.nsg.authentication.client_id | string | `"client_id"` |  |
| app.stations.nsg.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.nsg.authentication.grant_type | string | `"password"` |  |
| app.stations.nsg.authentication.password | string | `"test"` |  |
| app.stations.nsg.authentication.scope | string | `nil` |  |
| app.stations.nsg.authentication.token_url | string | `"http://mockup-station-cadip-nsg.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.nsg.authentication.username | string | `"test"` |  |
| app.stations.nsg.domain | string | `"mockup-station-cadip-nsg.processing.svc.cluster.local"` |  |
| app.stations.nsg.service.name | string | `"cadip"` |  |
| app.stations.nsg.service.url | string | `"http://mockup-station-cadip-nsg.processing.svc.cluster.local:8080"` |  |
| app.stations.s1a.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.s1a.authentication.authorization | string | `"Basic test"` |  |
| app.stations.s1a.authentication.client_id | string | `"client_id"` |  |
| app.stations.s1a.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.s1a.authentication.grant_type | string | `"password"` |  |
| app.stations.s1a.authentication.password | string | `"test"` |  |
| app.stations.s1a.authentication.scope | string | `nil` |  |
| app.stations.s1a.authentication.token_url | string | `"http://mockup-prip-s1a.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.s1a.authentication.username | string | `"test"` |  |
| app.stations.s1a.domain | string | `"mockup-prip-s1a.processing.svc.cluster.local"` |  |
| app.stations.s1a.service.name | string | `"prip"` |  |
| app.stations.s1a.service.url | string | `"http://mockup-prip-s1a.processing.svc.cluster.local:8080"` |  |
| app.stations.s2b.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.s2b.authentication.authorization | string | `"Basic test"` |  |
| app.stations.s2b.authentication.client_id | string | `"client_id"` |  |
| app.stations.s2b.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.s2b.authentication.grant_type | string | `"password"` |  |
| app.stations.s2b.authentication.password | string | `"test"` |  |
| app.stations.s2b.authentication.scope | string | `nil` |  |
| app.stations.s2b.authentication.token_url | string | `"http://mockup-prip-s2b.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.s2b.authentication.username | string | `"test"` |  |
| app.stations.s2b.domain | string | `"mockup-prip-s2b.processing.svc.cluster.local"` |  |
| app.stations.s2b.service.name | string | `"prip"` |  |
| app.stations.s2b.service.url | string | `"http://mockup-prip-s2b.processing.svc.cluster.local:8080"` |  |
| app.stations.s3test.authentication.access_key | string | `"${access_key}"` |  |
| app.stations.s3test.authentication.auth_type | string | `"s3"` |  |
| app.stations.s3test.authentication.secret_key | string | `"${secret_key}"` |  |
| app.stations.s3test.domain | string | `"s3.gra.io.cloud.ovh.net"` |  |
| app.stations.s3test.service.name | string | `"s3"` |  |
| app.stations.s3test.service.url | string | `"https://s3.gra.io.cloud.ovh.net"` |  |
| app.stations.sgs.authentication.auth_type | string | `"oauth2"` |  |
| app.stations.sgs.authentication.authorization | string | `nil` |  |
| app.stations.sgs.authentication.client_id | string | `"client_id"` |  |
| app.stations.sgs.authentication.client_secret | string | `"client_secret"` |  |
| app.stations.sgs.authentication.grant_type | string | `"password"` |  |
| app.stations.sgs.authentication.password | string | `"test"` |  |
| app.stations.sgs.authentication.scope | string | `nil` |  |
| app.stations.sgs.authentication.token_url | string | `"http://mockup-station-cadip-sgs.processing.svc.cluster.local:8080/oauth2/token"` |  |
| app.stations.sgs.authentication.username | string | `"test"` |  |
| app.stations.sgs.domain | string | `"mockup-station-cadip-sgs.processing.svc.cluster.local"` |  |
| app.stations.sgs.service.name | string | `"cadip"` |  |
| app.stations.sgs.service.url | string | `"http://mockup-station-cadip-sgs.processing.svc.cluster.local:8080"` |  |
| namespace | string | `"processing"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
