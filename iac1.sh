#!/bin/bash

echo  "Criando  diretorios..."

mkdir  /publico
mkdir  /adm
mkdir  /ven
mkdir  /sec

echo "Criando grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd user1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd user2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd user3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Atribuidno permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "script finalizado" 
