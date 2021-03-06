# Example of using WSO2 Identity Server with API Manager

- Identity Server is on 9444 (offset=1)
- API Manager is on 9443
- Postgresql (9.6.0) configured on 5432

db Credentials

- user: apiuser
- password: apimanager


## Requirements

- wso2am-2.0.0 (Direct unzipped from WSO2)
- wso2is-5.2.0 (Direct unzipped from WSO2)
- postgresql-9.4.1211.jar  (https://jdbc.postgresql.org/download/postgresql-9.4.1211.jar)


## Directory Layout

rootdir

* postgresql-9.4.1211.jar
* wso2am-2.0.0/
* wso2im-5.2.0/
* wso2-am-ids-integration-example/ # this repo


## Setup

- manually add wilkes plugin to wso2 IDS (http://product-dist.wso2.com/p2/carbon/releases/wilkes/)
- `setup-db.sql` will create apiuser and necessary tables
- `create-tables` will initialize the schema for userstore,registry, and apimgt
- run `updater.sh` will mutate the wso2am-2.0.0 and wso2is-5.2.0 from the git repo custom XML files



