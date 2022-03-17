---
layout: "post"
author: 
  - "sandrine.cariteau"
title: "Retour sur le Hands On Neo4J"
date: "2014-03-07"
categories: 
  - "les-mains-dans-le-code"
tags: 
  - "neo4j"
---

| **Qu’est-ce que c’est que Neo4J ?** |

Neo4J fait parti des bases de données NoSQL que l'on peut diviser en 4 catégories:

1. les bds se basant sur le couple "clé-valeur" qui ont été définies par le Dynamo d’Amazon. Ces base se traduisent généralement par une collection globale de clé-valeur. Exemple : Riak, Voldemort
2. les bds se basant sur les colonnes : ce sont celles qui ont été définies par Google dans son Big Table. Exemple : Cassandra, Hbase
3. les bds se basant sur les documents. Ces bases se sont inspirées de Lotus Notes. Ce sont des collections de clé-valeur. Exemple : MongoDB, CouchDB.
4. les bds se basant sur les graphes qui sont inspirés de la théorie des graphes et celle d’Euler. Ces bases mettent en œuvre des nœuds et des relations. Exemple : :Neo4j, Flock DB utilisé par Twitter.

Les graphes représentent le meilleur choix pour stocker des gros volumes de données complexes et très connectées et vu le nombre de solutions hétéroclites qui apparaissent sur le marché, des entreprises comme BluePrints qui essaie de mettre en place un langage commun aux bases de données graphes.

Il existe une différence entre une modélisation relationnelle et une modélisation graphe:

Exemple d’une modélisation relationnelle

[![relationnel](/assets/2014/03/2014-03-07-retour-sur-le-hands-on-neo4j/relationnel-300x107.png)](http://www.duchess-france.org/wp-content/uploads/2014/03/relationnel.png)

Ce qui se traduit en graphe comme suit. [![graph](/assets/2014/03/2014-03-07-retour-sur-le-hands-on-neo4j/graph-300x107.png)](http://www.duchess-france.org/wp-content/uploads/2014/03/graph.png)

Ainsi, la table person-group qui n’a aucune valeur fonctionnelle est remplacée par une simple relation entre le nœud personne et un nœud group.

Le graphe Neo4J a une architecture basée sur 2 couches: le Traversal Framework qui défini comment je traverse le graphe et le Graph Matching qui défini  ce qui m’intéresse. La direction des nœuds se définie par le requêtage.

Neo4j utilise Cypher pour requêter la base. On peut requêter le graphe de 2 manières: BFS qui signifie breath for search et permet de faire de la recherche en largeur, et DFS qui signifie depth for search et permet de faire de la recherche en profondeur.

Vous pouvez retrouver la présentation de neo4j de Florent et Olivier ici: [http://www.lateral-thoughts.com/DevInLove/prez/#begin](http://www.lateral-thoughts.com/DevInLove/prez/#begin "Prez Neo4Jde latheral thought")

L'atelier réalisé lors du Hands On consistait à implémenter un concurrent à GIT : BIRGITT. Le code source utilisé lors de l'atelier se trouve sur Githup : [https://github.com/LateralThoughts/hands-on-neo4j.git](https://github.com/LateralThoughts/hands-on-neo4j.git).

Pour chaque exercice, il faut faire un chekout –f nomExercice afin de repartir d’un support adapté. Les exercices sont définis sous un format de développement TDD. Donc, chaque exercice consiste à faire passer les TU définis avec TestNg. Chaque exercice aborde un point de Neo4j. Ainsi, Le premier exercice consiste à créer un nœud (projet) Birggit avec des labels et à s’assurer qu’on le retrouve bien.

Merci encore à Florent Biville et Olivier Girardot pour leur présentation de Neo4J.
