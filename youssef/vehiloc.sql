CREATE TABLE vehicules(
    id_vehicule INT PRIMARY KEY NOT NULL,
    marque VARCHAR(50),
    modele VARCHAR(50),
    couleur VARCHAR(50),
    id_type INT,
    prix_horaire FLOAT,
    disponibilite BOOLEAN
);

INSERT INTO vehicules (id_vehicule,marque,modele,couleur,id_type,prix_horaire,disponibilite)
VALUES
(1,'BMW','serie 1','bleue',1,48,'true'),
(2,'Mercedes','vito','blanc',2,37,'false'),
(3,'Nakamura','cliff 600','orange',3,10,'true'),
(4,'Ducati','streetfighter','rouge',4,27,'true');

SELECT*FROM vehicules;