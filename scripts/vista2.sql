drop view if exists vista2;
create view vista2 as
select plantes_interior.planta, plantes_interior.llum, plantes_interior.temperatura  
from plantes_interior 
where (plantes_interior.temperatura > 16);