drop view if exists vista1;
create view vista1 as
select plantes.nom, plantes.nom_llati, COUNT(distinct exemplars.codi)
from plantes
inner join exemplars on exemplars.planta = plantes.nom
inner join plantes_exterior on plantes_exterior.planta = plantes.nom
inner join reproduccions on plantes_exterior.planta = reproduccions.planta
group by plantes_exterior.planta
having count(distinct reproduccions.metode_reproduccio) >= 2;