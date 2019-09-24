create database estudo;
use estudo;

create table Series (
id_Serie int primary key,
nome varchar (40),
avaliação real
);

insert into Series values
(1, 'mindhunter', 4.8),
(2, 'castlevania', 5.0),
(3, 'you', 4.9),
(4, 'skins', 5.0);

select * from Series;

select avaliação from Series;

select nome, avaliação from Series;

select * from Series order by avaliação; 

select * from Series order by nome desc;

select * from Series order by id_Serie, nome, avaliação desc;

select * from Series where nome like '%s';

update Series set avaliação = 5.0 where id_Serie = 3;

delete from Series where id_Serie = 1;





 