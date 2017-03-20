#!/bin/bash

# remove containers + images + volumes
docker stop  $(docker ps -a -q)
wait
docker rm --force $(docker ps -a -q)
wait
docker rmi --force $(docker images -q)
wait
docker volume rm $(docker volume ls -f dangling=true -q)
wait