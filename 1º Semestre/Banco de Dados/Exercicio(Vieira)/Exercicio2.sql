create database esporte;
use esporte;
create table Atleta( 
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int);
insert into Atleta values (1,'Fabio','Dormir',5),
(2,'Nicolas','Corrida',4),
(3,'Gabriel','Futebol',7),
(4,'Cesar','Futebol',1),
(5,'Bruna','Academia',7),
(6,'Oliver','Futebol',9);
select * from Atleta;
select * from Pais;
create table Pais(idPais int primary key,
nome varchar(20),
capital varchar(20));
insert into Pais values (1,'Brasil','Brasilia'),
(2,'Argentina','Buenos Aires'),
(3,'EUA','Washinton DC');
alter table Atleta add fkPais int;
desc Atleta;
alter table Atleta add foreign key (fkPais) references Pais (idPais);
update Atleta set fkPais = 1 where idAtleta = 2;
update Atleta set fkPais = 2 where idAtleta >= 3;
update Atleta set fkPais = 3 where idAtleta < 2 ;
select Atleta.*,Pais.nome,capital from Atleta,Pais where fkPais = idPais;
select Atleta.*,Pais.nome,capital from Atleta,Pais where fkPais = idPais and idPais = 2;
select * from Atleta,Pais where fkPais = idPais;
-- drop table Atleta;

