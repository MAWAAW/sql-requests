create table article (
	ID int NOT NULL PRIMARY KEY, 
	REFER varchar(13) NOT NULL, 
	DESIGNATION varchar(255) NOT NULL, 
	PRIX decimal(7,2) NOT NULL, 
	ID_FOU int NOT NULL
);

create table fournisseur (
	ID int NOT NULL PRIMARY KEY, 
	NOM varchar(25) NOT NULL
);

create table BON(
	ID int NOT NULL PRIMARY KEY, 
	NUMERO int, 
	DATE_CMDE DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	DELAI int, 
	ID_FOU int not null
);

create table COMPO (
	ID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	ID_ART int, 
	ID_BON int, 
	QTE int
);


