#!/bin/bash

printf "\n\nStopping and deleting previous containers...\n"
docker-compose stop
docker-compose rm -f
sudo rm -rf ./advanced_analytics/shared/zeppelin/conf
sudo rm -rf ./advanced_analytics/shared/zeppelin/logs

docker-compose up