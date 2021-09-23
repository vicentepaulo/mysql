-- CRIAÇÃO DE TABELAS

create table tabela_de_vendas
(
numero varchar(5) not null,
data_venda date null,
cpf varchar(11) not null,
matricula varchar(5) not null,
imposto float null,
primary key(numero)
);


-- CRIAÇÃO DE CHAVES ESTRANGEIRAS

alter table tabela_de_vendas add constraint FK_CLIENTES
FOREIGN KEY(cpf) references clientes(cpf);
alter table notas drop foreign key FK_CLIENTES;

alter table notas add constraint FK_VENDEDORES
FOREIGN KEY (MATRICULA) REFERENCES vendedores (MATRICULA);
ALTER TABLE notas DROP FOREIGN KEY FK_VENDEDORES;

ALTER TABLE itens_notas ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO) REFERENCES produtos (codigo); 
ALTER TABLE itens_notas drop foreign key FK_PRODUTOS;

alter table itens_notas add constraint FK_NOTAS
FOREIGN KEY (NUMERO) REFERENCES notas (NUMERO);