#!/bin/bash

DIRNAME=hist_painel_covidbr

docker exec -it namenode hdfs dfs -put -f /input/$DIRNAME /user/hive/warehouse

echo "Arquivos transferidos para o HDFS com sucesso (/user/hive/warehouse/$DIRNAME)"
