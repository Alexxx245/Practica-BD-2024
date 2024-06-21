	-- metodes_reproduccio
insert into metodes_reproduccio(tipus) values ('Llavors');
insert into metodes_reproduccio(tipus) values ('Esqueix');
insert into metodes_reproduccio(tipus) values ('Estaques');
insert into metodes_reproduccio(tipus) values ('Bulbs');
insert into metodes_reproduccio(tipus) values ('Capficats');
insert into metodes_reproduccio(tipus) values ('Estolons');

	-- estacions
insert into estacions(nom) values ('Hivern');
insert into estacions(nom) values ('Primavera');
insert into estacions(nom) values ('Estiu');
insert into estacions(nom) values ('Tardor');

	-- paisos
insert into paisos(nom)	values('Espanya');
insert into paisos(nom)	values('Brasil');
insert into paisos(nom)	values('Alemanya');
insert into paisos(nom)	values('Portugal');
insert into paisos(nom)	values('Italia');
insert into paisos(nom)	values('Grecia');

	-- firmes_comercials
insert into firmes_comercials(nom) values ('URVADOB');
insert into firmes_comercials(nom) values ('TIRSADOB');
insert into firmes_comercials(nom) values ('PRISADOB');
insert into firmes_comercials(nom) values ('CIRSADOB');

	-- plantes
insert into plantes(nom,nom_llati,estacio,vida) values('Gerani','Pelargonium','Primavera','P'); 
insert into plantes(nom,nom_llati,estacio,vida) values('Begonia','Begonia rex','Estiu','P');
insert into plantes(nom,nom_llati,estacio,vida) values('Camelia','Camellia','Primavera','P');
insert into plantes(nom,nom_llati,estacio,vida) values('Ciclamen','Cyclamen','Hivern','P');
insert into plantes(nom,nom_llati,estacio,vida) values('Roser','Rosa','Primavera','P');
insert into plantes(nom,nom_llati,estacio,vida) values('Falguera','Polystichum',NULL,'P');
insert into plantes(nom,nom_llati,estacio,vida) values('Tulipa','Tulipa','Primavera','T');
insert into plantes(nom,nom_llati,estacio,vida) values('Crisantem','Chrysanthemum','Estiu','P');
insert into plantes(nom,nom_llati,estacio,vida) values('Potus','Philodendron',NULL,'P');
insert into plantes(nom,nom_llati,estacio,vida) values('Cintes','Chlorophytum',NULL,'P');
insert into plantes(nom,nom_llati,estacio,vida) values('Poinsetia','Euphorbia','Hivern','T');
insert into plantes(nom,nom_llati,estacio,vida) values('Heura','Hedera',NULL,'P');
insert into plantes(nom,nom_llati,estacio,vida) values('Ficus Benjamina','Ficus',NULL,'P');
insert into plantes(nom,nom_llati,estacio,vida) values('Croton','Codiaeum',NULL,'P');

	-- plantes exteriors
insert into plantes_exterior(planta) values('Gerani');
insert into plantes_exterior(planta) values('Begonia');
insert into plantes_exterior(planta) values('Camelia');
insert into plantes_exterior(planta) values('Ciclamen');
insert into plantes_exterior(planta) values('Roser');
insert into plantes_exterior(planta) values('Falguera');
insert into plantes_exterior(planta) values('Tulipa');
insert into plantes_exterior(planta) values('Crisantem');
insert into plantes_exterior(planta) values('Cintes');
insert into plantes_exterior(planta) values('Heura');

	--plantes interiors
insert into plantes_interior(planta,pais,llum,temperatura) values('Potus','Espanya','Llum directa',15); 
insert into plantes_interior(planta,pais,llum,temperatura) values('Poinsetia','Alemanya','Llum indirecta',18); 
insert into plantes_interior(planta,pais,llum,temperatura) values('Ficus Benjamina','Italia','Llum indirecta',19); 
insert into plantes_interior(planta,pais,llum,temperatura) values('Croton','Grecia','No corrent',17); 

	-- exemplars
