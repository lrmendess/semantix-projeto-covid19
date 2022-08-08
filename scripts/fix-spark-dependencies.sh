#!/bin/bash

URL="https://repo1.maven.org/maven2/com/twitter/parquet-hadoop-bundle/1.6.0/parquet-hadoop-bundle-1.6.0.jar"
JAR=$(basename $URL)

wget $URL -O /tmp/$JAR

docker cp /tmp/$JAR jupyter-spark:/opt/spark/jars

rm /tmp/$JAR

echo "Dependências restauradas com sucesso"
