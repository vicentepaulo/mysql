
-- adicionar previlégios 
-- usuário full
create user 'admin02'@'localhost' identified by 'abc@123';
grant all privileges on *.* to 'admin02'@'locahost' with grant option;

-- personalizado
create user 'user01'@'localhost' identified by 'abc@123';
grant select, insert, update, delete, create temporary tables,
lock tables, execute on *.* to 'user01'@'locahost' with grant option;

-- usuário para backup
create user 'userbackup2'@'localhost' identified by 'abc@123';
grant select, reload, lock tables, execute, replication client
on notas_fiscais to 'userbackup2'@'locahost' with grant option;

-- personalizado schemas full tables
create user 'userpesonalizado'@'localhost' identified by 'abc@123';
grant select, insert, update, delete, create temporary tables,lock tables, execute
on sucos_vendas.* to 'userpesonalizado'@'locahost' with grant option;

-- personalizado schemas limit tables
create user 'userpesonalizado02'@'localhost' identified by 'abc@123';
grant select, insert, update
on sucos_vendas.notas_fiscais to 'userpesonalizado02'@'locahost';


-- remover previlégios

select * from mysql.user;

show grants for 'userbackup'@'localhost';

-- remover
revoke all privileges, grant option from 'userbackup'@'localhost';

