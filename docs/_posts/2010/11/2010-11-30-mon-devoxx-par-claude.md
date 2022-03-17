---
layout: "post"
author: 
  - "cfalguiere"
title: "Mon Devoxx par Claude"
date: "2010-11-30"
categories: 
  - "les-conferences"
tags: 
  - "devops"
  - "devoxx"
  - "hadoop"
  - "mahout"
---

| Après un article commun pour éviter des redites sur les Wouah ! et les sessions auxquelles on a toutes assisté, un point de vue plus personnel. |

Devoxx 2010, 5 jours hors du temps avec un programme très chargé et beaucoup de discussions que l’on mettra du temps à vraiment intégrer. Voici donc une première synthèse des choses que j’ai retenues une fois passées au crible de mon filtre personnel.

C’est une conférence **Java**, donc il fallait des annonces officielles d’Oracle. Peu de surprises sur Java EE 6 déjà présenté plusieurs fois. Peu de surprise sur Java SE 7. Les fonctions les plus attendues comme le projet [Lambda](http://openjdk.java.net/projects/lambda/) (langage fonctionnel) ou le projet [Jigsaw](http://openjdk.java.net/projects/jigsaw/) (modularité et gestion des dépendances) sont reportés à Java SE 8. Un discours rassurant d’Oracle. La vie reprend son cours. Les brouilles avec Apache trouvent une solution.  Pas de révolution mais un souci de simplification.

Dans le thème **NoSql**, beaucoup de produits avaient fait le déplacement (HBase, Cassandra, MongoDB, Infinitest). Des **retours d’expérience** aussi des grands sites qui en sont à l’origine ou les utilisent. J’ai déjà pas mal vu de présentations de produits dans le User Group NoSql et lors de la soirée NoSql du JUG. Les présentations que j’ai retenues sont sur des aspects plus fondamentaux.

[![elephant_hadoop](/assets/2010/11/2010-11-30-mon-devoxx-par-claude/elephant_hadoop.jpeg "elephant_hadoop")](http://jduchess.org/duchess-france/files/2010/11/elephant_hadoop.jpeg)Tout d’abord [Hadoop Fundamentals](http://www.devoxx.com/display/Devoxx2K10/Hadoop+Fundamentals++HDFS,+MapReduce,+Pig,+and+Hive). La première que j’ai vu donc j’avais encore l’esprit assez clair. Le speaker n’était pas très bon, mais **Hadoop** c’est une plongée dans un monde à part quand on est habitué à Java EE. Un lien avec Java ? Et bien oui, HDFS et Hadoop sont **écrits en Java**.

Hadoop c’est tout d’abord [HDFS](http://hadoop.apache.org/hdfs/), un **File System distribué**. Comment faire un immense espace de stockage sur un cluster d’espaces de stockage limités. Tout le propos d’Hadoop est de gérer des **volumes éléphantesques** : les stocker, retrouver les informations, transformer ces informations. [Hadoop](http://) c’est ensuite un ensemble de modules pour réaliser efficacement des traitements sur de très gros volumes de données distribuées. Compte tenu des volumes, le point le plus important est d’**éviter autant que possible de déplacer des données**. L’idée est d’utiliser un procédé que les langages fonctionnels ont beaucoup mis en avant : le **MapReduce**. Pour manipuler l’ensemble de données, on va écrire deux fonctions :

- une fonction qui réalise l’opération de **Map** et sera appliquée aux données localement. Elle applique des transformations ou des filtres isolément sur chaque enregistrement traité et renvoie une autre valeur en 1 pour 1.
- une fonction qui réalise le **Reduce** sur le résultat des fonctions Map de chaque noeud de données. Cette opération agrège les résultats provenant des différents flux et réalise en général un comptage, un calcul statistique ou une classification.

Hadoop est aussi à la base de plusieurs bases de données NoSql comme [HBase](http://hbase.apache.org/) et [Cassandra](http://cassandra.apache.org/). Il y assure la couche de stockage. D’autres projets, liés à la manipulation de données à la **SQL** voient également le jour comme [Hive](http://wiki.apache.org/hadoop/Hive) et [Pig](http://pig.apache.org/) qui ont été présentés également lors de cette session.

[![elephant_mahout](/assets/2010/11/2010-11-30-mon-devoxx-par-claude/mantle-mahout.png "elephant_mahout")](http://mahout.apache.org/images/mantle-mahout.png) Une autre session [Intelligent Data Analysis – Apache Mahout](http://www.devoxx.com/display/Devoxx2K10/Intelligent+data+analysis+-+Apache+Mahout) a permis d’avoir un exemple d’application de Hadoop. [Mahout](http://mahout.apache.org/) est un outil d’**apprentissage automatique** et d’**analyse de données**. C’est le type d’outil qui est utilisé pour faire de la catégorisation de textes dans les moteurs de recherche par exemple ou pour les systèmes de recommandation des sites sociaux ou de commerce.

A noter ce projet Apache est **co-dirigé par une femme**, [Isabel Drost](https://cwiki.apache.org/confluence/display/MAHOUT/Who+We+Are).  Ainsi Devoxx a compté 2 speakers femme cette année, Isabel Drost pour Mahout et Linda DeMichiel pour Hibernate/JPA. Une présentation agréable, mais très difficile pour les gens qui n’ont pas de background statistique. J’y reviendrai plus en détail un de ces jours.

[![ehcache](/assets/2010/11/2010-11-30-mon-devoxx-par-claude/ehcache_logo.gif "ehcache")](http://ehcache.org/images/ehcache_logo.gif) Une autre présentation intéressante [The essence of caching](http://www.devoxx.com/display/Devoxx2K10/The+essence+of+Caching) sur un thème voisin de NoSql. Des constats sur nos problèmes de **performance** et des explications sur le fonctionnement du **cache distribué** [Ehcache](http://ehcache.org/). Ehcache est un projet OpenSource que l’on retrouve en [cache de second niveau](http://www.javalobby.org/java/forums/t48846.html) dans Hibernate par exemple; C’est aussi une distribution commerciale Enterprise Ehcache réalisée par Terracotta.

Le speaker insiste sur l’importance de nos jours de pouvoir monter en puissance (scalabilité) plutôt que d’avoir des performances pures, car la charge varie beaucoup dans la journée (la courbe de l’éléphant, et oui on aime beaucoup les éléphants à Devoxx ![;-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) ) et au cours du temps. Le cache **n’est pas la solution universelle**. Il importe de savoir d’abord où se trouve le goulet d’étranglement et le cache est une solution possible pour masquer une opération nécessairement longue et qui sera répétée (rendering, recherche ou manipulation de données).

Le cache **a des inconvénients** de consommation de **mémoire** et de **cohérence** avec les données persistantes (le SOR, system of Record). Autre problème lié aux **fréquences d’accès de chaque donnée**. L’accès aux données de référence suit généralement une [distribution de Pareto](http://en.wikipedia.org/wiki/Pareto_distribution) et certaines données de référence (les codes des grands pays par exemple) sont  utiles en cache alors que d’autres ne sont quasiment jamais redemandées. Le cache ne sert à rien si le taux de hit dans le cache est faible.

Pour ces raisons il faut souvent gérer plusieurs niveaux de cache plus ou moins efficaces, les plus rapide étant les plus limités en taille et vice versa. La **localité**, c’est à dire la proximité des données avec le programme qui les utilise joue aussi un grand rôle et les caches distribués sont utiles en permettant des disposer des données au plus près de l’endroit où elles seront utilisées.

[![android](/assets/2010/11/2010-11-30-mon-devoxx-par-claude/android.jpg "android")](http://jduchess.org/duchess-france/files/2010/11/android.jpg)Bien sûr de l’**Android** cette année. Une très belle présentation de Romain Guy et Chet Haas [Dive into Android](http://www.devoxx.com/display/Devoxx2K10/Dive+into+Android).

De temps en temps, Devoxx c’est un peu comme chez le glacier. Trop de parfums et on ne sait plus choisir entre ceux qu’on aime bien et les inconnus qui ont l’air bien tentants aussi. Ce jour là j’hésitais entre 3 salles et je n’avais pas de critère bien défini à ce moment là. Après avoir vu des tas de présentations de niveau bien inégal, j’ai adopté le critère des vieux routards de Devoxx : il vaut mieux une présentation d’un bon speaker sur un sujet auquel on s’intéresse moyennement, qu’une mauvaise présentation sur un sujet auquel on s’intéresse … parce qu’on arrive pas au bout. Au pire dans le premier cas on aura passé un bon moment.

En l’occurrence je suis rentrée avec une vague connaissance du développement Android et la ferme certitude que développer des IHM ne m’intéresse pas, et après 3h à voir développer des superbes IHM Android j’en suis ressorti en cherchant une idée pour faire une application Android. C’est ça une présentation réussie. Une présentation qui donne envie d’aller plus loin, d’explorer le produit, qui nous a fait toucher du doigt l’environnement de développement et fait croire qu’on pouvait nous aussi faire une application Android en moins d’une heure, et nous fait rêver à chercher des idées d’applications.

Il y a eu quelques présentation très réussies, mais peu finalement. Beaucoup de speakers veulent faire passer **trop de messages** et on ressort sans arriver à faire le point. Beaucoup veulent nous donner **trop de détails**, nous passent en revue toute l’API slide après slide, verbe après verbe.  A l’heure d’Internet, on peut trouver ces informations en quelques clics, lorsque l’on en aura besoin et on pourra les lire confortablement sur son écran. Ce qui importe est de savoir que ça existe, à quoi ça sert, comment on démarre si on n’a jamais utilisé l’outil et les principes de fonctionnement. Lorsque l’on est intéressé pouvoir poser des questions aussi, ce qui est quand même la différence essentielle avec la lecture d’un article sur Internet. Alors le reste du temps, on s’accroche parce que le contenu est là et qu’on s’intéresse au sujet. Mais c’est un peu pénible.

Bon et la présentation Dive into Android ? On a appris à faire un layout custom avec du code en live, les explications sur les  layouts et l’utilisation des contrôles graphique ont été distillées au fur et à mesure, on a appris à faire un reflet en illustration de quelques fonctions de dessin. Un ping pong sympa entre les speakers, du code en live, un bon moment et des leçons retenues.

[![android](/assets/2010/11/2010-11-30-mon-devoxx-par-claude/Devops.png "android")](http://upload.wikimedia.org/wikipedia/commons/4/4e/Devops.png)

Pour finir une **mention spéciale** pour [From Dev/Ops to DevOps. Amazing the difference one character can make](http://www.devoxx.com/display/Devoxx2K10/From+Dev+Ops+to+DevOps.+Amazing+the+difference+one+character+can+make.).

[DevOps](http://en.wikipedia.org/wiki/DevOps) est un mouvement émergeant qui vise à rapprocher les équipes de développement et les opérations (la production en français) pour mieux résoudre les problèmes de déploiement et de suivi de production. Le sujet avait aussi été abordé au CITCON en relation avec le Continuous Deployment (aussi présent à Devoxx mais on doit faire des choix vu le nombre de sujets et je ne l’ai pas vue). Une présentation à base de vampires et loup-garous assez amusante pour faire passer l’idée.

La communauté DevOps s’organise en France. Une première réunion a eu lieu à Lille la semaine dernière. La première réunion [DevOps Paris](http://lanyrd.com/2010/first-devops-meetup-paris/swxc/) aura lieu mercredi 1er décembre. Si cette initiative vous intéresse vous pouvez rejoindre le groupe [devopsfr](http://groups.google.com/group/devopsfr) ou consulter [devops.fr](http://devops.fr/) (site très minimaliste pour le moment). On en reparlera !

Voilà, mon tour d’horizon. J’ai vu des tas d’autres choses en 5 jours et que je ceux que n’ai pas cité me pardonnent ![;-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)
