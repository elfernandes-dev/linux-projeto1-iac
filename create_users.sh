#!/bin/bash

echo "1/4 Criando diretórios ..."
mkdir /publico 
echo "Diretório publico - OK"

mkdir /adm 
echo "Diretório adm - OK"

mkdir /ven 
echo "Diretório ven - OK"

mkdir /sec
echo "Diretório sec - OK"
echo "Diretórios criados!"

echo "2/4 Criando grupos ..."
groupadd GRP_ADM
echo "Grupo GRP_ADM - OK"

groupadd GRP_VEN
echo "Grupo GRP_VEN - OK"

groupadd GRP_SEC
echo "Grupo GRP_SEC - OK"
echo "Grupos criados!"


echo "3/4 Criando usuários ..."
useradd carlos -c "Carlos da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e
echo "Usuário Carlos -> Grupo ADM - Ok"

useradd maria -c "Maria de Souza" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e
echo "Usuária Maria -> Grupo ADM - Ok"

useradd joao -c "João Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e
echo "Usuário João -> Grupo ADM - Ok"

useradd debora -c "Débora Souza" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e
echo "Usuária Débora -> Grupo VEN - Ok"

useradd sebastiana -c "Sebastiana da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e
echo "Usuária Sebastiana -> Grupo VEN - Ok"

useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e
echo "Usuário Carlos -> Grupo VEN - Ok"

useradd josefina -c "Josefina Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e
echo "Usuária Josefina -> Grupo SEC - Ok"

useradd amanda -c "Amanda Souza" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e
echo "Usuária Amanda -> Grupo SEC - Ok"

useradd rogerio -c "Rogério da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e
echo "Usuário Rogério -> Grupo SEC - Ok"
echo "Usuários criados!"

echo "4/4 Configurando as permissões de grupos e usuários ..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 700 /home/carlos
chmod 700 /home/maria
chmod 700 /home/joao
chmod 700 /home/debora
chmod 700 /home/sebastiana
chmod 700 /home/roberto
chmod 700 /home/josefina
chmod 700 /home/amanda
chmod 700 /home/rogerio
echo "Permissões atualizadas!"
echo "Criação de usuários, diretórios e permissões finalizados com sucesso!"
