select plantes.nom, plantes.estacio
from plantes
inner join reproduccions on plantes.nom = reproduccions.planta
where estacio!='Primavera'
and reproduccions.grau_exit='Alt'
group by plantes.nom
having count(DISTINCT metode_reproduccio)>=2;