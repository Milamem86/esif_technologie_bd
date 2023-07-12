
CREATE DATABASE bd_esif_technologies;


CREATE TABLE Categories (
    categorieID int NOT NULL AUTO_INCREMENT,
    nom_de_la_categorie  varchar(255),
    PRIMARY KEY (categorieID)
);


CREATE TABLE Clients (
    clientID int NOT NULL AUTO_INCREMENT,
    nom_du_client varchar(255),
    prenom_du_client varchar (255),
    telephone_du_client int(255),
    email_du_client varchar(255),
    PRIMARY KEY (clientID)
);


CREATE TABLE Articles (
    articleID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article varchar(255),
    prix_de_article varchar(255),
    PRIMARY KEY (articleID),
    FOREIGN KEY (categorieID) REFERENCES Categories(categorieID)
);



CREATE TABLE Ventes (
    venteID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article_vendu varchar(255),
    prix_de_l_article_vendu int(255),
    PRIMARY KEY (venteID),
    FOREIGN KEY (clientID) REFERENCES Clients(clientID),
    FOREIGN KEY (articleID) REFERENCES Articles(articleID)
);

 
CREATE TABLE Fournisseurs (
    fournisseurID int NOT NULL AUTO_INCREMENT,
    nom_du_fournisseur varchar(255),
    telephone_du_fournisseur int(255),
    email_du_fournisseur varchar(255),
    nom_de_l_article_fournis varchar(255),
    prix_de_l_article_fournis int(20),
    PRIMARY KEY (fournisseurID)
);

 
CREATE TABLE Achats (
    achatID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article_acheter varchar(255),
    prix_de_l_article_acheter integer(20),
    PRIMARY KEY (achatID),
    FOREIGN KEY (fournisseurID) REFERENCES Fournisseurs(fournisseurID),
    FOREIGN KEY (articleID) REFERENCES Articles(articleID)
);


INSERT INTO Categories (nom_de_la_categorie)
VALUES ('Ordinateur'),
VALUES ('Telephone'),
VALUES ('cle_usb'),
VALUES ('Cable'),
VALUES ('Souri');


INSERT INTO Clients (nom_du_client, prenom_du_client, telephone_du_client, email_du_client,)
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com');


INSERT INTO Articles (nom_de_l_article, prix_de_article,)
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000');


INSERT INTO Ventes (nom_de_l_article_vendu, prix_de_l_article_vendu,)
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),;


INSERT INTO Fournisseurs (nom_du_fournisseur, telephone_du_fournisseur_du_fournisseur, email_du_fournisseur, nom_de_l_article_fournis, prix_de_l_article_fournis,)
VALUES ('EDIFFASO', '78255578', 'ediffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('EDIFFASO', '78255578', 'ediffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('EDIFFASO', '78255578', 'ediffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('EDIFFASO', '78255578', 'ediffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('EDIFFASO', '78255578', 'ediffaso@gmail.com', 'HP Probook core i5', '700000');


INSERT INTO Achats (nom_de_l_article_acheter, prix_de_l_article_acheter,)
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000');