use T_HROADS;

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
