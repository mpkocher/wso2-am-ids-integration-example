#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd ${__dir}
# Update the carbon.xml of ICS to run carbon on 9444 (offset=1)
cp wso2is-5.2.0/repository/conf/carbon.xml ../wso2is-5.2.0/repository/conf/carbon.xml

# Update master-datasources.xml
cp wso2am-2.0.0/repository/conf/datasources/master-datasources.xml ../wso2am-2.0.0/repository/conf/datasources/master-datasources.xml
cp wso2is-5.2.0/repository/conf/datasources/master-datasources.xml ../wso2is-5.2.0/repository/conf/datasources/master-datasources.xml

# update the original identity.xml in APIM to IDS. Are both these files identical?
cp wso2am-2.0.0/repository/conf/identity/identity.xml ../wso2am-2.0.0/repository/conf/identity/identity.xml
cp wso2is-5.2.0/repository/conf/identity/identity.xml ../wso2is-5.2.0/repository/conf/identity/identity.xml

# update api-manager.xml from AM to IDS
cp wso2am-2.0.0/repository/conf/api-manager.xml ../wso2am-2.0.0/repository/conf/api-manager.xml
cp wso2is-5.2.0/repository/conf/api-manager.xml ../wso2is-5.2.0/repository/conf/api-manager.xml

# Update registry.xml in IDS
cp wso2is-5.2.0/repository/conf/registry.xml ../wso2is-5.2.0/repository/conf/registry.xml

# Update user-mgt.xml in the IDS and the AM (these need to be in sync)
cp wso2is-5.2.0/repository/conf/user-mgt.xml ../wso2is-5.2.0/repository/conf/user-mgt.xml
cp wso2am-2.0.0/repository/conf/user-mgt.xml ../wso2am-2.0.0/repository/conf/user-mgt.xml

# Copy Jar file into both AM and IDS
cp postgresql-9.4.1211.jar ../wso2am-2.0.0/repository/components/lib/postgresql-9.4.1211.jar
cp postgresql-9.4.1211.jar ../wso2is-5.2.0/repository/components/lib/postgresql-9.4.1211.jar


cp wso2am-2.0.0/repository/deployment/server/synapse-configs/default/api/_AuthorizeAPI_.xml ../wso2am-2.0.0/repository/deployment/server/synapse-configs/default/api/_AuthorizeAPI_.xml
cp wso2am-2.0.0/repository/deployment/server/synapse-configs/default/api/_RevokeAPI_.xml ../wso2am-2.0.0/repository/deployment/server/synapse-configs/default/api/_RevokeAPI_.xml
cp wso2am-2.0.0/repository/deployment/server/synapse-configs/default/api/_TokenAPI_.xml ../wso2am-2.0.0/repository/deployment/server/synapse-configs/default/api/_TokenAPI_.xml

# Add example ldap store and config
mkdir -p ../wso2am-2.0.0/repository/deployment/server/userstores
cp wso2am-2.0.0/repository/deployment/server/userstores/forumsys_com.xml ../wso2am-2.0.0/repository/deployment/server/userstores/forumsys_com.xml

# The IDS is the only item that needs to be configured with a secondary datastore
mkdir -p ../wso2is-5.2.0/repository/deployment/server/userstores
cp wso2is-5.2.0/repository/deployment/server/userstores/forumsys_com.xml ../wso2is-5.2.0/repository/deployment/server/userstores/

# Set the Log level of AM to DEBUG
cp wso2am-2.0.0/repository/conf/etc/logging-bridge.properties ../wso2am-2.0.0/repository/conf/etc/logging-bridge.properties

cp wso2is-5.2.0/repository/conf/etc/logging-bridge.properties ../wso2is-5.2.0/repository/conf/etc/logging-bridge.properties

cd -