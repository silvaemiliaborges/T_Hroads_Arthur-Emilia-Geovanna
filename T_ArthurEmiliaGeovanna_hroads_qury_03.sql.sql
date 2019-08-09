use T_HROADS;

--dql

insert into Classes (Nome) values ('Bárbaro '),('Cruzado'),('Caçadora de Demônios'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista ')

insert into Habilidades(Nome ,IdTipoHabilidade) values ('Lança Mortal ' , 1),('Escudo Supremo  ' , 2),('Recuperar Vida  ' , 3)

insert into Classes_Habilidades(IdClasse,IdHabilidade) values ( 1,1),( 2,2),( 1,2),( 3,1),( 4,3),( 4,2),( 6,3)

insert into TipoHabilidades(Nome) values ('Ataque'),('Defesa'),('Cura'),('Magia')

insert into Personagens(Nome,Capacidade_maxima_de_vida,Capacidade_maxima_de_mana,DataAtualizacao,DataCriacao,IdClasse) 
			values		('DeuBug' , 'Bárbaro' , 100 , 80 , '09-08-2019' , '2019-01-18')
						,('BitBug' , 'Monge' , 70 , 100 , '09-08-2019' , '2016-03-17')
						,('Fer8' , 'Arcanista' , 75 , 60 , '09-08-2019' , '2018-03-18')

select * from Habilidades
select * from Classes
select * from TipoHabilidades
select * from Personagens
select * from Classes_Habilidades

select Nome from Classes

select Habilidades.Nome as Habilidade , TipoHabilidades.Nome as Tipo
	from Habilidades
	full join TipoHabilidades
	on TipoHabilidades.IdTipoHabilidade = Habilidades.IdTipoHabilidade

select count (Nome)
from Habilidades as Quantidade de Habilidades

Select * from Habilidades
order by IdHabilidade asc

select Habilidades.Nome , TipoHabilidades.Nome
from Habilidades
full join TipoHabilidades
on Habilidades.IdTipoHabilidade = TipoHabilidades.IdTipoHabilidade

select Personagens.Nome , Classes.Nome
from Personagens
inner join Classes
on Personagens.IdClasse = Classes.IdClasse

select Personagens.Nome , Classes.Nome
from Personagens
full join Classes
on Personagens.IdClasse = Classes.IdClasse

select Classes.Nome , Habilidades.Nome
from Classes_Habilidades
full join Classes
on Classes.IdClasse = Classes_Habilidades.IdClasse
full join Habilidades
on Habilidades.IdHabilidade = Classes_Habilidades.IdHabilidade

select Classes.Nome as Classes , Habilidades.Nome as Habilidades
from Classes_Habilidades
full join Classes
on Classes.IdClasse = Classes_Habilidades.IdClasse
full join Habilidades
on Habilidades.IdHabilidade = Classes_Habilidades.IdHabilidade



select Habilidades.Nome as Habilidades ,Classes.Nome as Classes 
from Classes_Habilidades
full join Classes
on Classes.IdClasse = Classes_Habilidades.IdClasse
full join Habilidades
on Habilidades.IdHabilidade = Classes_Habilidades.IdHabilidade

update Personagens set Nome = 'Fer7' where Nome = 'Fer8'


update Classes set Nome = 'Necromancer' where Nome = 'Necromante'

select Habilidades.Nome as Habilidades ,Classes.Nome as Classes 
from Classes_Habilidades
inner join Classes
on Classes.IdClasse = Classes_Habilidades.IdClasse
inner join Habilidades
on Habilidades.IdHabilidade = Classes_Habilidades.IdHabilidade


