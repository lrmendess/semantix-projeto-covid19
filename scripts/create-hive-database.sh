#!/bin/bash

DBNAME=painel_covidbr

docker exec -it hive-server beeline -u jdbc:hive2://localhost:10000 -e "CREATE DATABASE $DBNAME;"

echo "Banco de dados $DBNAME criado com sucesso"
