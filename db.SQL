-- Active: 1733827435973@@127.0.0.1@3306@example_db

CREATE TABLE Evenements (
    id_event int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    description_event VARCHAR(500),
    date_heure DATETIME,
    lieu VARCHAR(50),
    budget INT,
    bde_resp VARCHAR(50)
);

CREATE TABLE sponsors (
    id_sponsor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_entreprise VARCHAR(500),
    nom varchar(50),
    prenom VARCHAR(50),
    email   VARCHAR(100) UNIQUE,
    montant_sponsorise INT ,
    liste_event  VARCHAR(100)
);

CREATE TABLE Organisation(  
    IDEventMembre int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_event INT,
   id_member INT,
    FOREIGN KEY (id_event) REFERENCES Evenements(id_event),
    FOREIGN KEY (id_member) REFERENCES Members(id_member)
);


CREATE TABLE Finance(  
    IDFinance int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_event INT,
    id_sponsor INT,
    FOREIGN KEY (id_event) REFERENCES Evenements(id_event),
    FOREIGN KEY (id_sponsor) REFERENCES sponsors(id_sponsor)
);


CREATE TABLE Participation(
    IDparticipatin int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_event INT,
    id_participant INT,
    FOREIGN KEY (id_event) REFERENCES Evenements(id_event),
    FOREIGN KEY (id_participant) REFERENCES Participants(id_participant)
);


 INSERT INTO Members (id_member, NOM, PRENOM, Email, Role_BDE, Date_adhesion)VALUES (1, 'salim', 'ahmed', 'ahmedsal@gmail.com', 'prsident', '2024-11-24'),
     (2, 'dupont', 'jean', 'jeandupont@gmail.com', 'trsorier', '2024-11-25'),
    (3, 'martin', 'claire', 'clairemartin@gmail.com', 'secrtaire', '2024-11-26'),
     (4, 'lefevre', 'pierre', 'pierrelefevre@gmail.com', 'membre actif', '2024-11-27'),
     (5, 'bertrand', 'lucie', 'luciebertrand@gmail.com', 'secrtaire', '2024-11-28'),
     (6, 'durand', 'paul', 'pauldurand@gmail.com', 'trsorier', '2024-11-29'),
     (7, 'moreau', 'marie', 'mariemoreau@gmail.com', 'membre actif', '2024-11-30');

INSERT INTO Participants (id_participant, NOM, PRENOM, Email, statut)
VALUES 
(1, 'Dupont', 'Jean', 'jean.dupont@example.com', 'etudiant actif'),
(2, 'Martin', 'Claire', 'claire.martin@example.com', 'diplome'),
(3, 'Lemoine', 'Luc', 'luc.lemoine@example.com', 'invite'),
(4, 'Bernard', 'Sophie', 'sophie.bernard@example.com', 'etudiant actif'),
(5, 'Durant', 'Paul', 'paul.durant@example.com', 'invite'),
(6, 'Roux', 'Jacques', 'jacques.roux@example.com', 'diplome'),
(7, 'Leclerc', 'Isabelle', 'isabelle.leclerc@example.com', 'etudiant actif'),
(8, 'Moreau', 'Marie', 'marie.moreau@example.com', 'diplome'),
(9, 'Gauthier', 'Alice', 'alice.gauthier@example.com', 'invite'),
(10, 'Durand', 'Pierre', 'pierre.durand@example.com', 'etudiant actif'),
(11, 'Lefevre', 'Pierre', 'pierre.lefevre@example.com', 'diplome'),
(12, 'Joly', 'Emilie', 'emilie.joly@example.com', 'invite'),
(13, 'Faure', 'Lucie', 'lucie.faure@example.com', 'etudiant actif'),
(14, 'Blanc', 'Julien', 'julien.blanc@example.com', 'diplome'),
(15, 'Boucher', 'Pauline', 'pauline.boucher@example.com', 'etudiant actif'),
(16, 'Girard', 'Marc', 'marc.girard@example.com', 'invite'),
(17, 'Pires', 'Nadia', 'nadia.pires@example.com', 'diplome'),
(18, 'Dumas', 'Sylvain', 'sylvain.dumas@example.com', 'etudiant actif'),
(19, 'Robert', 'Elisabeth', 'elisabeth.robert@example.com', 'invite'),
(20, 'Fournier', 'Jacques', 'jacques.fournier@example.com', 'diplome');


