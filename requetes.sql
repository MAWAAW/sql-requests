-- Liste des articles dans l'ordre alphabétique des désignation
SELECT * FROM `article` ORDER BY DESIGNATION

-- Liste des articles par odre de prix descendant
SELECT * FROM `article` ORDER BY PRIX DESC

-- Liste des articles dont le prix est supérieur à 25$
SELECT * FROM `article` WHERE prix > 25

-- Liste des articles par ordre de prix ascendant et qui sont des "boulons"
SELECT * FROM `article` WHERE DESIGNATION LIKE 'Boulon%' ORDER BY prix

-- Liste des articles dont la désignation contient le mot "sachet"
SELECT * FROM `article` WHERE DESIGNATION LIKE '%sachet%'

-- Liste des articles dans l'ordre alphabétique des noms de fournisseur
SELECT article.* FROM `article`,`fournisseur` 
WHERE article.id_fou=fournisseur.id ORDER BY fournisseur.nom

-- Sélectionner les bons de commandes émise entre 2 dates
SELECT * FROM `bon` WHERE bon.DATE_CMDE BETWEEN CAST('01/03/2017' AS DATE) 
AND CAST('05/04/2017' AS DATE)

-- Sélectionner les numéros de bons de commande qui contiennent des boulons
SELECT DISTINCT bon.numero FROM `bon` JOIN compo ON compo.id_bon = bon.id 
JOIN article ON article.id=compo.id_art WHERE article.designation LIKE 'Boulon%' 
 
-- Calculer le prix total de chaque bon de commande
SELECT numero,SUM(prix*qte) FROM article,bon,compo WHERE compo.id_art=article.id 
AND compo.id_bon=bon.id GROUP BY numero

-- Compter le nombre d'articles de chaque bon de commande
SELECT numero,SUM(qte) FROM article,bon,compo WHERE compo.id_art=article.id
AND compo.id_bon=bon.id GROUP BY numero

-- Calculer le prix moyen des bons de commande par fournisseur
SELECT nom,avg(prix*qte) FROM article,bon,compo,fournisseur WHERE compo.id_art=article.id 
AND compo.id_bon=bon.id AND fournisseur.id=bon.id_fou GROUP BY nom

-- Calculer le coût total des commandes effectuées sur le mois d'Avril
SELECT SUM(prix*qte) FROM article,bon,compo WHERE compo.id_art=article.id 
AND compo.id_bon=bon.id AND MONTH(date_cmde)=4

-- Selectionner les articles qui ont une désignation identique mais des fournisseurs differents
SELECT article.* FROM article AS article JOIN article AS article2
ON article.designation = article2.designation WHERE article.id_fou != article2.id_fou

-- Calculer les dépenses en commandes mois par mois
SELECT MONTH(date_cmde),SUM(prix*qte) FROM article,compo,bon WHERE article.id=compo.id_art
AND bon.id=compo.id_bon GROUP BY MONTH(date_cmde)

-- Sélectionner les bons de commandes sans article
SELECT bon.* FROM bon WHERE NOT EXISTS (SELECT id_bon FROM compo WHERE compo.id_bon=bon.id)

-- Sélectionner les articles dont la désignation contient le mot sachet independamment de la casse
SELECT article.* FROM article WHERE UPPER(article.designation) LIKE '%SACHET%'



