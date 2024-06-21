delete a
from adobs as a
inner join dosi_adobs on a.nom = dosi_adobs.adob
inner join plantes on dosi_adobs.planta = plantes.nom
where firma = 'URVADOB'
and plantes.estacio != 'Hivern'