#!/bin/bash
 

groupadd GrupoDahora

useradd youser -m -c "Quarto Teste" -p $(openssl passwd 123) -s /bin/bash -g GrupoDahora 


echo "Usuários criados."
