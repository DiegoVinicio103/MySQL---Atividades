create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id_categoria int auto_increment,
tipo VARCHAR(100) not null,
generico boolean not null,
primary key (id_categoria)
);

insert into tb_categoria (tipo, generico) values
("cosmetico", true),
("cosmetico", false),
("medicamento controlado", false),
("medicamento convencional", true),
("medicamento convencional", false);

create table tb_produto(
id_produto int auto_increment,
nome varchar(100) not null,
valor decimal (6,2)  not null,
tipo int not null,
fornecedor varchar(100) not null,
primary key (id_produto),
foreign key (tipo) references tb_categoria(id_categoria)
);

insert into tb_produto (nome, valor, tipo, fornecedor) values 
("Diazepam", 89.90, 3, "Lab's House"),
("Midazolam", 79.90, 3, "Lab's House"),
("Dorflex", 19.90, 5, "Sanofi brasil"),
("Epocler", 11.90, 4, "Hypera Pharma"),
("Clear Men", 15.90, 2, "Unilever"),
("Shampoo Pantene", 19.90, 2, "P&G"),
("Condicionador Pantene", 21.90, 2, "P&G"),
("Loratadina", 9.90, 4, "Neoquimica");

select * from tb_produto where valor>50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like 'd%';

select * from tb_produto inner join tb_categoria on tb_produto.tipo = tb_categoria.id_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.tipo = tb_categoria.id_categoria where tb_categoria.tipo = "medicamento convencional";


