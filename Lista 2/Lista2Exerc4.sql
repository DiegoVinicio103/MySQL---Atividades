create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id_categoria int auto_increment,
tipo varchar(100) not null,
nobre boolean not null default false,
primary key (id_categoria)
);

insert into tb_categoria (tipo, nobre) values 
("Bovino", true),
("Bovino", false),
("Suino", true),
("Suino", false),
("Aves", false);

create table tb_produto (
id_categoria int auto_increment,
descricao varchar(100) not null,
tipo int not null,
valorkg decimal (6,2) not null,
estoque decimal (6,2) not null,
primary key (id_categoria),
foreign key (tipo) references tb_categoria(id_categoria)
);

insert into tb_produto (descricao, tipo, valorkg, estoque) values
("Filé de Costela", 1, 69.90, 20.50),
("Lagarto", 2, 49.90, 10.00),
("Pernil", 3, 59.90, 12.50),
("Orelha", 4, 29.90, 13.00),
("Asinha de Frango", 5, 25.90, 25.00),
("T-Bone", 3, 65.90, 9.00),
("Alcatra", 3, 45.90, 14.50),
("Alcatra", 2, 49.90, 25.50);


select * from tb_produto where valorkg>50;

select * from tb_produto where valorkg between 3 and 60;

select * from tb_produto where descricao like 'a%';

select * from tb_produto inner join tb_categoria on tb_produto.tipo = tb_categoria.id_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.tipo = tb_categoria.id_categoria where tb_categoria.nobre = true;






