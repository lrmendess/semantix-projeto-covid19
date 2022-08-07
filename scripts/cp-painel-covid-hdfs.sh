#!/bin/bash

BASEDIR=$(dirname $0)

# Download do .rar
URL="https://mobileapps.saude.gov.br/esus-vepi/files/unAFkcaNDeXajurGB7LChj8SgQYS2ptm/04bd3419b22b9cc5c6efac2c6528100d_HIST_PAINEL_COVIDBR_06jul2021.rar"
RARFILENAME="hist-painel-covidbr.rar"
OUTPUTDIR=${RARFILENAME%.*}

# Instalação do unrar
apt update
apt install unrar -y

# Extração do .rar
cd $BASEDIR/../input

wget $URL --output-document=$RARFILENAME

unrar -o+ -y x $RARFILENAME $OUTPUTDIR/

rm $RARFILENAME

# Envio dos dados extraídos para o hdfs
docker exec -it namenode hdfs dfs -mkdir -p /user/lucas/data
docker exec -it namenode hdfs dfs -put -f /input/$OUTPUTDIR /user/lucas/data

echo "Arquivos transferidos para o HDFS com sucesso (/user/lucas/data/$OUTPUTDIR)"
