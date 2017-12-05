truncate table fournisseur;
truncate table article;
truncate table compo;
truncate table bon;

insert into fournisseur (ID, NOM) VALUES (1, 'Française d\'Imports');
insert into fournisseur (ID, NOM) VALUES (2, 'FDM SA');
insert into fournisseur (ID, NOM) VALUES (3, 'Dubois & Fils');

insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (1, 'A01', 'Perceuse P1', '74.99', 1);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', '2.25', 2);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', '4.45', 2);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', '4.40', 3);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (5, 'A02', 'Meuleuse 125mm', '37.85', 1);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', '1.80', 3);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (7, 'A03', 'Perceuse à colonne', '185.25', 1);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (8, 'D04', 'Coffret mêches à bois', '12.25', 3);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (9, 'F03', 'Coffret mêches plates', '6.25', 2);
insert into article (ID, REFER, DESIGNATION, PRIX, ID_FOU) VALUES (10, 'F04', 'Fraises d\'encastrement', '8.14', 2);

insert into bon (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (1, 1, 3, 1, '2017-02-08 09:30:00');
insert into compo (ID_ART, ID_BON, QTE) values (1, 1, 3);
insert into compo (ID_ART, ID_BON, QTE) values (5, 1, 4);
insert into compo (ID_ART, ID_BON, QTE) values (7, 1, 1);


insert into bon (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (2, 2, 5, 2, '2017-03-02 09:30:00');
insert into compo (ID_ART, ID_BON, QTE) values (2, 2, 25);
insert into compo (ID_ART, ID_BON, QTE) values (3, 2, 15);
insert into compo (ID_ART, ID_BON, QTE) values (9, 2, 8);
insert into compo (ID_ART, ID_BON, QTE) values (10, 2, 11);

insert into bon (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (3, 3, 2, 3, '2017-04-03 17:30:00');
insert into compo (ID_ART, ID_BON, QTE) values (4, 3, 25);
insert into compo (ID_ART, ID_BON, QTE) values (6, 3, 40);
insert into compo (ID_ART, ID_BON, QTE) values (8, 3, 15);

insert into bon (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (4, 4, 2, 3, '2017-04-05 11:40:00');
insert into compo (ID_ART, ID_BON, QTE) values (4, 4, 10);
insert into compo (ID_ART, ID_BON, QTE) values (6, 4, 15);
insert into compo (ID_ART, ID_BON, QTE) values (8, 4, 8);

insert into bon (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (5, 5, 7, 2, '2017-05-15 14:45:00');
insert into compo (ID_ART, ID_BON, QTE) values (2, 5, 17);
insert into compo (ID_ART, ID_BON, QTE) values (3, 5, 13);
insert into compo (ID_ART, ID_BON, QTE) values (10, 5, 9);

insert into bon (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (6, 6, 0, 1, '2017-06-24 18:55:00');
