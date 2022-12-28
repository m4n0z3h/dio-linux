#!/bin/bash

echo "Iniciando o script!"

echo "Criando diretórios."

mkdir /publico
mkdir /adm
mkdir /dev
mkdir /hmg
mkdir /prd

echo "Criando grupos de usuários."

groupadd GRP_ADM
groupadd GRP_PUB
groupadd GRP_DEV
groupadd GRP_HMG
groupadd GRP_PRD

echo "Criando usuários"

useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd luis -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd ludimila -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd adelaide -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PUB
useradd elizabete -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PUB
useradd joaquina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PUB

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DEV
useradd manoel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DEV
useradd zezinho -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DEV

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_HMG
useradd manoel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_HMG
useradd zezinho -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_HMG

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_PRD

echo "Especificando permissões dos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /pub
chown root:GRP_SEC /dev
chown root:GRP_SEC /hmg
chown root:GRP_SEC /prd

chmod 770 /adm
chmod 777 /publico
chmod 770 /dev
chmod 770 /hmg
chmod 777 /prd


echo "Finalizando o script!"
