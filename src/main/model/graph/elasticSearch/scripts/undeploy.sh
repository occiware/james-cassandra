#!/bin/bash
echo "Undeploy ElasticSearch" >> /tmp/roboconf-recipes.log

docker rmi -f elasticsearch:2.2.1
