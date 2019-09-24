create database Musica;
use Musica;
create table Musica (idMusica int primary key, titulo varchar (80), artista varchar(40), genero varchar(40));
insert into Musica values (1,'Boate Azul','Bruno & Marrone','Sertanejo'),
(2,'Solteiro não trai','Gustavo Mioto','Sertanejo'),
(3,'Bebaça','Marilia Mendonça','Sertanejo'),
(4,'Save me','BTS','K-POP'),
(5,'Aguas de Março','Elis Regina','MPB'),
(6,'S.O.S.','Raul Seixas','MPB');
create table Album (idAlbum int primary key, nome varchar (50), gravadora varchar (30));
insert into Album values (1,'Album de corno','Traidos.fm'),(2,'Kpoper','Coréia Records'),(3,'Musicas que realmente prestam','Antigas.am');
alter table Musica add fkAlbum int;
alter table Musica add foreign key (fkAlbum) references Album(idAlbum);
select * from album;
select * from musica;
update Musica set fkAlbum = 1 where idMusica < 4;
update Musica set fkAlbum = 3 where idMusica = 4;
update Musica set fkAlbum = 2 where idMusica > 4;
select Musica.* ,Album.nome,gravadora from  Musica,Album where fkAlbum = idAlbum and nome = 'Album de corno' order by idMusica;
select Musica.* ,Album.nome,gravadora from Musica,Album where fkAlbum = idAlbum and gravadora = 'Antigas.am';

