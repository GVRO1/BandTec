create database Clinica;
use clinica;
-- Tabela Clinica criada
create table dentista(idDentista int primary key,
nome varchar(50),
nCertificado int);
insert into dentista values (1,'Richard',0123),
(2,'Alberto',1234);
-- Tabela paciente criada
create table paciente(idPaciente int primary key, nome varchar(40),nMatricula int);
insert into paciente values (1,'Roberto',2334),
(2,'Ildo',0953),
(3,'Idalina',2920),
(4,'Gabriel',7620);
alter table paciente add fkdentista int;
alter table paciente add foreign key (fkdentista) references dentista(idDentista);
update paciente set fkdentista = 2 where idPaciente = 4;
select * from paciente;
select * from dentista; 
select idPaciente,paciente.nome,nMatricula,dentista.nome,nCertificado from paciente,dentista where fkDentista = idDentista;
select idPaciente,paciente.nome,nMatricula,dentista.nome,nCertificado from paciente,dentista where fkDentista = idDentista and nCertificado = 123 ;
delete from paciente where idPaciente = 2 ;