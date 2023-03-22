#!/bin/bash

#Docker config backup

## Format date ##
today=$(date +"%Y-%m-%d")


## Stop containers ##
docker compose -f /home/emmet/docker/docker-compose.yaml down

## Tar current config to shared drive ##
if [ $? -eq 0 ]
then
    tar --create --preserve-permissions --xz --file=/mnt/WhemFiles/DockerConfigs/${today}.tar.xz /home/emmet/docker
else
    touch /mnt/WhemFiles/DockerConfigs/BACKUPFAILED_${today}.txt
fi


## Restart containers ##
docker compose -f /home/emmet/docker/docker-compose.yaml up -d
