select DISTINCT nom, metode_reproduccio, vida
from plantes
inner join reproduccions on plantes.nom=reproduccions.planta
inner join plantes_exterior on plantes.nom=plantes_exterior.planta
where reproduccions.grau_exit='Alt'
and estacio='Primavera';