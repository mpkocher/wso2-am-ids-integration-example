#!/usr/bin/env bash

# Update master-datasources.xml
cp wso2am-2.0.0/repository/conf/datasources/master-datasources.xml ../wso2am-2.0.0/repository/conf/datasources/master-datasources.xml
cp wso2is-5.2.0/repository/conf/datasources/master-datasources.xml ../wso2is-5.2.0/repository/conf/datasources/master-datasources.xml

# update the original indentity.xml in APIM to IDS
cp wso2am-2.0.0/repository/conf/identity/identity.xml ../wso2am-2.0.0/repository/conf/identity/identity.xml
cp wso2am-2.0.0/repository/conf/identity/identity.xml ../wso2is-5.2.0/repository/conf/identity/identity.xml

# update api-manager.xml from AM to IDS
cp wso2am-2.0.0/repository/conf/api-manager.xml ../wso2am-2.0.0/repository/conf/api-manager.xml
cp wso2am-2.0.0/repository/conf/api-manager.xml ../wso2is-5.2.0/repository/conf/api-manager.xml

# Update registry.xml in IDS
cp wso2is-5.2.0/repository/conf/registry.xml ../wso2is-5.2.0/repository/conf/registry.xml

# Update user-mgt.xml in the IDS and the AM (these need to be in sync)
cp wso2am-2.0.0/repository/conf/user-mgt.xml ../wso2is-5.2.0/repository/conf/user-mgt.xml
cp wso2am-2.0.0/repository/conf/user-mgt.xml ../wso2am-2.0.0/repository/conf/user-mgt.xml

# Copy Jar file into both AM and IDS
cp postgresql-9.4.1211.jar ../wso2am-2.0.0/repository/components/lib/postgresql-9.4.1211.jar
cp postgresql-9.4.1211.jar ../wso2is-5.2.0/repository/components/lib/postgresql-9.4.1211.jar
