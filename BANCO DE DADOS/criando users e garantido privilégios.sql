select * from mysql.user;-- verifica os usuarios que estão acessando o 
select * from mysql.db;
select * from mysql.tables_priv; -- verificar privilégio de tabelas
select * from mysql.columns_priv; -- verificar privilégio de colunas

repair table mysql.global_priv use_frm;

-- CRIAR USUÁRIO
create user 'ADM'@"localhost" 
identified by "123";

-- DELETAR USUÁRIO
DROP USER 'ADM'@'localhost';

-- VER PRIVILÉGIOS DO USUÁRIO
show grants for 'ADM'@'localhost';

-- CONCEDER TODOS OS PRIVILÉGIOS
grant all on locadora.* to 'ADM'@"localhost" ;

-- TIRAR OS PRIVILÉGIOS
revoke all privileges, grant option from 'ADM'@"localhost" ;

-- RECARREGA AS ALTERAÇÕES DE PRIVILÉGIOS
flush privileges;

-- AUTORIZA CRIAR TABELAS E COLUNAS NA LOCADORA
grant create on locadora.* to 'ADM'@"localhost" ;

-- AUTORIZAE INSERIR E ATUALIZAR REGISTROS NA TABELA LOCADORA
grant insert, update on locadora.* to 'ADM'@"localhost" ;

-- AUTORIZAR A BUSCA DE REGISTROS NA LOCADORA
grant select on locadora.* to 'ADM'@"localhost" ;

-- AUTORIZA A EXCLUSÃO DE REGISTRO NA LOCADORA
grant delete on locadora.* to 'ADM'@"localhost" ;

-- AUTORIZA A EXCLUSÃO DE TABELAS NA LOCADORA
grant drop on locadora.* to 'ADM'@"localhost" ;


