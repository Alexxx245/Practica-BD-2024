update dosi_adobs
set quantitat = (quantitat + quantitat*0.1)
where estacio = 'Hivern'
and planta in (select nom 
		      from plantes
		      where estacio = 'Primavera');