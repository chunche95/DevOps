#!/bin/bash

# Iniciar el segundo contenedor RabbitMQ y conectarse a la misma red
docker run -d \
    --name="rabbit2" \
    --hostname="rabbit2" \
    -e RABBITMQ_ERLANG_COOKIE="secret string" \
    -e RABBITMQ_NODENAME="rabbit2" \
    --volume="$(pwd)/rabbitmq.config:/etc/rabbitmq/rabbitmq.config" \
    --volume="$(pwd)/definitions.json:/etc/rabbitmq/definitions.json" \
    --network=bridge \
    rabbitmq:3-management

# Iniciar el tercer contenedor RabbitMQ y conectarse a la misma red
docker run -d \
    --name="rabbit3" \
    --hostname="rabbit3" \
    -e RABBITMQ_ERLANG_COOKIE="secret string" \
    -e RABBITMQ_NODENAME="rabbit3" \
    --volume="$(pwd)/rabbitmq.config:/etc/rabbitmq/rabbitmq.config" \
    --volume="$(pwd)/definitions.json:/etc/rabbitmq/definitions.json" \
    --network=bridge \
    rabbitmq:3-management
