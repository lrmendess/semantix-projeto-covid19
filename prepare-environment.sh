#!/bin/bash

BASEDIR=$(dirname $0)

cd $BASEDIR/scripts

sh fix-parquet-dependency.sh
sh fix-elastic-env.sh
sh input-to-hdfs.sh
sh create-hive-database.sh
sh create-kafka-topic.sh

echo "Ambiente preparado com sucesso"
