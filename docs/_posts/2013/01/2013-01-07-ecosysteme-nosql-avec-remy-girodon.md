---
layout: "post"
author: 
  - "acrepet"
title: "Ecosystème NoSQL avec Rémy Girodon"
date: "2013-01-07"
categories: 
  - "les-conferences"
tags: 
  - "lyon-jug"
  - "nosql"
---

| Le 15 janvier prochain, le [Lyon JUG](http://www.lyonjug.org/) invite [Rémy Girodon](http://twitter.com/rgirodon) pour un talk intitulé "NoSQL pour les Nuls". Quand on a demandé à Rémy de présenter son sujet, voici sa réponse, on ne s'en lasse pas : _"On ne va pas se mentir (pas après 6 ans de Lyon Jug), si tu as 3 projets Cassandra dans les pattes, 5 projets MongoDB, 4 projets Neo4J et que tu es commiter sur Redis, tu ne vas pas apprendre grand chose à ce talk. Par contre si as toujours stocké tes data dans un bon vieux SGBDR des familles et que tu te demandes si il y aurait pas eu moyen de faire un poil plus pertinent / performant / pratique / économique / simple (rayez ou pas la ou les mentions inutiles), alors ce talk est fait pour toi. On va te prendre par la main et te faire découvrir les grandes familles du NoSQL, les Use Cases qu'elles adressent, et en bonus chaque famille un focus sur un produit caractéristique. Allez viens ! "_ |

[![Rémy Girodon](https://sites.google.com/a/lyonjug.org/lyonjug/_/rsrc/1289251248118/speakers/RemyGirodon.JPG?width=100?height=180&width=180)](http://twitter.com/rgirodon)

Pour vous donner tout de suite un avant-goût de la soirée, allons poser quelques questions à Rémy.

_Cet interview a été préparé par la team "élargie" du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/cedric_exbrayat), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler) et [Cyril LACOTE](http://twitter.com/clacote)_.__

**La team du Lyon JUG: Qui es-tu? Quelles sont tes missions chez SQLi ?**

**Rémy** : Je suis ingénieur Java à SQLi depuis 2001.

SQLi réalise des projets principalement web et mobile pour ses clients. Dans ce cadre, j'ai participé à plusieurs projets, en tant que développeur, leader technique, et chef de projet technique.

En parallèle j'anime des formations internes et externes, en entreprise et en école d'ingénieurs, sur le langage Java, la plate-forme JavaEE et sur les frameworks type Hibernate, Spring ou JSF. Je suis d'ailleurs particulièrement fier d'avoir monté la J//Académie, partenariat entre SQLI et 2 écoles d'ingénieurs stéphanoises, l'Ecole des Mines de Saint-Etienne et Telecom Saint-Etienne : 16j de cours de Java, JSF, Spring, Hibernate, Maven... sont dispensés aux élèves de dernière année en option Info.

**La team du Lyon JUG: Peux-tu nous rappeler la signification de “NoSQL” ?**

**Rémy** : NoSQL est un terme marketing excellent. On l'entend et on le retient aussitôt, on a presque envie d'essayer directement. Lorsque j'ai débuté en 2001, Versant éditait une base de données objet, concurrente des bases relationnelles, et ils étaient limite effrayants. Pourtant c'était déjà du NoSQL. D'ailleurs aujourd'hui ils disent clairement qu'ils sont le premier produit NoSQL ! Tout cela pour dire que c'est un terme marketing excellent, mais un terme technique sans aucune pertinence ou presque.

On peut dire qu'aujourd'hui ce terme NoSQL regroupe toutes les solutions de persistence qui ne reposent pas sur le modèle relationnel pour représenter les données, et sur le standard SQL pour définir le modèle, et requêter ou mettre à jour les données.

Du coup sous ce terme générique, on trouve des solutions très différentes. Certains croient d'ailleurs que ce sont des solutions concurrentes qui pourraient faire plus ou moins la même chose, et qu'on pourrait intervertir en cours de projet. C'est une erreur grossière, Cassandra n'a rien à voir avec MongoDB, qui n'a lui même rien à voir avec Neo4j... Ces solutions répondent à des use cases très différents, on n'est pas en train de parler de PostgreSQL, MySQL et SQL Server !

**La team du Lyon JUG: Comment es-tu tombé dans la marmite NoSQL ?**

**Rémy** : Pour deux raisons principales :

- d'une part ces solutions, pour sortir du lot, ont une démarche marketing très poussée auprès des développeurs. Fréquentant assidûment les conférences de type JUG, Mix-IT ou Devoxx, j'ai souvent eu l'occasion d'entendre parler de MongoDB, Cassandra... Donc sans jamais avoir pratiqué, mon intérêt pour ces solutions était fort. Comme j'adore apprendre et découvrir, j'ai passé pas mal d'heures à lire des docs / tutorial sur ces produits, à les tester de manière perso (chose aisée puisque toutes proposent au moins une version Community), afin de mieux les connaitre.
- d'autre part, les besoins ou difficultés rencontrés sur mes projets professionnels à SQLi m'ont également poussé à creuser dans ce sens.

**La team du Lyon JUG: Dernièrement, dans quels contextes as-tu pu utiliser une solution NoSQL ? Quels gains et quelles difficultés de mise en oeuvre ?**

**Rémy** : Là encore deux raisons principales :

- sur un premier projet, c'est le volume qui m'a poussé à sortir certaines données de la base relationnelle où elles étaient, pour les placer dans un MongoDB. Ces données étaient importantes (en volume) et inexploitables dans la base Oracle où elles se trouvaient. Par ailleurs, la normalisation n'avait aucun intérêt les concernant. C'était typiquement des données à empiler de manière dénormalisée dans un MongoDB pour continuer d'en disposer, pouvoir les indexer et les requêter, sans perturber davantage la base relationnelle utilisée par l'application.
- sur un deuxième projet, c'est le côté schema-less des données qui m'a poussé à ne pas préconiser un SGBDR traditionnel. L'intérêt était de stocker et d'indexer des petites annonces auto et moto. Modéliser cela dans du relationnel était compliqué et n'apportait rien au problème du client, qui était de pouvoir faire des recherches multi-critères performantes sur ses annonces !Là encore, on avait typiquement des données à empiler dans un MongoDB et à indexer avec ElasticSearch.

Les difficultés que je rencontre sont de deux types :

- d'une part ne pas se tromper sur le produit NoSQL. Je dirai que maintenant c'est quand même plus simple de ne pas se tromper, avec le recul et une meilleure connaissance des limites de chaque produit.
- d'autre part, arriver à convaincre les clients d'installer dans leur SI et d'apprendre un nouveau produit. Il faut voir que bien souvent les DBAs sont installés, et proposent un monitoring et un support de qualité sur les SGBDR utilisés dans la boutique. Un projet qui souhaite stocker ses données dans un MongoDB par exemple, ou un Cassandra, va entraîner des besoins de type opération / exploitation. Comment je monitore la solution, avec quelles alertes ? Comment je monte de version ? Comment je sécurise ? Comment je sauvegarde ? Toutes ces questions sont réellement source de difficultés, voire de blocage chez certains clients, d'autant plus qu'en tant que SSII nous n'avons pas toutes les réponses à ces questions. C'est le business des éditeurs de ces solutions, et c'est bien légitime, le jeu fonctionne comme cela.

**La team du Lyon JUG: Tes chouchoutes ? As-tu des solutions NoSQL de prédilection ? Si oui, pourquoi celles-là ?**

**Rémy** : MongoDB, incontestablement. Déjà c'est la plus simple à appréhender quand on vient du monde relationnel. Après j'adore son côté pratique et fonctionnel. 3 terminaux, 5 lignes de commande et on a un replica set qui fonctionne ! Une solution haute disponibilité de persistance ! En tant que développeur Java, j'adore aussi le fait que Hibernate OGM, Spring Data, Eclipse Link, ou Jongo proposent des solutions abouties pour attaquer un MongoDB depuis Java. Tout cela est très agréable car c'est simple, ça marche, et ça répond à de vrais besoins client.

Idem pour ElasticSearch, même si on doit plus parler d'une solution d'indexation que d'une solution NoSQL. Ce sont vraiment des produits très intelligents, qui répondent à de vrais besoins clients, et sans introduire de difficulté démesurée et inutile.

Neo4j ou Cassandra sont des solutions intelligentes également, mais ils répondent à des besoins plus spécifiques et j'ai moins eu l'occasion de les utiliser dans un contexte professionnel. Par contre dans leur champ d'application, ce sont des solutions vraiment pertinentes.

**La team du Lyon JUG: Quels sont les champs d’application de NoSQL ? Y a-t-il des domaines dans lesquels les bases de données relationnelles restent plus pertinentes ?**

**Rémy** : Les bases de données relationnelles restent évidemment pertinentes. Sur un projet de gestion classique, peut-être 95% des données (en terme de type) vont rester dans le SGBDR. Par contre, peut-être qu’une ou deux tables vont être (ou devraient être :)) migrées vers un produit NoSQL, car elles n'avaient rien à faire dans le SGBDR. En terme de volume, bien que cela concerne 3 tables sur 200, cela fera peut-être quand même 70% du volume de data !

Les SGBDR ont un énorme atout, le support parfait des transactions ACID. Des produits NoSQL comme MongoDB ou Cassandra seront plutôt destinés à stocker des données volumineuses, très peu connectées entre elles, que l'on va empiler. De son côté Neo4j va permettre de répondre efficacement à toute problématique de parcours de graphe. Dans ce cas là les données sont fortement interconnectées, et c'est ce qui fait leur richesse, à l'image de l'exemple traditionnel du réseau social type Viadeo. Modéliser cela en relationnel est aisé, mais les temps de requêtage seraient prohibitifs (déterminer par exemple qui sont les amis de mes amis qui ne sont pas mes amis...). Neo4j est outillé pour cela et répondra parfaitement.

Vraiment ce sont des use cases bien précis qui doivent faire choisir une solution NoSQL, pas la hype, le logo, ou le nom sympa.

**La team du Lyon JUG: Qui sont les principaux acteurs de NoSQL ?**

**Rémy** : Il y a les éditeurs de solution, type 10Gen, Neo Technologies, mais désormais tout l'écosystème IT s'y intéresse. Dans le monde Java, avec Hibernate OGM et Spring Data on voit que les deux frameworks qui ont sauvé Java dans les années 2000 proposent des outils pour le NoSQL. C'est forcément un signe.

Les acteurs du Cloud type CloudFoundry, Heroku, Cloudbees proposent des stores NoSQL on demand, du Redis, ou du MongoDB par exemple.

Les produits NoSQL ont convaincu les développeurs de leur bien-fondé, la partie est gagnée de ce côté là je pense. Par contre il y a encore beaucoup de travail pour convaincre les équipes d'eploit des clients. DBA Oracle c'est un métier reconnu, demain il faut qu'on puisse cherche des System Administrator MongoDB ou Cassandra !

_Merci à Anne-Laure Rigaudon pour sa relecture._

**ET Merci Rémy!**

**Les inscriptions pour la session de Rémy au [Lyon JUG](http://www.lyonjug.org) le 15 janvier sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/ecosysteme-nosql) pour vous inscrire! A noter également que le même soir au Lyon JUG, Sylvain Roussy présentera un Lightning Talk sur Neo4J.**
