#!/bin/bash

TOPIC=covid19-obitos

docker exec -it kafka kafka-topics.sh --bootstrap-server localhost:9092 --topic $TOPIC --partitions 1 --replication-factor 1 --create

echo "Tópico kafka $TOPIC criado com sucesso"
