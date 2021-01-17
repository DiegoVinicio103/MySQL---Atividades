create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id_Categoria int auto_increment,
tipo varchar(255),
quantidade_sabores int,
primary key (id_Categoria)
);

create table tb_pizza(
id_Pizza int auto_increment,
borda varchar(100) not null default "Normal",
recheio varchar(100) not null,
tamanho varchar(100) not null default "Grande",
valor decimal (5,2) not null, 
categoria int not null,
primary key (id_Pizza),
foreign key (categoria) references tb_categoria(id_Categoria)
);

insert into tb_categoria (tipo, quantidade_sabores) values 
("Salgada", 1),
("Doce", 1),
("Salgada", 2),
("Doce", 2),
("Salgada", 4);

insert into tb_pizza (borda, recheio, tamanho, valor, categoria) values
("Requeijão", "Calabresa", "Grande", 49.90, 1),
("Catupiry", "Frango", "Grande", 55.90, 1),
("Catupiry", "Portuguesa", "Média", 44.90, 1),
("Normal", "Brigadeiro", "Média", 44.90, 2),
("Nutella", "Prestígio", "Média", 44.90, 2),
("Cheddar", "Quatro Queijos", "Grande", 65.90, 5),
("Catupiry", "Calabresa e Mussarela", "Grande", 65.90, 3),
("Normal", "Cartola e Brigadeiro", "Grande", 65.90, 4);

select * from tb_pizza where valor>45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where recheio like 'c%';

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria=tb_categoria.id_Categoria;

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria=tb_categoria.id_Categoria where tb_categoria.tipo ="Salgada";

 







