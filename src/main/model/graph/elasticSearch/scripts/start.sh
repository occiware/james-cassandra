#!/bin/bash
echo "Start James server mail " >> /tmp/roboconf-recipes.log

# Start James container and link it to Cassandra and ElasticSearch
docker run --detach=true --name=elasticsearch elasticsearch:2.2.1