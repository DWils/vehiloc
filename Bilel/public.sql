CREATE TABLE Voitures (
    id_voiture INT PRIMARY KEY NOT NULL,
    marque VARCHAR(50),
    modele VARCHAR(50),
    couleur VARCHAR(50),
    id_type INT,
    prix_horaire FLOAT,
    disponibilite BOOLEAN
);

INSERT INTO Voitures VALUES(1,'ford','fiesta','grise',1,30.5,'true');
INSERT INTO Voitures VALUES(2,'peugeot','boxer','blanc',2,50,'false');
INSERT INTO Voitures VALUES(3,'ebike','xf800','bleu',3,10,'true');
INSERT INTO Voitures VALUES(4,'Yamaha','tmax530','noir',4,20,'true');
INSERT INTO Voitures VALUES(5,'volkswagen','7gti','jaune',1,220,'false');
INSERT INTO Voitures VALUES(6,'mercedes','sprinter','vert',2,80,'true');
INSERT INTO Voitures VALUES(7,'rockrider','ft100','rose',3,4,'true');
INSERT INTO Voitures VALUES(8,'kawazaki','250kx','orange',4,70,'false');

SELECT*FROM voitures