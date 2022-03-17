---
layout: "post"
author: 
  - "Audrey"
title: "Les mains dans le code avec Elastic Search"
date: "2012-09-12"
categories: 
  - "duchess-agit"
  - "les-mains-dans-le-code"
tags: 
  - "elasticsearch"
  - "la-marmite"
---

| Pour cette deuxième soirée Les Mains Dans le Code de la rentrée, nous vous proposons de découvrir [Elastic Search](http://www.elasticsearch.org/ "ElasticSearch") avec [David Pilato](http://twitter.com/dadoonet "@dadoonet") et [Malloum Laya](http://twitter.com/TheMalloum "@TheMalloum"). |

## Elastic Search : Un moteur de recherche pour votre SI

![ElasticSearch](/assets/2012/09/2012-09-12-les-mains-dans-le-code-avec-elastic-search/elasticsearch.png "ElasticSearch")

Partant de l'idée un peu folle qu'il faut utiliser un _\*moteur de recherche\*_ pour faire de la _\*recherche\*_, nous allons démontrer au cours d'un atelier pratique à quel point il est simple de mettre en oeuvre le moteur de recherche Elastic Search et de l'intégrer avec votre code Java.

## Ce Hands-On est fait pour vous si :

- Vous utilisez encore des requêtes SQL pour faire des recherches,
- Vos utilisateurs vous reprochent de ne pas pouvoir chercher sur toutes les rubriques,
- Votre temps de réponse moyen est supérieur à la demi-seconde avec seulement quelques millions de documents,
- Il vous faut 3 jours pour produire des statistiques sur vos données,
- Vous rêvez d’offrir une recherche "à la google" sur les données de votre SI.

## Que va-t'on faire ?

La soirée sera découpée en plusieurs petites présentations et ateliers successifs :

- Présentation générale sur la recherche et Elasticsearch d'environ 20 minutes,
- Préparation des exercices : installer son poste et démarrer un Elasticsearch,
- Présentation des API Java indexation et atelier,
- Présentation des API Java de recherche et atelier,
- Présentation des Facettes et atelier.

S'il reste un peu de temps, nous découvrirons la réplication sur plusieurs noeuds et les principaux outils de surveillance du cluster.

## Pré-requis

L'atelier ne nécessite pas de connaissances particulières hormis savoir utiliser son IDE et développer en Java.

Sur votre poste de travail, il faut avoir :

- JDK 1.6,
- Maven 3.x,
- GIT (éventuellement mais pas indispensable),
- Un IDE est préférable ;-).

Lors de la soirée, vous pourrez récupérer un package prêt à l'emploi pour Elasticsearch, mais vous pouvez déjà le télécharger [ici](https://github.com/downloads/elasticsearchfr/hands-on/elasticsearch-0.19.9-handson.zip "elasticsearch-0.19.9-handson.zip").

[![David Pilato et Malloum Laya](/assets/2012/09/2012-09-12-les-mains-dans-le-code-avec-elastic-search/team-300x251.png "David Pilato et Malloum Laya")](http://www.duchess-france.org/wp-content/uploads/2012/09/team.png)

## Les intervenants

**David Pilato** est développeur senior, chef de projet et futur directeur technique chez [IDEO Technologies](http://www.ideotechnologies.com/ "Ideo Technologies"), avec un intérêt tout particulier pour le monde NoSQL et en particulier le moteur de recherche Elasticsearch, dont il anime la communauté française. Fidèle du Paris JUG, il a donné une conférence sur le sujet lors de la première édition de Devoxx France en avril 2012.

Il a implémenté un certain nombre de plugins pour l'écosystème Elasticsearch (Rivers RSS, FileSystem et DropBox, Factories Spring) et il a également implémenté Elasticsearch pour plusieurs projets, dont une importante administration française.

Vous pouvez le suivre sur Twitter : [@dadoonet](http://twitter.com/dadoonet "@dadoonet") et [@ElasticsearchFR](http://twitter.com/ElasticsearchFR "@ElasticSearchFr") mais aussi sur [Github](https://github.com/dadoonet "Github - Dadoonet").

**Malloum Laya** est architecte, chef de projet et développeur senior avec un intérêt pour l'écosystème NoSQL (BigCouch, CouchDB, CouchBase and MongoDB). Pour une administration française, il gère un projet manipulant plus de 100 millions de documents, répondant ainsi au besoin croissant en terme de gestion "Big Data".

Vous pouvez le suivre sur Twitter : [@TheMalloum](http://twitter.com/TheMalloum "@TheMalloum") et sur [Github](https://github.com/TheMalloum "GitHub - The Malloum").

David et Malloum ont également créé cet été le projet open-source [ScrutMyDocs](http://www.scrutmydocs.org/ "ScrutMyDocs") basé sur Elasticsearch qui permet de disposer d'un moteur de recherche "à la google" des documents de vos disques durs.

## La soirée

La soirée aura lieu **mercredi 19 septembre** à partir de **19h30** chez [Xebia](http://www.xebia.fr/ "Xebia"), que nous remercions pour son accueil et pour le buffet qui nous permettra de reprendre des forces durant la soirée ;)

![Xebia](/assets/2012/09/2012-09-12-les-mains-dans-le-code-avec-elastic-search/xebia.png "Xebia")

**Le nombre de place est limité, alors n'oubliez pas de vous inscrire dès à présent sur **[Eventbrite](http://lamarmite-elasticsearch.eventbrite.com/ "Elasticsearch DuchessFr").****
