#!/bin/bash

sudo docker compose -f docker-compose-all.yaml up --build 

# Wait until rabbitmq container ends the initialization

sudo docker compose -f docker-compose-ita.yaml up --build 
sudo docker compose -f docker-compose-fra.yaml up --build 
sudo docker compose -f docker-compose-ger.yaml up --build 

docker ps -a