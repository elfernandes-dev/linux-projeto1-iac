# Infraestrutura como código (IaC): Script de criação de estrutura de usuários, diretórios e permissões

## _Origem do projeto: DIO -> Denilson Bonatti_

1 - O script tem como objetivo a criação automática de usuários, diretórios e permissões para o Linux utilizando a IaC

2 - Os elementos a serem criados são:
- Quatro diretórios na raiz do sistema (publico, adm, ven e sec);
- Três grupos (GRP_ADM, GRP_VEN e GRP_SEC)
- Nove usuários (Carlos, Maria, João, Débora, Sebastiana, Roberto, Josefina, Amanda e Rogério)

3 - O dono de todos os diretórios criados será o usuário root;

4 - Todos os usuários terão permissão total dentro do diretório publico;

5 - A designação dos usuários, por grupo, terá a seguinte ordem:
- Grupo: GRP_ADM, Usuários: Carlos, Maria e João;
- Grupo: GRP_VEN, Usuários: Débora, Sebastiana e Roberto;
- Grupo: GRP_SEC, Usuários: Josefina, Amanda e Rogério.

6 - Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;

7 - Os usuários não terão permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;

8 - Requisitos do sistema:
- Distribuição Debian ou derivados;
- Alterar a permissão do script com o comando ***chmod +x web_server***.
