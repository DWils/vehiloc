CREATE TABLE vehicules (
    id_vehicules int PRIMARY KEY NOT NULL,
    marque varchar(50),
    modele varchar(50),
    couleur varchar(50),
    id_type int,
    prix_horaires float,
    disponibiliter boolean
);

INSERT INTO vehicules (id_vehicules, marque, modele, couleur, id_type, prix_horaires, disponibiliter) 
VALUES 
(1, 'renault', 'twingo', 'jaune',1, 15.8, true), 
(2, 'Citroen', 'DS5', 'noire',1, 25.5, true), 
(3, 'peugeot', '308sw', 'gris',1, 30.5, true), 
(4, 'Audi', 'e-tron', 'rouge',1, 48.52, false), 
(5,'between','e-bike','noire',1,1.30,true),
(6,'yamah','Tmax','blanche',1, 10.5, false);

SELECT*FROM vehicules;

CREATE TABLE types (
    id_types INT PRIMARY KEY NOT NULL,
    nom_types VARCHAR(50)
    );

INSERT INTO types ( id_types, nom_types)
VALUES
(1, 'voitures'),
(2,'utilitaire'),
(3,'vélo'),
(4,'moto');

SELECT*from types;