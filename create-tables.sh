#!/usr/bin/env bash

set -e

USER_NAME=apiuser

API_MGT_SQL=../wso2am-2.0.0/dbscripts/apimgt/postgresql.sql

echo "Creating db apimgt with ${API_MGT_SQL}"
psql -U ${USER_NAME} -W -d apimgt -f ${API_MGT_SQL}

USERSTORE_SQL=../wso2im-5.2.0/dbscripts/postgresql.sql
echo "Creating Userstore and registry with ${USERSTORE_SQL}"
psql -U ${USER_NAME} -W -d apimgt -f ${USERSTORE_SQL}

