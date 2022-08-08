#!/bin/bash

BASEDIR=$(dirname $0)

cd $BASEDIR/scripts

sh fix-spark-dependencies.sh
sh input-to-hdfs.sh
sh create-hive-database.sh
sh create-kafka-topic.sh

echo "Ambiente preparado com sucesso"
