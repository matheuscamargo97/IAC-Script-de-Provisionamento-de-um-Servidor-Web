#!bin/bash

echo "Atualizando o sistema e instalando Apache e Unzip..."

apt-get update
apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivo .zip na pasta tmp..."

cd /tmp
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo.zip em /var/www/html/"

unzip main.zip -d /var/www/html/

echo "removendo arquivo .zip"

rm main.zip

echo "Fim.."