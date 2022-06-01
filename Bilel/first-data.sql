/* Un bloc de commentaire
*/

--une ligne de commentaire

/* Creation de la table Personnes */
CREATE TABLE Personnes(Id_personne int PRIMARY KEY NOT NULL, prenom varchar(20), age int, metier varchar(20) );

/* Creation de 5 personnes */
INSERT INTO Personnes VALUES(1,'Tom', 28 , 'Cuisinier');
INSERT INTO Personnes VALUES(2,'Lucy', 18 , 'Etudiante');
INSERT INTO Personnes VALUES(3,'Frank', 31 , 'Cariste');
INSERT INTO Personnes VALUES(4,'Jane',  21 , 'Musicienne' );
INSERT INTO Personnes VALUES(5,'Robert', 54 , 'Chauffeur');

SELECT*FROM personnes;

-- 1. Afficher les toutes les colonnes de la table personne


-- 2. Afficher juste le prénom


-- 3. Afficher le prénom et le métier


-- 4. Afficher l'age et la profession


SELECT prenom FROM personnes;

SELECT prenom,metier FROM personnes;

SELECT age,metier FROM personnes;

SELECT prenom,age FROM personnes ;

-- 5. Affichez les informations de Lucy

SELECT*FROM personnes WHERE prenom='Lucy';

-- 6. Affichez le prenom et age du Chauffeur

SELECT prenom,age FROM personnes WHERE metier = 'Chauffeur';

SELECT prenom,metier FROM personnes WHERE age = 18;


-- 7. Afficher les personnes qui ne sont pas Cariste

-- 8. affichez les personnes de plus de 20 ans

SELECT*FROM personnes WHERE metier != 'Cariste';

SELECT*FROM personnes WHERE age >=20;

-- 9. Afficher la personne de moins de 30 ans et qui est musicienne
--10. Afficher le Cuisinier et le Chauffeur
-- 11. affichez les personnes de moins de 40 ans et qui ont un id > 2

SELECT*FROM personnes WHERE age<30 AND metier='Musicienne';

SELECT*FROM personnes WHERE metier='Cuisinier' OR metier='Chauffeur';

SELECT*FROM personnes WHERE age<40 AND id_personne>2;

--12. afficher les personnes entre 20 et 40 ans ayant un id inférieur à 4
--13 afficher les personnes que vous n'avez pas eu dans la requête 12 en utilisant NOT


SELECT*FROM personnes WHERE age>20 AND age<40 and id_personne<4;

SELECT*FROM personnes WHERE NOT age>20 OR NOT age<40 OR NOT id_personne<4;

--14. trouvez les prénoms qui contiennent un 'a'
--15.Trouvez les métiers qui contiennent à la fois un 'e' et un 'r' (peut importe l'ordre)

SELECT*FROM personnes WHERE prenom like '%a%';

SELECT*FROM personnes WHERE metier like '%r%' AND metier LIKE '%e%';

--16.Affichez le Cariste, le Cuisinier et l'Etudiante
--17.Affichez les personnes entre 20 et 40 ans
--18.Affichez toute la table par ordre croissant d'age
--19.Affichez les personnes qui ne sont pas compris entre 20 et 40 par ordre décroissant d'age

SELECT*FROM personnes WHERE metier IN ('Cariste','Cuisinier','Etudiante');

SELECT*FROM personnes WHERE age BETWEEN 20 AND 40;

SELECT prenom,age FROM personnes ORDER BY age;

SELECT*FROM personnes WHERE NOT age BETWEEN 20 AND 40;

-- Bonus Affichez les personnes qui ont un métier qui contient au moins 2 voyelles identiques trié par ordre alphabétique de prénom

SELECT*FROM personnes WHERE 
lower (metier) LIKE ('%e%e%') OR 
metier LIKE ('%a%a%')OR 
metier LIKE ('%i%i%')OR 
metier LIKE ('%o%o%')OR
metier LIKE ('%u%u%')OR
metier LIKE ('%y%y%') 
ORDER BY prenom;

SELECT COUNT(*) FROM personnes;

SELECT AVG(age) FROM personnes;

--20. afficher le nombre de personnes ayant moins de 40 ans
--21.afficher la plus jeune des personnes
--22 affichez la personne la plus agée
--23 . donner l'écart d'age entre la personne la plus jeune et la personne la plus agée

SELECT COUNT(*)FROM personnes WHERE age<40;

SELECT MIN(age)FROM personnes;

SELECT MAX(age)FROM personnes;

SELECT MAX(age)-MIN(age) as ecart_age FROM personnes;

SELECT*,age-10 as "age-10" FROM personnes;



CREATE TABLE Voitures (
    id_voiture INT PRIMARY KEY NOT NULL,
    marque VARCHAR(50),
    modele VARCHAR(50),
    couleur VARCHAR(50),
    date_achat DATE,
    prix FLOAT
);

INSERT INTO Voitures VALUES(1,'Citroen','C3','verte','2013-07-06',2000.0);
INSERT INTO Voitures VALUES(2,'Citroen','DS3','noire','2016-08-08',9500.53);
INSERT INTO Voitures VALUES(3,'Peugeot','208-e','bleue','2022-05-31',35950.0);
INSERT INTO Voitures VALUES(4,'Ford','Mustang','rouge','2020-01-24',63540.0);

SELECT*FROM Voitures;

--25 afficher les différentes marques disponibles (utilisez le distinct)
--26 affichez le prix de la voiture la plus chère

SELECT distinct marque FROM voitures;

SELECT MAX(prix) FROM voitures;

--27 afficher la date de la voiture la plus récente

SELECT MAX(date_achat) FROM voitures;

ALTER TABLE personnes ADD COLUMN id_ma_voiture INT;

UPDATE personnes SET id_ma_voiture=1 WHERE prenom='Lucy';
UPDATE personnes SET id_ma_voiture=2 WHERE prenom='Jane';
UPDATE personnes SET id_ma_voiture=3 WHERE prenom='Frank';
UPDATE personnes SET id_ma_voiture=4 WHERE prenom='Robert';

--28 afficher la personne qui n'a pas de voiture
--29 affichez ceux qui en ont une 

SELECT*FROM personnes WHERE id_ma_voiture IS NULL;

SELECT*FROM personnes WHERE id_ma_voiture IS NOT NULL;

SELECT*FROM personnes,voitures WHERE id_ma_voiture = id_voiture;

--30 afficher uniquement le prenom, la marque et le modele

CREATE VIEW proprietaires AS SELECT prenom,marque,modele FROM personnes,voitures WHERE id_ma_voiture = id_voiture;

SELECT*FROM proprietaires;

--31 Supprimer le cuisinier

DELETE FROM personnes WHERE prenom='Tom';






