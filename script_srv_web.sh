#! /bin/bash

echo "Atualizando repositórios..."
apt update -y

echo "Atualizando sistema..."
apt upgrade -y

echo "Instalando apache..."
apt install apache2 -y

echo "Instalando unzip..."
apt install unzip -y

echo "Entrando na pasta /tmp e baixando a aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando para diretório do apache"
cp /tmp/main.zip /var/www/html/
cd /var/www/html/

echo "Excluindo index anterior"
rm index.html

echo "Descompactando na html"
unzip main.zip

echo "Excluindo main.zip da html"
rm main.zip

echo "Fim!..."
