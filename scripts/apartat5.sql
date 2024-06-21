select distinct i.planta, i.llum
from plantes_interior as i
inner join reproduccions r on i.planta = r.planta
where i.planta in (select planta 
			  from dosi_adobs
			  group by planta 
			  having count(distinct adob)=1)
			  and grau_exit = 'Baix';