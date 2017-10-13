#!/bin/bash
echo "James: Deployment" >> /tmp/roboconf-recipes.log

#wget https://raw.githubusercontent.com/apache/james-project/master/dockerfiles/run/docker-compose.yml
#docker-compose up

# Gather the docker image of james

docker pull linagora/james-project