-- Criando o Banco de Dados
create database  db_escola;

-- Acesso ao DB
use db_escola;

-- Criando uma tabela
create table tb_alunos(
matricula bigint(6) auto_increment,
nome varchar(250) not null,
nota float not null,
cpf int not null,
genero char(1),
serie varchar(20),
primary key(matricula)
);

select * from tb_alunos;

-- Inserindo dados na tabela
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Davi", 8.50, 123456789, 'M', "Maternal");
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Diego", 5.00, 012345678, 'M', "Quinta");
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Lucas", 7.50, 001234567, 'M', "Sexta");
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Rafaela", 10.0, 987654321, 'F', "Sétima");
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Maria", 8.00, 098765432, 'F', "Quinta");
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Mariano", 10.00, 000000001, 'M', "Primeira");
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Diná", 2.00, 009876543, 'F', "Segunda");
insert into tb_alunos (nome, nota, cpf, genero, serie) values ("Manu", 5.00, 000987654, 'F', "Oitava");

-- Busca por alunos com notas maiores que 7
select * from tb_alunos where nota > 7;

-- Busca por alunos com notas menores que 7
select * from tb_alunos where nota < 7;

-- Atualizando um dado da tabela
update  tb_alunos set nota = 10.00 where matricula = 1;
