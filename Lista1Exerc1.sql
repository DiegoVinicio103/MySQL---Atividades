-- Criando o Banco de Dados
create database  db_servico_rh;

-- Acesso ao DB
use db_servico_rh;

-- Criando uma tabela
create table tb_funcionario(
id bigint(6) auto_increment,
nome varchar(255) not null,
salario float not null,
idade int not null,
cpf varchar(20),
cargo varchar(100),
primary key(id)
);

select * from tb_funcionario;

-- Inserindo dados na tabela
insert into tb_funcionario (nome, salario, idade, cpf, cargo) values ("Diego", 10000, 27, "123.456.789", "CEO");
insert into tb_funcionario (nome, salario, idade, cpf, cargo) values ("Freddie", 1000, 3, "012.123.456", "Pet");
insert into tb_funcionario (nome, salario, idade, cpf, cargo) values ("Vinicio", 5000, 25, "098.765.543", "Dev Pleno");
insert into tb_funcionario (nome, salario, idade, cpf, cargo) values ("Silva", 1999, 23, "567.789.098", "Dev Junior");
insert into tb_funcionario (nome, salario, idade, cpf, cargo) values ("Nascimento", 7000, 26, "001.223.445", "Dev Senior");

-- Busca por salario menor que R$ 2.000,00
select * from tb_funcionario where salario<2000;

-- Busca por salario maior que R$ 2.000,00
select * from tb_funcionario where salario>2000;

-- Atualizando um dado da tabela
update  tb_funcionario set nome = "Morfeus", salario = 12000 where id = 6;

