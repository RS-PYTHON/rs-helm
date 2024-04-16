# RS-Server Helm Charts

This repository contains the official RS-Server Helm charts for installing and configuring `rs-server` on Kubernetes.

## [rs-server-adgs](charts/rs-server-adgs)

The Auxiliary Data Gathering Service (ADGS) is a pick-up point for Sentinel auxiliary files. This service allows clients to discover and retrieve available auxiliary data files through a standard OData RESTful API. The following endpoints have been implemented in RS-Server to interact with ADGS RESTful API.

## [rs-server-cadip](charts/rs-server-cadip)

The CADU Interface delivery Point (CADIP) is a pick-up point for Sentinel CADU data. The CADIP allows clients to straightforwardly discover and retrieve available data files through a standard OData RESTful API. The following endpoints have been implemented in RS-Server to interact with CADIP RESTful API.

## [rs-server-catalog](charts/rs-server-catalog)

The catalog is a STAC catalog that contains the medatadata of the products. It is organized in collections and items. It is based on [STAC FastAPI](https://github.com/stac-utils/stac-fastapi).

## [rs-server-catalog-db](charts/rs-server-catalog-db)

The catalog's database is a PostgreSQL database with the PostGIS extension. It is based on [PgSTAC](https://github.com/stac-utils/pgstac).

## [rs-server-frontend](charts/rs-server-frontend)

The frontend is a simple FastAPI interface based on Swagger exposing the endpoints. A user can use it to interact with the rs-server backends (CADIP, ADGS, catalog, etc).

---

Find more documentation on the [rs-server repository](https://github.com/RS-PYTHON/rs-server).

---

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

### TL;DR

```bash
helm repo add rs-server https://rs-python.github.io/rs-helm
helm repo update rs-server
helm search repo rs-server --versions --devel
helm install my-release rs-server/<chart>
```

### Installing

Find below an example on how to install the `rs-server-cadip` component and set some values:

```bash
helm install rs-server-frontend rs-server/rs-server-frontend --namespace=processing --set ingress.host=dev-rspy.esa-copernicus.eu --set image.tag=latest --set image.PullPolicy=Always  
```

### Upgrading

Find below an example on how to upgrade the `rs-server-cadip` component, re-use previously set values, and set some values:

```bash
helm upgrade rs-server-cadip rs-server/rs-server-cadip --namespace=processing --reuse-values --set obs.endpoint=https://oss.eu-west-0.prod-cloud-ocb.orange-business.com --set obs.region=eu-west-0 --set obs.secret.ak=XXXXXXXXXXXXXX --set obs.secret.sk=YYYYYYYYYYYYYYYYYYYYY --force --version 0.0.0-f9c864f
```
