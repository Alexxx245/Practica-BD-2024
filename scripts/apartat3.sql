select dosi_adobs.adob, adobs.duracio
from dosi_adobs, adobs
group by adob
having COUNT(distinct dosi_adobs.planta)=(select COUNT(*) from plantes);