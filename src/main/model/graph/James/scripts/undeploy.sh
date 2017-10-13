#!/bin/bash
echo "Undeploy James server" >> /tmp/roboconf-recipes.log

docker rmi -f linagora/james-project:latest
