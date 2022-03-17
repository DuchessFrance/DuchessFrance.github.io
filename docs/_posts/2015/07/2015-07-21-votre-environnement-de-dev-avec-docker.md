---
layout: "post"
author: 
  - "erialc_w"
title: "Votre environnement de dev avec Docker"
date: "2015-07-21"
categories: 
  - "developper"
  - "tech"
  - "tutoriel"
---

| [![logo](/assets/2015/07/2015-07-21-votre-environnement-de-dev-avec-docker/logo.png)](http://www.duchess-france.org/wp-content/uploads/2015/06/logo.png) |

 

Bien qu'étant encore un outil jeune, **[Docker](https://www.docker.com/)** s'impose comme une petite révolution chez les dev et les ops ! Cet outil, véritablement pensé pour l'utilisateur, offre une modularité unique. Grâce à Duchess France, j'ai pu animer un atelier qui consiste à déployer tout un environnement de développement Java, dans des conteneurs Docker ! La stack proposée utilise **Java 8, Tomcat 8, Maven 3.3.3, Mysql 5.7 et Eclipse Luna JEE**.

Si ce cas d'usage vous intéresse, le code et la documentation sont disponibles sur ce [répertoire github](https://github.com/cwahl-Treeptik/jdev-env-java).  Je vous invite évidemment à y contribuer pour ajouter les servlets, IDE ou bases de données que vous préférez.

## Docker en quelques mots

Docker offre un format standard pour packager toutes vos applications : le **conteneur**. Chaque service, dans la mesure du possible, embarque toutes ses dépendances dans son conteneur. Grâce à leur légèreté, on multiplie ainsi les conteneurs et les problèmes de conflits entre applications sont automatiquement résolus ! On construit donc des **micro-services**. En plus, le conteneur fournit une **isolation** au niveau des espace de noms (namespaces) et de l'interface réseau : par défaut, à chaque conteneur son interface réseau ! Rien ne vous empêche donc de lancer plusieurs conteneurs Apache, alors que chacun écoute sur le port 80 sur sa propre interface réseau.

Tout conteneur est basé sur une **image** Docker. Elle contient toute la partie logicielle chargée par le conteneur. Vous en trouverez une multitude sur le [Docker Hub](https://registry.hub.docker.com/), aussi bien officielles que fournies par la communauté. Parce que l'on construit des micro-services, les applications deviennent rapidement multi-conteneurs. Grâce à l'outil **[Compose](https://docs.docker.com/compose/)**, une telle application est définie dans un unique fichier et une seule commande suffit à la démarrer. La création d'une application avec Compose se déroule en trois étapes:

1. écrire un `Dockerfile` pour chaque image que l'on veut construire soi-même,
2. définir les composants de votre application dans un fichier `docker-compose.yml` afin qu'ils puissent interagir comme désiré,
3. finalement, exécuter `docker-compose up` pour démarrer l'ensemble de l'application.

 

## **Architecture**

[![](/assets/2015/07/2015-07-21-votre-environnement-de-dev-avec-docker/javadev.png)](http://www.duchess-france.org/wp-content/uploads/2015/07/javadev.png)

 

 

 

 

 

 

* * *

 

On classe les conteneurs selon trois groupes:

- les binaires, qui exposent des binaires dans un volume. Ce volume est utilisé par le conteneur Eclipse pour lancer Tomcat, Java ou Maven.
- les data, où sont enregistrées les données utiles à Eclipse (configuration, projets Maven importés, etc) et MySQL. Ces conteneurs n'ont vocation à être supprimés que lorsque l'on désire réinitialiser son environnement de développement.
- les process sont les uniques conteneurs avec le `Status Up`. Ces conteneurs contiennent les processus utiles à notre stack.

 

Le but de ce découpage est de proposer 2 fonctionnalités:

- changer la version d'un composant de la stack très facilement (se référer à la [doc](https://github.com/cwahl-Treeptik/jdev-env-java/#a-java-development-environment-with-eclipse-as-an-ide-in-a-few-docker-containers-), paragraphe "Cutomization")
- persévérer les  données, même après un tel changement. Vous pouvez par exemple choisir de plutôt utiliser Java 7 et Tomcat 7 et retrouver vos données.

 

### Changer de version

[![2000px-Tomcat-logo.svg](/assets/2015/07/2015-07-21-votre-environnement-de-dev-avec-docker/2000px-Tomcat-logo.svg_-300x200.png)](http://www.duchess-france.org/wp-content/uploads/2015/07/2000px-Tomcat-logo.svg_.png)

Les **conteneurs binaires** contiennent un ou plusieurs répertoires de binaires, dans lesquels Eclipse va piocher pour faire tourner Tomcat ou Maven par exemple. Trois conteneurs binaires sont créés. Multiplier ainsi les conteneurs permet de **changer très facilement de version** : il suffit de modifier le conteneur pour y télécharger la version appropriée. Les autres conteneurs ne seront pas impactés et vous pourrez retrouver vos données.

### Persistance des données

[![mysql-logo-png](/assets/2015/07/2015-07-21-votre-environnement-de-dev-avec-docker/mysql-logo-png-300x225.png)](http://www.duchess-france.org/wp-content/uploads/2015/07/mysql-logo-png.png) De même, les **conteneurs data** servent à enregistrer et restituer des données. Ces conteneurs -binaires et data- s'arrêtent dès leur lancement avec le `Status Exit(0)`. Pourtant, certains répertoires de leur file system restent accessibles aux autres conteneurs, grâce à la notion de [volumes](https://docs.docker.com/userguide/dockervolumes/#creating-and-mounting-a-data-volume-container).

Lorsqu'un conteneur est exclusivement destiné à exposer des volumes destinés aux autres conteneurs, on parle de conteneur data. L'intérêt est de **persister les données dans ces conteneurs data**, alors que les autres conteneurs peuvent être modifiés ou supprimés.

## En pratique

# [![eclipse-800x188](/assets/2015/07/2015-07-21-votre-environnement-de-dev-avec-docker/eclipse-800x188-300x71.png)](http://www.duchess-france.org/wp-content/uploads/2015/07/eclipse-800x188.png)

Pour déployer vos projets Maven, il ne vous reste plus qu'à les copier dans le répertoire `eclipse-data/maven-projects`. Le conteneur Eclipse y aura alors accès et il ne restera plus qu'à ajouter le projet à votre servlet. À tout moment, la base de données est accessible depuis le conteneur Eclipse via l'alias mysql généré par le lien entre les conteneurs mysql et eclipse.

Ce lien, ainsi que le volume vers le répertoire `eclipse-data/maven-projects` depuis le conteneur eclipsedata, apparaissent clairement dans le fichier `docker-compose.yml`:

https://gist.github.com/cwahl-Treeptik/2a3c0234796060a58363

À tout moment pour lancer votre environnement de développement un simple `docker-compose up` suffit. Si vous souhaitez adapter les conteneurs, modifier les `Dockerfile` à votre guise avant d'exécuter `docker-compose -f docker-compose-build.yml up`.

Pour utiliser cette stack sur des systèmes autres que Linux, il faut plutôt exécuter `docker-compose -f docker-compose-otheros.yml up` ou `docker-compose -f docker-compose-otheros-build.yml up`. Un client vnc doit ensuite être lancé sur le port 5900 de la machine hôte. (Se référer à la documentation sur github.)

## Pour finir

J'espère que ce cas d'usage vous aura convaincu que Docker nous apporte aussi beaucoup de bénéfices au quotidien. La légèreté des conteneurs autorise à les multiplier pour une très grande flexibilité!
