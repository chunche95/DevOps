#!/bin/bash

docker-compose up -d

# Crear una red bridge llamada 'local'
#docker network create --driver bridge local

# Iniciar el primer contenedor RabbitMQ
docker run -d \
    --name="rabbit1" \
    --hostname="rabbit1" \
    -e RABBITMQ_ERLANG_COOKIE="secret string" \
    -e RABBITMQ_NODENAME="rabbit1" \
    --volume="$(pwd)/rabbitmq.config:/etc/rabbitmq/rabbitmq.config" \
    --volume="$(pwd)/definitions.json:/etc/rabbitmq/definitions.json" \
    --network=bridge \
    rabbitmq:3-management

sleep 2
echo "Ejecutando los slaves nodes"
./slaves.sh

