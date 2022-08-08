#!/bin/bash

TOPIC=covid19-obitos

echo "Para finalizar o consumidor, use Ctrl + C"

docker exec -it kafka kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $TOPIC --from-beginning

echo "Teste de consumo de $TOPIC executado com sucesso"