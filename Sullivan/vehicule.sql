CREATE TABLE vehicules(
    id_vehicule INT Primary key not null,
    marque varchar(50),
    modele varchar(50),
    couleur VARCHAR(50),
    id_type int,
    prix_horaire FLOAT,
    disponibilite BOOLEAN
);

insert into vehicules values
(1,'lamborghini','aventador','noir','1',350.00,'true');

insert into vehicules values
(2,'renault','express van','gris','2',30.00,'true');

insert into vehicules values
(3,'angell/mCruiser','électrique','noir','3',10.00,'true');

insert into vehicules values
(4,'kawasaki','ninja','noir et verte','4',25.00,'true');

create table types(
    id_type INT Primary key not null,
    nom_type varchar(50)
);

insert into types VALUES
(1,'voiture'),(2,'utilitaire'),(3,'vélo'),(4,'moto');

select vehicules from types

