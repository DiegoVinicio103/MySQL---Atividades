create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id_categoria int auto_increment,
area varchar(100) not null,
promocao boolean not null default false,
primary key (id_categoria)
);

create table tb_curso(
id_curso int auto_increment,
descricao varchar(150) not null,
valor decimal(6,2) not null,
cargahoraria int not null,
tipo int,
primary key (id_curso),
foreign key (tipo) references tb_categoria(id_categoria)
);

insert into tb_categoria(area, promocao) values
("Programação", true),
("Programação", false),
("Frontend", true),
("Frontend", false),
("FullStack", false),
("Data Science", false);

insert into tb_curso(descricao, valor, cargahoraria, tipo) values
("Introdução a POO com Java", 99.90, 60, 2),
("Introdução a POO com C#", 69.90, 60, 1),
("Angular, começando com o Framework", 59.90, 40, 3),
("Javascript avançaçado", 69.90, 50, 4),
("Analysis com Power BI", 49.90, 40, 6),
("Oracle PL/SQL", 129.90, 100, 6),
("Python para Data Science", 99.90, 80, 6),
("Desenvolvedor FullStack com Java", 300.00, 160, 5);

select * from tb_curso where valor<50;

select * from tb_curso where valor between 3 and 60;

select * from tb_curso where descricao like '%j%';

select * from tb_curso inner join tb_categoria on tb_curso.tipo = tb_categoria.id_categoria;

select * from tb_curso inner join tb_categoria on tb_curso.tipo = tb_categoria.id_categoria where tb_categoria.area = "Data Science";










