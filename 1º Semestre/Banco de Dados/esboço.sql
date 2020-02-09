create database projeto;
use projeto;
-- Criei a tabela luminosidade
create table luminosidade (idSensor int primary key,
	nome_do_ambiente varchar(50),
    qtd_luz_natural int);
insert into luminosidade values 
(1,'Escritório',512),
(2,'Sala de Maquinas',608),
(3,'Zonas industrial',980),
(4,'Recepção',0);
select * from luminosidade;
-- Criei a tabela lampadas
create table lampadas (idLampadas int primary key,
nome_do_ambiente_lamp varchar (40),
potencia int);
insert into lampadas values (1,'Escritório',23),
(2,'Sala de Maquinas',53),
(3,'Zona Industrial',0),
(4,'Recepção',100);
select * from lampadas;
-- Criei a tabela tempo
create table tempo(idtempo int primary key, 
horario varchar(40),
dia varchar(40));
insert into tempo values (1,'00:00','2019-01-01'),
(2,'00:01','2019-01-01'),
(3,'00:02','2019-01-01'),
(4,'00:03','2019-01-01');
select * from tempo;
-- Inserir a chave estrangeira fkLuz em luminosidade
alter table luminosidade add fkLuz int;
alter table luminosidade add foreign key (FkLuz) references lampadas(idlampadas);
update luminosidade set fkLuz = 1 where idSensor = 1;
update luminosidade set fkLuz = 2 where idSensor = 2;
update luminosidade set fkLuz = 3 where idSensor = 3;
update luminosidade set fkLuz = 4 where idSensor = 4;
select * from luminosidade;
-- Inserir a chave estrangeira fktempo em luminosidade
alter table luminosidade add fktempo int;
alter table luminosidade add foreign key (fktempo) references tempo(idTempo);
update luminosidade set fktempo = 1 where idSensor = 1;
update luminosidade set fktempo = 2 where idSensor = 2;
update luminosidade set fktempo = 3 where idSensor = 3;
update luminosidade set fktempo = 4 where idSensor = 4;
select * from luminosidade;
select * from tempo;
select * from lampadas;
select idSensor,nome_do_ambiente,qtd_luz_natural,horario,dia,potencia from luminosidade,tempo,lampadas where fkLuz = idLampadas and fktempo = idTempo;
