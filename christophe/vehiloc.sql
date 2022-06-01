CREATE table vehicules(
vehicule int PRIMARY key not NULL,
marque VARCHAR(50),
modele VARCHAR(50),
couleur VARCHAR(50),
id_type int, 
prix_horraire FLOAT,
disponibilite BOOLEAN
);
INSERT INTO vehicules 
VALUES
(1,'Porsche 911','Carrera type 992','rouge',1,24.16,'true');
insert INTO vehicules
VALUES
(2,'fiat','ducato','blanc',2,2.45,'true'),
(3,'velo','croozer','noir',3,0.41,'true'),
(4,'honda','CB650F','vert',4,4.58,'false');
SELECT*from vehicules;
