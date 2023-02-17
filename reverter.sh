#!/bin/bash/

echo "Revertendo códigos!\n"

echo "Excluindo Usuários..."

userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao_
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo "Excluindo Grupos..."

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Excluindo Pastas..."

rmdir /publico/
rmdir /adm/
rmdir /ven/
rmdir /sec/

echo "Concluído!"
