create database Exercicio_4;
use Exercicio_4;
-- Cria a primeira tabela
create table Alunos (idAlunos int primary key, nome varchar(40), email varchar (50), telefone varchar(20));
-- Insere os valores da primeira tabela
insert into Alunos values (1,'Gabriel Vieira','gabrieloliveirarodrigues01@hotmail.com','11-974291001'),
(2,'Bruna Oliveira','bruna.oliveira@bandtec.com.br','66-54872310'),
(3,'Cesar Alves','cesar.alves@bandtec.com.br','11-96451123'),
(4,'Henrique Caetano','henrique.caetano@bandtec.com.br','11-6452137'),
(5,'Carina Alves','carina.alves@bandtec.com.br','11-68726318'),
(6,'Wellignton Macena','wellington.macena@bandtec.com.br','11-67429587'),
(7,'Brian Ricci','brian.ricci@bandtec.com.br','11-87654130');
select * from Alunos;
-- Cria a segunda tabela
create table Empresas (idEmpresa int primary key, Nome_da_empresa varchar(30),Representante varchar(30));
-- Insere os valores da segunda tabela
insert into empresas values (1,'Digisystem','Miriam'),
(2,'Easynvest','Vitor'),
(3,'Totvs','Rafael');
select * from Empresas;
-- Insere uma nova coluna
alter table alunos add fkEmpresas int;
-- Define a nova coluna como chave estrangeira
alter table alunos add foreign key (fkEmpresas) references Empresas(idEmpresa);
-- Insere valore na nova coluna
update alunos set fkEmpresas = 2 where idAlunos = 1; 
update alunos set fkEmpresas = 3 where idAlunos > 1 and idAlunos < 3;
update alunos set fkEmpresas = 1 where idAlunos = 6;
update alunos set fkEmpresas = 2 where idAlunos = 7;
update alunos set fkempresas = 3 where idAlunos = 5 ;
update alunos set fkempresas = 1 where idAlunos > 2 and idAlunos < 5; 
select * from Alunos;
-- Cria uma terceira tabela
create table InstituicaoEnsino (idEnsino int primary key,nome varchar(40),Endereco varchar(50));
insert into InstituicaoEnsino values (1,'Etec Zona Sul','Avenida Luis Guchiken, 432'),
(2,'BandTec','Rua  Haddolock lobo, 142'),
(3,'Escola Seiva Master','Avenia Maria Coelho de Aguiar, 95');
-- Insere uma nova coluna na tabela alunos
alter table alunos add fkInstituicao int;
-- Define essaa terceira coluna como chave estrangeira
alter table alunos add foreign key (fkInstituicao) references InstituicaoEnsino(idEnsino);
-- Insere valores nessa nova tabela
update alunos set fkInstituicao = 1 where idAlunos > 3;
update alunos set fkInstituicao = 2 where idAlunos < 3;
update alunos set fkInstituicao = 3 where idAlunos = 3;
update alunos set fkInstituicao = 3 where idAlunos = 6;
select * from alunos;
select * from alunos,InstituicaoEnsino,Empresas where fkInstituicao = idEnsino and fkEmpresas = idEmpresa;
select idAlunos,Alunos.nome,email,telefone,idEnsino,InstituicaoEnsino.nome,endereco,idEmpresa,Nome_da_Empresa,Representante from Alunos,Empresas,InstituicaoEnsino where fkInstituicao = idEnsino and FkEmpresas = idEmpresa order by idAlunos;