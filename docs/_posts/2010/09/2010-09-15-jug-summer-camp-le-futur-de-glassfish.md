---
layout: "post"
author: 
  - "cfalguiere"
title: "JUG Summer Camp : le futur de Glassfish"
date: "2010-09-15"
categories: 
  - "les-conferences"
tags: 
  - "glassfish"
  - "jug-summer-camp"
---

| ![](/assets/2010/09/2010-09-15-jug-summer-camp-le-futur-de-glassfish/4983716257_0e695fd81a_m.jpg "aquarium") |

**Le futur de GlassFish** – Alexis Moussine-Pouchkine ([présentation](http://sites.google.com/site/jugsummercamp/presentations))  
_par Claude Falguiere_

L’actualité de [Glassfish](https://glassfish.dev.java.net/), le poisson transparent, c’est la sortie de la version 3.0.1 en juin, suivie par celle de la 3.1 à venir.

Alexis Moussine-Pouchkine nous a présenté les principaux apports de [Java EE 6](http://www.oracle.com/technetwork/articles/javaee/javaee6overview-141808.html), la roadmap de Glassfish pour l’intégration de Java EE 6 et des nouvelles de l’intégration de Glassfish dans le monde Oracle.

[Java EE 6](http://www.oracle.com/technetwork/articles/javaee/javaee6overview-141808.html) sera plus léger, plus simple à utiliser, plus modulaire. Le standard propose maintenant des profils qui permettent d’obtenir une configuration correspondant à ses besoins sans devoir installer toutes les API Java EE. C’est par exemple le Web Profile destiné aux applications Web. Moins de XML aussi, il est nécessaire seulement si la configuration par défaut ne convient pas. L’intégration dans le standard de composants qui nécessitaient l’ajout de frameworks complémentaires va permettre d’alléger les ear et les war des applications car ces fonctions seront fournies par le serveur d’applications. On peut citer ici la prise en charge de REST, de l’injection de dépendances via CDI, de la validation. Un nouveau type de contrat plus simple et général qu’EJB ou Servlet apparaît, le Managed Bean. Il devient la base des autres contrats. Et bien sûr, les API sont mises à jour, en particulier EJB qui en version [3.1](http://jcp.org/en/jsr/detail?id=318) devient beaucoup plus simple à utiliser (voir l’article) avec des interfaces seulement locales et la possibilité de les déployer directement dans le WAR.  JSF 2.0, JPA 2.0, Servlet 3.0 apportent aussi leurs lots de fonctionnalités nouvelles.

Glassfish 3.0 est l implémentation de référence de Java EE 6 depuis décembre 2009. Il a été refondu et s’appuie sur [OSGI](http://fr.wikipedia.org/wiki/OSGi), et plus particulièrement sur [Grizzly](https://grizzly.dev.java.net/) et [HK2](https://hk2.dev.java.net/) qui permet une abstraction et le support des diverses implémentations. Les fonctions d’administration du serveur sont améliorées par l’ajout d’une [API REST](http://blogs.sun.com/aquatic/entry/glassfish_rest_interface) pour accéder aux opérations du serveur d’applications et une amélioration du support de l’[embedded](https://embedded-glassfish.dev.java.net/). Il sera possible de livrer une application qui s’auto-installe. Le monitoring aussi a été amélioré en intégrant [BTrace](http://kenai.com/projects/btrace/pages/Home), un composant de trace des opérations pour la JVM (équivalent à [DTrace](http://fr.wikipedia.org/wiki/DTrace) pour l’OS).

Après quelques interrogations sur la stratégie d’Oracle vis-a-vis de Glassfish, les choix sont maintenant plus clairs. La [roadmap](https://glassfish.dev.java.net/roadmap/) jusqu’à Java EE 7 est publiée. Glassfish reste l’implémentation de référence et le laboratoire, et WebLogic est le produit commercial support des progiciels. GlassFish est aussi un produit stable et utilisé en production par un nombre de plus en plus grand d’entreprises comme le montre la carte présentée en début de session. Glassfish reste disponible en deux éditions, une open source gratuite et maintenue par la communauté, et une version support éditeur sous licence OTN avec des modules complémentaires. Pour le clustering dans Glassfish, il faudra attendre la version 3.1. Cette version apportera aussi des améliorations de la compatiblité avec les autres produits de la gamme Oracle (WebLogic, Coherence)

La session s’est terminée avec une démonstration d’un module de Glassfish développé chez [Serli](http://www.serli.com/) par des contributeurs externes. Il permet de déployer successivement plusieurs versions de l’application sur un même serveur d’applications en donnant un tag. De cette manière, il est possible de revenir en arrière une version donnée. Un module intéressant, même si on regrette un peu qu’il n’y ait qu’une seule version active.