SELECT * FROM `Participants`;

INSERT INTO sponsors (id_sponsor, nom_entreprise, nom, email, montant_sponsorise, liste_event)
VALUES 
(1, 'Maroc Telecom', 'Ahmed', 'ahmed@maroctelecom.ma', 5000, 'Hackathon'),
(2, 'Attijariwafa Bank', 'Meryem', 'meryem@attijariwafa.ma', 4000, 'Atelier Technique git et github'),
(3, 'Royal Air Maroc', 'Youssef', 'youssef@ram.ma', 3000, 'Competition Sportive'),
(4, 'Cement du Maroc', 'Sofia', 'sofia@cementmaroc.ma', 2000, 'Competition Sportive'),
(5, 'BimBam', 'Samir', 'samir@bimbam.ma', 1500, 'Hackathon, Soiree de Networking'),
(6, 'Cosumar', 'Zineb', 'zineb@cosumar.ma', 3500, 'Atelier Technique scrum et git flow'),
(7, 'Marjane Holding', 'Ali', 'ali@marjane.ma', 4500, 'Compétition Sportive'),
(8, 'Oncf', 'Fatima', 'fatima@oncf.ma', 2500, 'Hackathon'),
(9, 'Société Générale Maroc', 'Khalid', 'khalid@sgmaroc.ma', 4000, ' Competition Sportive'),
(10, 'L’Oreal Maroc', 'Mouad', 'mouad@loreal.ma', 6000, 'Hackathon'),
(11, 'Bank of Africa', 'Rachid', 'rachid@boafrica.ma', 3000, 'Festival de Cinema, Soiree BDE'),
(12, 'Maroclear', 'Nadia', 'nadia@maroclear.ma', 2800, 'Ateliers Techniques'),
(13, 'Inwi', 'Omar', 'omar@inwi.ma', 3700, 'Hackathon, Soiree de Networking'),
(14, 'Wafa Assurance', 'Leila', 'leila@wafa.ma', 3200, 'Atelier Technique, Hackathon'),
(15, 'OCP Group', 'Mustapha', 'mustapha@ocp.ma', 5500, 'Competition Sportive, Soiree de Networking'),
(16, 'Sidi Ali', 'Imane', 'imane@sidi-ali.ma', 1800, 'Atelier Technique, Hackathon'),
(17, 'Emaar Maroc', 'Hassan', 'hassan@emaar.ma', 4700, 'Salon des Startups, Conférence BDE'),
(18, 'Bayer Maroc', 'Sabrina', 'sabrina@bayer.ma', 3800, 'Atelier Technique, Competition Sportive'),
(19, 'Maroc Export', 'Karim', 'karim@marocexport.ma', 4000, 'Hackathon, Soiree de Networking'),
(20, 'Citi Maroc', 'Yassir', 'yassir@citi.ma', 5000, 'Atelier Technique, Competition Sportive');