insert into exemplars(codi,planta) values (1,'Gerani');
insert into exemplars(codi,planta) values (2,'Gerani');
insert into exemplars(codi,planta) values (3,'Gerani');
insert into exemplars(codi,planta) values (4,'Gerani');
insert into exemplars(codi,planta) values (5,'Gerani');
insert into exemplars(codi,planta) values (6,'Gerani');
insert into exemplars(codi,planta) values (1,'Begonia');
insert into exemplars(codi,planta) values (2,'Begonia');
insert into exemplars(codi,planta) values (3,'Begonia');
insert into exemplars(codi,planta) values (4,'Begonia');
insert into exemplars(codi,planta) values (1,'Roser');
insert into exemplars(codi,planta) values (2,'Roser');
insert into exemplars(codi,planta) values (3,'Roser');
insert into exemplars(codi,planta) values (4,'Roser');
insert into exemplars(codi,planta) values (1,'Heura');
insert into exemplars(codi,planta) values (2,'Heura');
insert into exemplars(codi,planta) values (3,'Heura');
insert into exemplars(codi,planta) values (1,'Ficus Benjamina');
insert into exemplars(codi,planta) values (2,'Ficus Benjamina');
insert into exemplars(codi,planta) values (1,'Croton');
insert into exemplars(codi,planta) values (2,'Croton');
insert into exemplars(codi,planta) values (3,'Croton');
insert into exemplars(codi,planta) values (1,"Poinsetia");
insert into exemplars(codi,planta) values (2,"Poinsetia");
insert into exemplars(codi,planta) values (1,'Ciclamen');

	-- adobs
insert into adobs(nom,firma,duracio) values ('Plantavit','URVADOB','LLD');
insert into adobs(nom,firma,duracio) values ('Vitaplant','TIRSADOB','AI');
insert into adobs(nom,firma,duracio) values ('Nutreplant','CIRSADOB','LLD');
insert into adobs(nom,firma,duracio) values ('Creixplant','PRISADOB','AI');
insert into adobs(nom,firma,duracio) values ('Casadob','TIRSADOB','AI');
insert into adobs(nom,firma,duracio) values ('Plantadob','PRISADOB','LLD');
insert into adobs(nom,firma,duracio) values ('Superplant','CIRSADOB','AI');
insert into adobs(nom,firma,duracio) values ('Sanexplant','URVADOB','LLD');

	-- dosi_adobs
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Gerani','Primavera','Casadob','30');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Gerani','Hivern','Vitaplant','20');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Begonia','Estiu','Casadob','25');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Camelia','Hivern','Plantavit','50');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Camelia','Primavera','Casadob','75');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Ciclamen','Tardor','Casadob','30');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Crisantem','Primavera','Casadob','45');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Begonia','Primavera','Nutreplant','50');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Roser','Primavera','Casadob','50');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Gerani','Primavera','Creixplant','30');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Falguera','Primavera','Casadob','40');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Falguera','Tardor','Plantadob','20');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Tulipa','Hivern','Casadob','40');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Potus','Primavera','Casadob','30');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Cintes','Tardor','Casadob','30');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Cintes','Hivern','Superplant','40');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Poinsetia','Hivern','Casadob','50');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Poinsetia','Hivern','Sanexplant','45');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Heura','Primavera','Casadob','50');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Croton','Primavera','Casadob','40');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Croton','Estiu','Casadob','60');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Gerani','Estiu','Sanexplant','40');
insert into dosi_adobs(planta,estacio,adob,quantitat) values ('Ficus benjamina','Primavera','Casadob','50');

	-- reproduccions
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Gerani','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Begonia','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Capficats','Begonia','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Llavors','Begonia','Baix');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Estaques','Roser','Mitja');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Estolons','Cintes','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Ciclamen','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Capficats','Ciclamen','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Capficats','Potus','Mitja');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Potus','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Bulbs','Tulipa','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Estaques','Ficus Benjamina','Baix');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Capficats','Ficus Benjamina','Baix');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Croton','Baix');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Capficats','Croton','Baix');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Falguera','Mitja');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Heura','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Bulbs','Crisantem','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Estaques','Camelia','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Capficats','Heura','Alt');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Llavors','Poinsetia','Baix');
insert into reproduccions(metode_reproduccio,planta,grau_exit) values('Esqueix','Poinsetia','Baix');

	-- rec
insert into rec(estacio,planta,quantitat) values('Hivern','Potus',50);
insert into rec(estacio,planta,quantitat) values('Estiu','Poinsetia',35);
insert into rec(estacio,planta,quantitat) values('Primavera','Ficus Benjamina',75);
insert into rec(estacio,planta,quantitat) values('Tardor','Croton',10);	