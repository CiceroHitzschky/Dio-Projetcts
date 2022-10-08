#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando apache2 e unzip..."

apt-get install apache2 unzip -y

echo "Criando diretório temporário..."

cd /tmp

echo "Fazendo download dos arquivos necessários..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."

unzip main.zip

cd linux-site-dio-main

echo "Criando diretório e copiando para o caminho do apache..."

cp -R * /var/www/html/



