CREATE TABLE Vehicules (
    id_vehicule INT PRIMARY KEY NOT NULL,
    marque VARCHAR(50),
    modele VARCHAR(50),
    couleur VARCHAR(50),
    id_type INT,
    prix_horaire FLOAT,
    disponibilite BOOLEAN
);

INSERT INTO Vehicules VALUES
(1,'Ford','Fiesta','grise',1,30.5,true),
(2,'Peugeot','boxer','blanc',2,50,false),
(3,'ebike','xf800','bleu',3,10,true),
(4,'Yamaha','tmax530','noir',4,20,true),
(5,'Volkswagen','7gti','jaune',1,220,false),
(6,'Mercedes','sprinter','vert',2,80,true),
(7,'rockrider','ft100','rose',3,4,true),
(8,'kawazaki','250kx','orange',4,70,false),
(9,'BMW','serie 1','bleue',1,48,true),
(10,'Mercedes','vito','blanc',2,37,false),
(11,'Nakamura','cliff 600','orange',3,10,true),
(12,'Ducati','streetfighter','rouge',4,27,true),
(13,'Porshe', 'Taycan berline' , 'blancche' ,1 ,350.50,true),
(14 ,'Harley Davidson','Breakout FXSB' ,'noir',1,122.14,true ),
(15,'BMW', 'BMW_Serie5_530E', 'gris' ,1,230.00 ,false),
(16,'lamborghini','aventador','noir',1,350.00,true),
(17,'renault','express van','gris',2,30.00,true),
(18,'angell/mCruiser','électrique','noir',3,10.00,true),
(19,'kawasaki','ninja','noir et verte',4,25.00,true),
(20,'yamah','Tmax','blanche',1, 10.5, false),
(21, 'renault', 'twingo', 'jaune',1, 15.8, true), 
(22, 'Citroen', 'DS5', 'noire',1, 25.5, true), 
(23, 'peugeot', '308sw', 'gris',1, 30.5, true), 
(24, 'Audi', 'e-tron', 'rouge',1, 48.52, false), 
(25,'between','e-bike','noire',1,1.30,true),
(26,'Porsche 911','Carrera type 992','rouge',1,24.16,true),
(27,'fiat','ducato','blanc',2,2.45,true),
(28,'velo','croozer','noir',3,0.41,true),
(29,'honda','CB650F','vert',4,4.58,false);

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

SELECT*FROM voitures;