#!/bin/bash
echo "Start James server mail " >> /tmp/roboconf-recipes.log

# Start James container and link it to Cassandra and ElasticSearch
CASSANDRA_NAME=`docker ps --format "{{.Names}}" | grep cassandra`
ELASTICSEARCH_NAME=`docker ps --format "{{.Names}}" | grep elasticsearch`
 
#docker run --hostname test -p "25:25" -p 80:80 -p "110:110" -p "143:143" -p "465:465" -p "587:587" -p "993:993" --link ${ROBOCONF_CLEAN_REVERSED_INSTANCE_PATH}:cassandra --link elasticsearch:elasticsearch --name james -t linagora/james-project:latest

docker run --detach=true --hostname test -p "25:25" -p 80:80 -p "110:110" -p "143:143" -p "465:465" -p "587:587" -p "993:993" --link ${CASSANDRA_NAME}:cassandra --link ${ELASTICSEARCH_NAME}:elasticsearch --name james -t linagora/james-project:latest