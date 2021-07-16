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
	(`refRestaurant`, `refAdresse`, `refNotif`, `faq`, `nombre employés`, `idCommande`)
VALUES
	(1, '0173456989', '#58979', 'Lorem Ipsum questionate', '2', '1790' ),
	(2, '0323456189', '#28098', 'Lorem Ipsum questionate', '6','7090'),
	(3, '0623656739', '#78639', 'Lorem Ipsum questionate', '2', NULL)
	;

-- -----------------------------------------------------
-- Table `ocpizza`.`commande`
-- -----------------------------------------------------
	INSERT INTO `oc-pizza`.Commande
		(`idCommande`, `dateCommande`, `valeurPanier`, `reduction`, `livraison`)
	VALUES
		('1790', '2018-07-14 12:46:28', '25,00', NULL, 'TRUE'),
		('7090', '2018-07-13 13:02:12', '11,00', NULL, 'FALSE')
	;

-- -----------------------------------------------------
--  Table `Statut Commande`
-- -----------------------------------------------------
INSERT INTO `ocpizza`.`article`
	(`idStatut`,`etat_paiement`, `etat_preparation`, `etat_livraison`)
VALUES
	(1, '1', '12,00', 1),
	(2, '1', '6,00', 1),
	(3, '2', '7,00', 1),
	(4, '1', '11,00', 2)
;


-- -----------------------------------------------------
-- Table `ocpizza`.`ingredient`
-- -----------------------------------------------------
INSERT INTO `ocpizza`.`ingredient`
	(`idIngrédients`, `maj`, `refonteStock`)
VALUES
	(1, 'anchois', '22/07'),
	(2, 'câpres', '23/09'),
	(3, 'mozzarella', '22/06'),
	(4, 'roquette', '24/12'),
	(5, 'champignon', '23/04')
;

-- -----------------------------------------------------
-- Table `ocpizza`.`employe`
-- -----------------------------------------------------
INSERT INTO `ocpizza`.`employe`
	(`idemploye`, `refCommande`, `fonction`)
VALUES
	(1, 'Richard', 'Livreur'),
	(2, 'Erlich', 'Préparateur'),
	(3, 'Bertram', 'responsable')
;

-- -----------------------------------------------------
-- Table `ocpizza`.`recette`
-- -----------------------------------------------------
INSERT INTO `ocpizza`.`recette`
	(`idrecettes`, `nom`, `tempsEstimé`)
VALUES
	(1, 'pizza napolitaine', '420'),
	(2, 'pizza roma', '450')
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

-- -----------------------------------------------------
-- Table `Client_has_Commande`
-- -----------------------------------------------------
INSERT INTO `ocpizza`.`restaurant_has_client`
	(`Client_idClient`, `Commande_idCommande`)
VALUES
	(1, 2),
	(2, 3)
;







	COMMIT;
