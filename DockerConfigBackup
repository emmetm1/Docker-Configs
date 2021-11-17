#!/bin/bash

#Docker config backup

## Format date ##
today=$(date +"%Y-%m-%d")

## Stop containers ##
docker-compose -f /home/Docker/MediaCompose.yml down

## Tar current config to shared drive ##
tar --create --preserve-permissions --xz --file=/mnt/share/DockerConfigs/${today}.tar.xz /home/Docker

## Restart containers ##
docker-compose -f /home/Docker/MediaCompose.yml up -d