INSERT INTO Evenements (id_event, description_event, date_heure, lieu, budget, bde_resp)
VALUES
(1, 'fete dintegration', '2024-11-30 14:00', 'youcode', 5000, 'dupont jean'),
(2, 'hackathon de programmation', '2024-12-05 09:00', 'youcode', 6000, 'bertrand lucie'),
(3, 'atelier java pour debutants', '2024-12-10 10:00', 'youcode', 2000, 'moreau marie'),
(4, 'soirée de networking', '2024-12-12 18:00', 'youcode', 1500, 'dupont jean'),
(5, 'compétition de coding', '2024-12-15 08:00', 'youcode', 3000, 'moreau marie'),
(6, 'formation sur le web design', '2024-12-18 11:00', 'youcode', 2500, 'martin claire'),
(7, 'atelier python avancé', '2024-12-20 14:00', 'youcode', 3500, 'bertrand lucie'),
(8, 'conference sur lintelligence artificielle', '2024-12-22 16:00', 'youcode', 4500, 'dupont jean'),
(9, 'soirée de bienvenue pour nouveaux', '2024-12-25 19:00', 'youcode', 1000, 'Durand Pierre'),
(10, 'atelier de développement mobile', '2025-01-02 10:00', 'youcode', 3000, 'bertrand lucie'),
(11, 'hackathon de data science', '2025-01-05 09:00', 'youcode', 7000, 'dupont jean'),
(12, 'formation blockchain', '2025-01-08 13:00', 'youcode', 4000, 'Faure Lucie'),
(13, 'soirée festive de nouvel an', '2025-01-10 20:00', 'youcode', 1500, 'moreau marie'),
(14, 'atelier de cybersécurité', '2025-01-12 15:00', 'youcode', 2000, 'bertrand lucie'),
(15, 'compétition de jeux vidéo', '2025-01-14 10:00', 'youcode', 2500, 'dupont jean'),
(16, 'formation gestion de projet', '2025-01-17 11:00', 'youcode', 3000, 'moreau marie'),
(17, 'hackathon en intelligence artificielle', '2025-01-20 08:00', 'youcode', 5000, 'bertrand lucie'),
(18, 'soirée networking et startups', '2025-01-22 18:00', 'youcode', 2000, 'martin claire'),
(19, 'atelier développement front-end', '2025-01-25 14:00', 'youcode', 3000, 'moreau marie'),
(20, 'soirée de clôture des projets', '2025-01-30 19:00', 'youcode', 1500, 'dupont jean');

INSERT INTO Organisation (id_member, id_event)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(1, 8),
(2, 9),
(3, 10),
(4, 11),
(5, 12),
(6, 13),
(7, 14),
(1, 15),
(2, 16),
(3, 17),
(4, 18),
(5, 19),
(6, 20);

INSERT INTO Participation (id_participant, id_event)
VALUES
(1, 1),
(2, 2),
(3, 7),
(4, 4),
(5, 5),
(6, 8),
(7, 7),
(8, 7),
(9, 9),
(10, 10),
(11, 15),
(12, 12),
(13, 7),
(14, 14),
(15, 15),
(16, 8),
(17, 3),
(18, 18),
(19, 6),
(20, 5);


INSERT INTO Finance (id_sponsor, id_event)
VALUES
(1, 1),
(2, 2),
(3, 5),
(4, 5),
(5, 1),
(5, 4),
(6, 6),
(7, 5),
(8, 1),
(9, 5),
(10, 1),
(11, 11),
(11, 4),
(12, 3),
(13, 1),
(13, 4),
(14, 3),
(14, 2),
(15, 5),
(15, 4),
(16, 3),
(16, 2),
(17, 8),
(17, 4),
(18, 3),
(18, 5),
(19, 1),
(19, 4),
(20, 3),
(20, 5);

--Afficher tous les membres du BDE avec leur rôle et leur date d’adhésion.
SELECT NOM , PRENOM,Role_BDE,Date_adhesion 
FROM `Members`;

--Lister tous les événements prévus après une date donnée
SELECT description_event 
FROM Evenements
WHERE date_heure >'2024-12-15 08:00:00';

--Afficher les informations des événements ayant un budget supérieur à 5000 MAD.
SELECT id_event,description_event,date_heure,lieu,bde_resp
FROM Evenements
WHERE budget > 5000 ;

--Lister les participants inscrits à un événement spécifique.
SELECT p.id_participant, p.NOM, p.Email,p.PRENOM
FROM Participants p
INNER JOIN Participation  ON p.id_participant = Participation.IDparticipatin
WHERE Participation.id_event = 7;

