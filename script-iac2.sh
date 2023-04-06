#!/bin/bash

echo "[Atualizando servidor]"

echo "Atualizando pacotes"
apt-get update

echo "Instalando atualizações"
apt-get upgrade -y

echo "[Instalando Apache2]"
apt-get install apache2 -y

echo "[Intalando unzip]"
apt-get install unzip -y

echo "Baixando aplicação na pasta /tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo da aplicação"
unzip main.zip

echo "Copiando arquivos da aplicação no diretório do apache"
cd linux-site-dio-main
cp -R * /var/www/html

echo "Finalizado"
