Sistema de Biblioteca - Projeto de Django com SQL (Procedures & Triggers)

Este projeto é um sistema de biblioteca desenvolvido com Django e banco de dados SQL, focado no uso de procedures e triggers para automação de processos. A aplicação valida usuários através de uma procedure que bloqueia automaticamente o acesso após três tentativas inválidas, e permite desbloquear usuários e trocar senhas.

Além disso, o sistema registra todas as operações de inserção e atualização de dados, utilizando procedures e triggers para gerar logs detalhados, com filtros por usuário, data e tipo de operação. A exclusão lógica é implementada para marcar registros como excluídos sem removê-los fisicamente, garantindo rastreabilidade e integridade dos dados.

O banco de dados utilizado neste projeto foi estruturado no DBeaver e está incluído como um dump no repositório. Ele contém todas as tabelas necessárias, juntamente com as procedures e triggers para autenticação de usuários, registro de logs e exclusão lógica de registros. O Django foi configurado para se conectar ao banco MySQL e realizar as operações diretamente por meio dessas procedures, sem a necessidade de SQL manual. O dump permite que qualquer pessoa configure rapidamente o banco de dados em seu ambiente local, garantindo a replicação da estrutura e a realização de testes de maneira eficiente.


CONECTAR BANCO MYSQL AO DJANGO: 

instalar o mysql:
pip install mysqlclient
pip install mysql-connector-python

testar a conexão:
python manage.py inspectdb

configurar no settings com as informações do banco criado, exemplo:
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.mysql",
        "NAME": "sistemaBiblioteca",  # nome exato do banco no MySQL
        "USER": "root",               # usuário do MySQL
        "PASSWORD": "SUA_SENHA_AQUI", # mesma senha que você usa no DBeaver
        "HOST": "localhost",          # endereço (localhost = seu PC)
        "PORT": "3307",               # porta usada no DBeaver
    }







