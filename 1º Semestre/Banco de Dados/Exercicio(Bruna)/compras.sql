create database atividade;	
use atividade;

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

select nome, qtd_Medalhas from Atleta; -- Pra selecionar coisas específicas

select * from Atleta where modalidade like 'Vôlei'; -- Selecionar a modalidade que se parece com Vôlei

select * from Atleta order by modalidade; -- Ordenar de acordo com a modalidade

select * from Atleta order by qtd_Medalhas desc; -- Organizar de forma decrescente a qtd_Medalhas

select * from Atleta where nome like '%s%'; -- Mostrar nomes que contêm letra s

select * from Atleta where nome like 'b%'; -- Mostrar nomes que iniciam com letra b

select * from Atleta where nome like '%o'; -- Mostrar nomes que terminam com letra o 

select * from Atleta where nome like '%p_'; -- Mostrar nomes que a penúltima letra é p

update Atleta set qtd_Medalhas = 10 where id_Atleta = 1; -- Atualizar qtd_Medalhas, deixar o número = 10 pelo id_Atleta

update Atleta set modalidade = 'Corredor' where id_Atleta = 2; -- Atualizar a modalidade onde o id_Atleta é = 2

delete from Atleta where id_Atleta = 3;  -- Deletar da tabela o atleta com id_Atleta = 3

drop table Atleta; -- Abandonar a tabela Atleta

drop database atividade; -- Abandonar o BD atividade