--Afficher les sponsors qui ont contribué à des événements ayant un budget supérieur à 3500 MADSELECT s.id_sponsor, s.nom_entreprise, s.nom, s.email, s.montant_sponsorise, e.description_event
SELECT s.id_sponsor, s.nom_entreprise, s.nom, s.email, s.montant_sponsorise, e.description_event
FROM sponsors s
INNER JOIN Finance f ON s.id_sponsor = f.id_sponsor
INNER JOIN Evenements e ON f.id_event = e.id_event
WHERE e.budget > 3500;

--Compter le nombre total d’événements organisés par le BDE
SELECT COUNT(description_event) AS total_events
FROM Evenements;

--Calculer la moyenne du budget des événements organisés.
SELECT AVG(budget) AS moyenne_budget
FROM Evenements;
--Afficher le nom et la date des événements sponsorisés par un sponsor donné.
SELECT e.description_event, e.date_heure
FROM Evenements e
INNER JOIN Finance f ON e.id_event = f.id_event
WHERE f.id_sponsor = 7;
--Lister les événements qui se déroulent dans un lieu donné.
SELECT description_event , date_heure, lieu
FROM Evenements
WHERE lieu = 'youcode';
--Afficher les 5 derniers événements organisés par le BDE.
SELECT description_event, date_heure,lieu, budget
FROM Evenements
ORDER BY date_heure DESC
LIMIT 5;
--Lister les membres du BDE qui ont rejoint avant une date donnée.
SELECT NOM,PRENOM, date_adhesion
FROM Members
WHERE date_adhesion < '2024-11-27';
--Compter le nombre total de participants à un événement donné.
SELECT COUNT(*) AS total_participants
FROM Participation
WHERE id_event = 7;
--Afficher les noms des sponsors ayant contribué à plus d’un événement.
SELECT s.nom_entreprise
FROM sponsors s
INNER JOIN Finance f ON s.id_sponsor = f.id_sponsor
GROUP BY s.id_sponsor
HAVING COUNT(f.id_event) > 1;
--Afficher les noms des sponsors ayant contribué à plus d’un événement.
SELECT s.nom_entreprise
FROM sponsors s
INNER JOIN Finance f ON s.id_sponsor = f.id_sponsor
GROUP BY s.id_sponsor
HAVING COUNT(f.id_event) > 1;
--Lister les participants inscrits à plusieurs événements.
SELECT p.NOM, p.PRENOM,p.Email,p.statut
FROM Participants p
INNER JOIN Participation i ON p.id_participant = i.id_participant                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GROUP BY p.id_participant
HAVING COUNT(i.id_event) > 1;
--Afficher les événements ayant lieu dans un mois donné.
SELECT description_event, date_heure
FROM Evenements
WHERE MONTH(date_heure) = 12;
--Lister les événements n’ayant pas encore de participants inscrits.
SELECT description_event, date_heure
FROM Evenements e
LEFT JOIN Participation p ON e.id_event = p.id_event
WHERE p.IDparticipatin IS NULL;
--Afficher les détails du sponsor ayant contribué le plus au budget global des événements.
SELECT s.id_sponsor, s.nom_entreprise, SUM(s.montant_sponsorise) AS total_contribution
FROM sponsors s
INNER JOIN Finance f ON s.id_sponsor = f.id_sponsor
GROUP BY s.id_sponsor
ORDER BY total_contribution DESC
LIMIT 1; 
--Compter le nombre de sponsors associés à chaque événement.
SELECT e.description_event, COUNT(f.id_sponsor) AS total_sponsors
FROM Evenements e
LEFT JOIN Finance f ON e.id_event = f.id_event
GROUP BY e.id_event; 

--Lister les événements qui ont au moins 10 participants.
SELECT e.description_event, COUNT(p.IDparticipatin) AS total_participants
FROM Evenements e
INNER JOIN Participation p ON e.id_event = p.id_event
GROUP BY e.id_event
HAVING COUNT(p.IDparticipatin) >= 10;

--Afficher les détails des membres du BDE impliqués dans l’organisation d’événements spécifiques.

SELECT m.nom, m.prenom, m.date_adhesion
FROM Members m
INNER JOIN Evenements e ON m.id_member = e.bde_resp
WHERE e.id_event = 7;

