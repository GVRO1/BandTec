create database Atleta;
use Atleta;

create table Atleta (
	id_Atleta int primary key,
	nome varchar(40),
	modalidade varchar(40),
	qtd_Medalhas int
);

select * from Atleta; -- Selecionar toda a tabela

insert into Atleta values -- Sempre dar os valores da tabela entre parênteses
(1, 'Bruna', 'Vôlei', 3),
(2, 'Felipe', 'futebol', 2),
(3, 'Carina', 'Vôlei', 2),
(4, 'Sergio', 'handebol', 4);

