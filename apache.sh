#!/bin/bash

# Atualiza repositorios
apt update

# Instala atualização de pacotes
apt upgrade -y

# Instala unzip
apt install unzip -y

# Baixa aplicacao
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Extrai arquivos
unzip main.zip -d /var/www/html/
mv /var/www/html/linux-site-dio-main/* /var/www/html
rm -rf linux-site-dio-main
