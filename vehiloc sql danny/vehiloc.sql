CREATE TABLE vehiloc
(id_voiture INT PRIMARY KEY NOT NULL , 
marque VARCHAR(50) , modele VARCHAR(50) , couleur VARCHAR(50) ,
id_type INT , prix_horaire FLOAT , disponibilite BOOLEAN );


INSERT INTO vehiloc VALUES(1,'Porshe', 'Taycan berline' , 'blancche' ,1 ,350.50,'true');

INSERT INTO vehiloc VALUES(2 ,'Harley Davidson','Breakout FXSB' ,'noir',1,122.14,'true' );

INSERT INTO vehiloc VALUES(3,'BMW', 'BMW_Série5_530E', 'gris' ,1,230.00 , 'False'  );











