---
layout: "post"
author: 
  - "Blandine"
title: "EclEmma et Hibernate Tools"
date: "2010-10-05"
categories: 
  - "developper"
tags: 
  - "eclipse"
  - "hibernate"
---

| J’ai découvert récemment deux plugins Eclipse assez pratiques : |

- [**EclEmma**](http://www.eclemma.org/ "EclEmma") : il permet d’avoir instantanément la couverture de code,

- [**Hibernate Tools**](http://www.hibernate.org/subprojects/tools.html "Hibernate Tools") : il offre plusieurs fonctionnalités qui aident à l’écriture des requêtes en _Criteria_ ou _HQL_.

**EclEmma** est un plugin libre pour Eclipse qui se base sur l’outil d’analyse de couverture de code [EMMA](http://emma.sourceforge.net/ "EMMA"). Il intègre les fonctionnalités d’EMMA directement dans le workspace d’Eclipse.  
Ce plugin s’installe en quelques cliques et ne nécessite pas de configuration particulière. De plus, il est non invasif (il ne rajoute pas des fichiers partout).  
Pour l’utiliser, il suffit de lancer les tests unitaires en mode « coverage » (bouton dans Eclipse ![coverage](/assets/2010/10/2010-10-05-eclemma-et-hibernate-tools/coverage.PNG "coverage")). À chaque lancement, une session est créée. Celle-ci peut être sauvegardée et importée plus tard.  
Les résultats de l’analyse sont les suivants :

- une vue d’ensemble de la couverture sous forme d’arborescence du code du projet à la méthode,

- la possibilité d’avoir les résultats par nombre de ligne de code, bloc, méthode, classe …

- une coloration du code (vert : ligne totalement couverte, jaune : ligne partiellement couverte et rouge : ligne non couverte).

EclEmma offre aussi la possibilité d’exporter les résultats sous forme de rapport dans les formats HTML, XML ou TXT.

![Eclipse : EclEmma - vue coverage](/assets/2010/10/2010-10-05-eclemma-et-hibernate-tools/EclEmma.PNG "Eclipse : EclEmma - vue Coverage")

Eclipse : EclEmma - vue Coverage

**Hibernate Tools** est développé par JBoss : c’est une composante de [JBoss Tools](http://jboss.org/tools). Il existe sous forme de plugin pour Eclipse et de tâche pour Ant et fait aussi parti de JBoss Developper Studio.  
Le plugin pour Eclipse contient plusieurs fonctionnalités :

- Mapping Editor : en plus de la coloration et l’auto-complétion que l’on a par défaut dans Eclipse, cet éditeur fournit l’auto-complétion dans les fichiers de configuration Hibernate sur les noms de classes et d’attributs des objets domaines et les noms de tables et de colonnes de la base de données.

- Console : après configuration, cette vue permet de visualiser le mapping entre les objets domaines et la base de données, d’avoir un éditeur de requête en HQL et en Criteria.

- Reverse Engineering : c’est la fonctionnalité la plus puissante d’Hibernate Tools. À partir d’une base de données, il est possible de générer les fichiers de mapping, les objets domaines, la couche DAO, la documentation …

La suite de ce post portera uniquement sur la Console Hibernate. Elle correspond à la perspective « Hibernate » dans Eclipse.  
Après avoir installé le plugin dans Eclipse, il faut configurer la connexion à la base de données, le fichier de configuration Hibernate et le projet où se trouve les objets domaines.  
Attention, si le fichier de configuration Hibernate contient l’élément _class-cache_, on obtient une exception _Hibernate : org.hibernate.HibernateException: Could not instantiate cache implementation_. Pour contourner ce problème, j’ai créé un fichier de configuration Hibernate sans les éléments _class-cache_.  
La Console ne prend pas les changements à la volée, en cas de modification des fichiers de mapping ou des objets domaines, il faut penser à recharger la configuration.  
La perspective console contient quatre vues principales :

- la vue configuration,

- l’éditeur HQL,

- l’éditeur Criteria,

- la vue propriétés.

La vue configuration est composé de trois sous parties : configuration (mapping), session factory (objets domaines) et database (base de données). L’utilisateur peut explorer ces trois parties ; on retrouve les attributs/colonnes, ainsi que les types de données. En sélectionnant un élément de la configuration, il est possible d’éditer la classe Java ou le fichier de mapping correspondant ou d’ouvrir l’éditeur de requête HQL/Criteria contenant la requête de sélection de cet élément.

![Eclipse : perspective Hibernate](/assets/2010/10/2010-10-05-eclemma-et-hibernate-tools/vue_hibernate-1024x766.PNG "Eclipse : perspective Hibernate")

Eclipse : perspective Hibernate

L’éditeur HQL est très pratique pour développer et débugger du _HQL_ :

- saisie des paramètres dans la vue Query Params,

- traduction dynamique de la requête en SQL (Hibernate Dynamique SQL Preview),

- affichage des résultats (Hibernate query Result), ainsi que la possibilité d’explorer les objets dans la vue propriétés.

L’éditeur _Criteria_ offre juste la possibilité d’exécuter les requêtes. Pour les deux éditeurs de requêtes et à chaque édition de requêtes, on obtient le temps d’exécution et le nombre de résultats.

_Merci à David de m’avoir fait découvrir ces deux plugins.  
Merci à Ellène et Victor pour la relecture._
