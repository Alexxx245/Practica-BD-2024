select DISTINCT plantes.nom, plantes.nom_llati
from plantes 
inner join plantes_exterior on plantes.nom=plantes_exterior.planta
where plantes.estacio='Estiu'
and plantes.nom in (select DISTINCT plantes.nom 
			from adobs, dosi_adobs, plantes
			where  firma !='TIRSADOB'
			and dosi_adobs.estacio='Primavera');