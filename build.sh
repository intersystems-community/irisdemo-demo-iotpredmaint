#!/bin/bash

source ./buildtools.sh

printf "\nUpdating sub modules...\n"
git submodule update --init --recursive

printf "\nBuilding images...\n"

DOCKER_TAG=version-$VERSION

#
# Build IOTMON image
#
IOTMON_IMAGE_NAME=intersystemsdc/$GIT_REPO_NAME:iotmon-${DOCKER_TAG}
printf "\nBuilding image $IOTMON_IMAGE_NAME\n"
docker build -t $IOTMON_IMAGE_NAME ./iotmon
exit_if_error "IOTMON Image could not be built"

echo $IOTMON_IMAGE_NAME >> ../images_built

#
# Build ARCHIVEDB image
#
ARCHIVEDB_IMAGE_NAME=intersystemsdc/$GIT_REPO_NAME:archivedb-${DOCKER_TAG}
printf "\nBuilding image $ARCHIVEDB_IMAGE_NAME\n"
docker build -t $ARCHIVEDB_IMAGE_NAME ./archivedb
exit_if_error "ARCHIVEDB Image could not be built"

echo $ARCHIVEDB_IMAGE_NAME >> ../images_built
