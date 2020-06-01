#!/bin/bash

#détruit le container
ID=$(docker ps -aqf "name=docker.server")
docker kill $ID 
docker rm $ID
