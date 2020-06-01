#!/bin/bash

COMMAND=$(docker ps |  grep docker.server)

#Verification du container 
if [ -z "$COMMAND" ]; then
  app="docker.server"
  docker build -t ${app} .
  docker run -d -p 56733:80 \
    --name=${app} \
    -v $PWD:/app ${app}
      
  docker ps
  else
      echo $COMMAND
fi
#laisser le temps de démarrer
sleep 2
GET 192.168.1.18:56733 

