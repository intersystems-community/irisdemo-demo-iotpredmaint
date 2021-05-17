
include .env

build:
	docker-compose stop
	docker-compose rm -f
	sudo rm -rf ./advanced_analytics/shared/zeppelin/conf
	sudo rm -rf ./advanced_analytics/shared/zeppelin/logs

	docker-compose build
clean:
	-docker-compose rm -f
	-docker rmi ${DOCKER_REPOSITORY}:iotpredmaint_archivedb
	-docker rmi ${DOCKER_REPOSITORY}:iotpredmaint_iotmon 
	
run:
	docker-compose up