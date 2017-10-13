#!/bin/bash
echo "ElasticSearch : Deployment" >> /tmp/roboconf-recipes.log

# Gather the docker image of elasticsearch

docker pull elasticsearch:2.2.1