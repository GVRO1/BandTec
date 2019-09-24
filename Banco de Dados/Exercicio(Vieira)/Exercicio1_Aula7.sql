create database familia;
use familia;
create table Gasto (idGastos int primary key, dataG date, valor decimal(10,2), descricao varchar(50));
insert into Gasto values (1,'2019-09-20',10.60,'Comprou batata na feira'),
(2,'2010-09-20',1050.90,'Comprou um celular'),
(3,'2010-12-26',1053504.90,'Comprou uma casa');
create table pessoas (idPessoa int primary key, nome varchar(40), data_de_nascimento date, profissão varchar(50));
insert into pessoas values (1,'Gabriel Vieira','2001-12-18','Dev-Ops FUULLLLSTECKKK ARDUINO MEN'),
(2,'Carina Domingues','1996-01-31','FULLSTECK'),
(3,'Cesar Alves','2001-01-29','Astronauta');
alter table pessoas add fkGastos int;
alter table pessoas add foreign key (fkGastos) references gasto(idGastos);
update pessoas set fkGastos = 2 where idPessoa = 1;
update pessoas set fkGastos = 1 where idPessoa = 2;
update pessoas set fkGastos = 3 where idPessoa = 3;
select * from pessoas;
select * from gasto;
select * from pessoas where profissão like 'Astron%' ;
select * from gasto where valor > 50;
select * from gasto, pessoas where fkGastos = idGastos; 
update pessoas set profissão = 'Dev-Ops FulStack' where idPessoa = 1;
delete from pessoas where idPessoa = 2;