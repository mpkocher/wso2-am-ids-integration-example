cp wso2am-2.0.0/repository/conf/datasources/master-datasources.xml ../wso2am-2.0.0/repository/conf/datasources/master-datasources.xml
cp wso2is-5.2.0/repository/conf/datasources/master-datasources.xml ../wso2is-5.2.0/repository/conf/datasources/master-datasources.xml

# update the original indentity.xml in APIM to IDS
cp wso2am-2.0.0/repository/conf/identity/identity.xml ../wso2am-2.0.0/repository/conf/identity/identity.xml
cp wso2am-2.0.0/repository/conf/identity/identity.xml ../wso2is-5.2.0/repository/conf/identity/identity.xml
