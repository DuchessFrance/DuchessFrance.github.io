---
layout: "post"
author: 
  - "Duchess France"
title: "Hands-On : Streaming Data le 2 Novembre"
date: "2017-10-31"
categories: 
  - "developper"
  - "duchess-agit"
  - "les-communautes"
  - "les-conferences"
  - "les-mains-dans-le-code"
coverImage: "streamingData.jpg"
---

| Première soirée de la rentrée, ce jeudi 2 novembre, nous aurons l'occasion d'organiser un [meetup](https://www.meetup.com/fr-FR/Duchess-France-Meetup/events/244304551/) autour du sujet "Streaming Data". Pour en savoir plus sur le thème, voici un [livre intéressant](https://www.manning.com/books/streaming-data) publié sur Manning. |

### Description de la soirée

Travailler avec des données en temps réel, en memoire et en streaming c'est un véritable challenge, qui ne cesse de gagner en importance suite à l'augmentation du nombre d'objets connectés et de smartphones. Pour développer des applications et des services robustes et scalables, il faut apprendre à implémenter des architectures temps réel pour des flux de données, où ces dernières voyagent en permanence, tout cela combiné avec l'analyse et la recherche instantanée.

Dans ce lab d'environ deux heures, nous explorerons les moyens d'implémenter une architecture de ce type en utilisant des frameworks reactives et opensource.

Une architecture de streaming de données est composée des couches suivantes :

- Récupération des données
- Transport
- Analyse (ne sera couvert dans le workshop que de manière théorique - on ne peut pas tout faire en 2h !)
- Couche des données en memoire
- Couche des données persistées (optionnel)
- Client

Pendant ce lab, nous développerons une architecture scalable et temps réel capable d'analyser les données des positions des trains issues du réseau ferré Suisse.

Les technologies utilisées pour ce mise en place : Java 8, [Infinispan](http://infinispan.org/Infinispan), [Vert.x](http://vertx.io/), [OpenShift](https://www.openshift.com/).

### Vert.x

[Eclipse Vert.x](http://vertx.io/) est un framework événementiel non bloquant pour la JVM s'inspirant librement de Node.js. Il est publié en open source sous licences Apache Software Licence 2.0 et Eclipse Public Licence. Vert.x est un framework qui permet d'être utilisé avec de multiples frameworks, il n'impose pas l'utilisation d'un framework particulier pour développer vos applications et vos micro-services. Il peut être utilisé pour créer des serveurs web très performants mais également comme une bibliothèque au sein d'une autre application Java.

Pour en savoir plus, vous pouvez participer à un [meetup sur Paris](https://www.meetup.com/fr-FR/Paris-vert-x-Meetup/).

[![](/assets/2017/10/2017-10-31-hands-on-streaming-data-2-novembre/Vert.x_Logo.svg_-300x131.png)](http://vertx.io/)

### Infinispan

Infinispan est un système de stockage distribué de données en mémoire, principalement sous forme de clef/valeur. Il est publié en open source sous license Apache Software Licence 2.0. Infinispan ...

- Est disponible en tant que librairie pour être utilisé en mode embarqué au sein des vos applications
- Peut être utilisé en mode client/serveur pour accéder aux données en mode remote via de multiples protocoles (HotRod, REST, Memcached, WebSockets)
- Est également utilisé en tant que cache ou [datagrid](https://en.wikipedia.org/wiki/Data_grid)
- Propose des fonctionnalités avancées telles que des transactions, des événements, des compteurs, de la recherche, l'exécution distribuée et supporte le failover off-heap et géographique
- Est surveillé via JMX, la ligne de commande et une console web adaptée
- S'intègre avec JPA, JCache, Spring et Spark entre autres
- Peut être déployé en production sur Openshift, AWS, Azure et Google Cloud

 

[![](/assets/2017/10/2017-10-31-hands-on-streaming-data-2-novembre/infinispan9_pixelsizes_600-300x73.gif)](http://infinispan.org/)

### Openshit

Openshift est la plateforme d'orchestration des conteneurs qui est développée par RedHat. Elle est basée sur [Kubernetes](https://kubernetes.io/) et peut être utilisée dans son format "on-line" avec des serveurs dédiés et en l'installant la plateforme sur vos serveurs privés. Dans le workshop, on utilisera la plateforme en local, ce qui vous donnera un aperçu de son utilisation en production.

 

[![](/assets/2017/10/2017-10-31-hands-on-streaming-data-2-novembre/openshift-300x77.png)](https://www.openshift.com/)

### A propos des animateurs

[![galder zamarreño](/assets/2017/10/2017-10-31-hands-on-streaming-data-2-novembre/galder-150x150.jpg)](/assets/2017/10/2017-10-31-hands-on-streaming-data-2-novembre/galder-150x150.jpg)

Galder est un des co-créateurs d'[Infinispan](http://infinispan.org/Infinispan) (Caché Distribué et In-Memory Datagrid de RedHat). Au sein de l'équipe, il est responsable de l'architecture client/serveur et il a développé le client Node.js pour Infinispan. Galder est un orateur réputé et invité à des nombreuses conférences dans les 4 coins du monde depuis quelques années. Passionné des nouvelles technologies, il est particulièrement intéressé à la programmation fonctionnelle, et il code aussi en Scala et Haskell. Suivez-le sur [GitHub](https://github.com/galderz) et [@galderz](https://twitter.com/galderz).

[![katia_aresti](/assets/2017/10/2017-10-31-hands-on-streaming-data-2-novembre/katia_aresti.png)](http://www.duchess-france.org/wp-content/uploads/2015/04/katia_aresti.png)

Katia Aresti est développeuse java/scala [open-source](https://github.com/karesti) dans l'équipe [Infinispan](http://infinispan.org/) chez RedHat. Elle co-organise aussi le [MongoDB User Group](http://www.meetup.com/fr/Paris-MongoDB-User-Group/) à Paris depuis 2012. Elle intervient sur les sujets autour de Java, Infinispan, Agilité, Carrière et MongoDB sous la forme de présentations formelles, open-spaces ou workshops. Elle est passionnée par l'open-source, la contribution communautaire et le théâtre. Suivez-là sur [GitHub](https://twitter.com/karesti) et [@karesti](https://twitter.com/karesti).

> [Inscriptions ici](https://www.meetup.com/fr-FR/Duchess-France-Meetup/events/244304551/)
