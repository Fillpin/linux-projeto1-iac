#!/bin/bash

echo -e "Olá!! \nVamos dar início ao processo!\n\nCriando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo -e "\nCriando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo -e "\nCriando Usuários..."

#Código mostrou erros ao inserir '-crypt', tive de removê-lo para o funcionamento

#Grupo GRP_ADM
useradd carlos -m -c "Carlos Henrique" -p $(openssl passwd senha123) -s /bin/bash -g GRP_ADM
useradd maria -m -c "Maria Eleonor" -p $(openssl passwd senha123) -s /bin/bash -g GRP_ADM
useradd joao_ -m -c "João Batista" -p $(openssl passwd senha123) -s /bin/bash -g GRP_ADM

#Grupo GRP_VEN
useradd debora -m -c "Débora Dantas" -p $(openssl passwd senha123) -s /bin/bash -g GRP_VEN
useradd sebastiana -m -c "Sebastiana Sales" -p $(openssl passwd senha123) -s /bin/bash -g GRP_VEN
useradd roberto -m -c "Roberto Ramos" -p $(openssl passwd senha123) -s /bin/bash -g GRP_VEN

#Grupo GRP_SEC
useradd josefina -m -c "Josefina Freitas" -p $(openssl passwd Senha123) -s /bin/bash -g GRP_SEC
useradd amanda -m -c "Amanda Lopes" -p $(openssl passwd Senha123) -s /bin/bash -g GRP_SEC
useradd rogerio -m -c "Rogério Magalhães" -p $(openssl passwd Senha123) -s /bin/bash -g GRP_SEC

echo -e "\n\nEspecificando permissões dos grupos aos diretórios..."
#Cedendo permissões dos grupos aos seus respectivos diretórios:

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

#Especificando permissões dos diretórios:

chmod 777 /publico/
chmod 770 /adm/ 
chmod 770 /ven/
chmod 770 /sec/ 

echo -e "\nConcluído!!"
