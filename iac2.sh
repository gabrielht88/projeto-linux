#! /bin/bash

echo "Atualizando o servidor 1/2...."
apt-get update
echo "Atualizando o servidor 2/2...."
apt-get upgrade -y
echo "Instalando o Apache2...."
apt-get install apache2 -y
echo "Instalando o unzip...."
apt-get install unzip -y
echo "Abrindo a pasta /tmp..."
cd /tmp
echo "Baixando a aplicação do endereço...."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando o arquivo..."
unzip main.zip
echo "Abrir o diretório descompactado"
cd linux-site-dio-main
echo "Copiar arquivos para pasta do Apache"
cp -R * /var/www/html/
echo "Encerrado!"
