drop database Practica3;
create database Practica3;

use Practica3;

create table metodes_reproduccio (
	tipus varchar(25) not null,
	constraint pk_metodes_reproduccio primary key (tipus)
) engine=innodb;

create table firmes_comercials (
	nom varchar(25) not null,
	constraint pk_firmes_comercials primary key (nom)
) engine=innodb;

create table estacions (
	nom varchar(25) not null,
	constraint pk_estacions primary key (nom)
) engine=innodb;

create table paisos (
	nom varchar(25) not null,
	constraint pk_paisos primary key (nom)
) engine=innodb;

create table plantes (
	nom varchar(25) not null,
	nom_llati varchar(25),
	estacio varchar(25), 
	vida varchar(1), 
	constraint pk_plantes primary key (nom),
	constraint fk_plantes_estacions foreign key (estacio) references estacions(nom) on delete cascade on update cascade
) engine=innodb;

create table plantes_interior(
	planta varchar(25) not null,
	pais varchar(25) not null,
	llum varchar(25), 
	temperatura int(3), 
	constraint pk_plantes_interior primary key (planta),
	constraint fk_plantes_interior_plantes foreign key (planta) references plantes(nom) on delete cascade on update cascade,
	constraint fk_plantes_interior_paisos foreign key (pais) references paisos(nom) on delete cascade on update cascade
) engine=innodb;

create table plantes_exterior(
	planta varchar(25) not null,
	constraint pk_plantes_exterior primary key (planta),
	constraint fk_plantes_exterior_plantes foreign key (planta) references plantes(nom) on delete cascade on update cascade
) engine=innodb;

create table exemplars ( 
	codi int(1) not null,
	planta varchar(25) not null,
	constraint pk_exemplars primary key (codi, planta),
	constraint fk_exemplars_plantes foreign key (planta) references plantes(nom) on delete cascade on update cascade

) engine=innodb;

create table adobs (
	nom varchar (25) not null,
	firma varchar(25) not null,
	duracio varchar(3), 
	constraint pk_adobs primary key (nom),
	constraint fk_adobs_firmes_comercials foreign key (firma) references firmes_comercials(nom) on delete cascade on update cascade
) engine=innodb;

create table dosi_adobs (
	planta varchar(25) not null,
	estacio varchar(25) not null,
	adob varchar(25) not null,
	quantitat int(3), 
	constraint pk_dosi_adobs primary key (planta,estacio,adob),
	constraint fk_dosi_adobs_plantes foreign key (planta) references plantes(nom) on delete cascade on update cascade,
	constraint fk_dosi_adobs_adobs foreign key (adob) references adobs(nom) on delete cascade on update cascade,
	constraint fk_dosi_adobs_estacions foreign key (estacio) references estacions(nom) on delete cascade on update cascade
) engine=innodb;

create table reproduccions (
	metode_reproduccio varchar(25) not null,
	planta varchar(25) not null,
	grau_exit varchar(5),
	constraint pk_reproduccions primary key (metode_reproduccio, planta),
	constraint fk_reproduccions_plantes foreign key (planta) references plantes(nom) on delete cascade on update cascade,
	constraint fk_reproduccions_metodes_reproduccio foreign key (metode_reproduccio) references metodes_reproduccio(tipus) on delete cascade on update cascade
) engine=innodb;

create table rec (
	estacio varchar(25) not null,
	planta varchar(25) not null,
	quantitat int(3),
	constraint pk_rec primary key (estacio,planta),
	constraint fk_rec_estacions foreign key (estacio) references estacions(nom) on delete cascade on update cascade,
	constraint fk_rec_planta foreign key (planta) references plantes_interior(planta) on delete cascade on update cascade
) engine=innodb;


delimiter $$
create trigger quantitatadob 
before insert on dosi_adobs
for each row
begin 
if new.quantitat <20 then
	set new.quantitat = 20;
end if;
if new.quantitat >100 then
	set new.quantitat = 100;
end if;
end; $$
delimiter ;