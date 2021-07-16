START TRANSACTION;

-- -----------------------------------------------------
-- Table `ocpizza`.`client`
-- -----------------------------------------------------
INSERT INTO `oc-pizza`.Client
	(`idClient`,`e-mail`, `prenom`, `nom`, `mot de passe`)
VALUES
	(1, 'alan.turing@gmail.com','Alan', 'Turing', 'crypto'),
	(2, 'grace.hopper@outlook.com', 'Grace', 'Hopper', 'compilation'),
	(3, 'john.vonneumann@yahoo.com', 'John', 'Von Neumann', 'memoire')
;

-- -----------------------------------------------------
-- Table `ocpizza`.`adresse`
-- -----------------------------------------------------
INSERT INTO `oc-pizza`.Adresse
	(`refAdresse`, `numero`, `rue`, `ville`, `codePostal`)
VALUES
	(1, '7', 'rue Poissonière', 'Paris', '75002'),
	(2, '7', 'boulevard Haussman', 'Paris', '75009'),
	(3, '3', 'rue Bleue', 'Paris', '75009')
	
;

-- -----------------------------------------------------
-- Table `ocpizza`.`restaurant`
-- -----------------------------------------------------
INSERT INTO `oc-pizza`.Restaurant
	(`refRestaurant`, `refAdresse`, `refNotif`,`nom`, `nombre employés`, `adresse`,`faq`, `Commande_IdCommande`, `Employé_IdEmployé`, `Adresse_refAdresse`)
VALUES
	(1, '0173456989', '#58979', 'OCpizza_parmentier', '2', 'Parmentier', 'Lorem Ipsum questionate', '70990', '277','1'),
	(2, '0323456189', '#28098', 'OCpizza_SaintDenis', '3', 'SaintDenis', 'Lorem Ipsum questionate', '68003', '276', '2'),
	(3, '0623656739', '#78639', 'OCpizza_VictorHugo', '6', 'VictorHugo', 'Lorem Ipsum questionate', '56009', '275', '3')
	;

-- -----------------------------------------------------
-- Table `ocpizza`.`commande`
-- -----------------------------------------------------
	INSERT INTO `oc-pizza`.Commande
		(`idCommande`, `dateCommande`, `valeurPanier`, `reduction`, `livraison`, `Adresse_refAdresse`)
	VALUES
		('1790', '2018-07-14 12:46:28', '25', NULL, '1', '1'),
		('7090', '2018-07-13 13:02:12', '11', NULL, '0', '2')
	;

-- -----------------------------------------------------
--  Table `Statut Commande`
-- -----------------------------------------------------
INSERT INTO `oc-pizza`.`Statut Commande`
	(`idStatut Commande`,`etatCreation`,`etatPaiement`, `etatPreparation`, `etatLivraison`)
VALUES
	(1, '2021-07-14 12:43:28', 1 , '2018-07-14 12:54:28','2018-07-14 13:03:28'),
	(2, '2021-07-14 13:26:28', 1, '2018-07-14 13:40:28','2018-07-14 14:00:28'),
	(3, '2021-07-14 14:12:28', 1, '2018-07-14 14:16:28', '2018-07-14 14:36:28'),
	(4, '2021-07-14 15:46:28',  2, '2018-07-14 15:50:28', '2018-07-14 16:00:28')
;



-- -----------------------------------------------------
-- Table `ocpizza`.`employe`
-- -----------------------------------------------------
INSERT INTO `oc-pizza`.Employé
	(`idEmployé`, `refCommande`, `fonction`)
VALUES
	(1, 'Richard', 'Livreur'),
	(2, 'Erlich', 'Préparateur'),
	(3, 'Bertram', 'responsable')
;


-- -----------------------------------------------------
-- Table `ocpizza`.`notification`
-- -----------------------------------------------------
INSERT INTO `ocpizza`.`notification`
	(`refNotif`, `créeLe`, `maj`)
VALUES
	(1, '2018-07-14 12:50:09', '2018-07-14 12:55:09'),
	(2, '2018-07-14 13:05:09', '2018-07-14 14:02:45')
;

-- -----------------------------------------------------
-- Table `Notification_has_Client`
-- -----------------------------------------------------
INSERT INTO `oc-pizza`.Notification_has_Client
	(`Notification_refNotif`, `client_idClient`)
VALUES
	('12371', '20965'),
	('72379', '"39870')
;








	COMMIT;
