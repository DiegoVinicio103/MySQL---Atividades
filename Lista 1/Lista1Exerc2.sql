-- Criando o Banco de Dados
create database  db_ecommerce;

-- Acesso ao DB
use db_ecommerce;

-- Criando uma tabela
create table tb_produtos(
serialnumber bigint(6) auto_increment,
nome varchar(255) not null,
valor float not null,
estoque int not null,
categoria varchar(100),
fornecedor varchar(100),
primary key(serialnumber)
);

select * from tb_produtos;

-- Inserindo dados na tabela
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Ilíada", 49.90, 10, "Livros", "Intrínseca");
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Odisseia", 59.90, 15, "Livros", "Intrínseca");
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Miband 5", 249.90, 5, "Eletrônicos", "Xiaomi");
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Galaxy S20", 4399.90, 3, "Eletrônicos", "Samsung");
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Kindle", 249.90, 10, "Eletrônicos", "Amazon");
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Decamerão", 69.90, 17, "Livros", "Nova Fronteira");
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Cem anos de Solidão", 39.90, 10, "Livros", "Record");
insert into tb_produtos (nome, valor, estoque, categoria, fornecedor) values ("Iphone 11", 5499.90, 5, "Eletrônicos", "Apple");

-- Busca por produtos com valores maiores que R$ 500,00
select * from tb_produtos where valor > 500;

-- Busca por produtos com valores menores que R$ 500,00
select * from tb_produtos where valor < 500;

-- Atualizando um dado da tabela
update  tb_produtos set valor = 299.9, estoque = 3 where serialnumber = 3;

