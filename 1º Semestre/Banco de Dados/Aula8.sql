create database petshop;
use petshop;
create table pet (
idPet int primary key auto_increment,
Nome varchar(10),
Raça varchar(40),
Tipo varchar(40),
Sexo varchar(40))
auto_increment = 101;

create table cliente (
idCliente int primary key auto_increment,
Nome varchar(70),
Sexo char(1),
check (sexo = 'm' or sexo = 'f' or sexo = 'n' ),
Bairro varchar(30),
Telefone varchar(40));
drop table cliente;
insert into pet values (null,'Ronaldo','Husk','Gato','Masculino');
insert into cliente values(null,'Bruna Oliveira','n','Pirapórinha','6969-6969'),
(null,'Herique Gustavo','f','Inferno','666-666-666'),
(null,'Gabriel Vieira','m','zona sul','90909090');
select * from pet;
delete from Pet where idPet > 103;
delete from cliente where idCliente > 2;
select * from cliente;
alter table cliente add pet int;
alter table cliente add foreign key (pet)references pet(idPet);
insert into cliente values(null,'RODOLFO Oliveira','n','Pirapórinha','6969-6969',102);
update Cliente set pet = 101 where idCliente = 2;
alter table cliente modify nome varchar(103);
select * from pet where tipo = 'cachorro';
select nome,sexo from pet;
select * from pet order by nome;
select * from cliente order by bairro desc;
select * from pet where nome like "c%";
select * from cliente where nome like "%Oliveira%";
update Cliente set Telefone = '123456789' where idCliente = 1 ; 
select * from pet ;
select * from cliente ;
select * from pet, cliente where idpet = pet;
select * from cliente where sexo = 'f';
alter table cliente drop column sexo;