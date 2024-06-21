select plantes.nom, plantes.estacio
from plantes 
inner join plantes_exterior on plantes_exterior.planta = plantes.nom
inner join exemplars on exemplars.planta = plantes.nom
group by plantes.nom
having count( exemplars.codi) >= 
			(select max(distinct exemplars.codi)
				from plantes 
				inner join plantes_interior on 
				plantes_interior.planta = plantes.nom
				inner join exemplars on exemplars.planta = plantes.nom);