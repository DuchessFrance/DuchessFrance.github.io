---
layout: "post"
author: 
  - "acrepet"
title: "Soirée Messaging au Lyon JUG – Rencontre avec Arnaud Simon de Red Hat"
date: "2011-01-13"
categories: 
  - "les-conferences"
tags: 
  - "amqp"
  - "lyon-jug"
  - "qpid"
---

| Mardi prochain, le 18 janvier, le [Lyon JUG](http://www.lyonjug.org) propose une soirée autour de la thématique de **Messaging**. Pour vous donner envie de vous rendre à cette soirée, voici l’interview d’**Arnaud Simon**, _Senior Solution Architect_ pour la division **Red Hat middleware**. Arnaud travaille sur les solutions de Messaging et ESB et contribue également à l’écriture des spécifications [AMQP](http://www.amqp.org/) (Advanced Message Queuing Protocol) et au projet [Apache Qpid](http://qpid.apache.org/), une implémentation AMQP.   |
Lors de cette même soirée, **[Jeff Mesnil](http://jmesnil.net/weblog/)** viendra également nous parler d’**[HornetQ](http://www.jboss.org/hornetq)**, la nouvelle implémentation de messaging de JBoss ([voir l’interview de Jeff également sur le site des JDuchess](http://jduchess.org/duchess-france/blog/soiree-messaging-au-lyon-jug-rencontre-avec-jeff-mesnil-sur-hornetq/)).

[![QPID](/assets/2011/01/2011-01-13-soiree-messaging-au-lyon-jug-rencontre-avec-arnaud-simon-de-red-hat/qpid-logo.png)](http://qpid.apache.org/)

**Agnès** : _Une des caractéristiques d’AMPQ est qu’il se définit apparemment comme un protocole “wire-level”, permettant de standardiser les échanges entre serveurs de messages. Comment pourrais-tu le définir, notamment en quoi se distingue t’il d’autres tentatives de standardisation comme l’API JMS ou, au niveau protocole, de CORBA/IIOP? Dans mes vieux souvenirs un peu poussiéreux, les tentatives de standardisation qui me semblent les plus proches d’AMQP sont les spécifications émanant de l’OMG : [Notification Service](http://www.omg.org/spec/NOT/) basée sur CORBA et étendant la spécification antérieure [Event Service](http://www.omg.org/spec/EVNT/)._  
**Arnaud** : AMQP définit non seulement le protocole réseau mais aussi les sémantiques d’échange des messages ce qui permet une interopérabilité et une portabilité totale des applications. L’API JMS définit uniquement les sémantiques d’échange des messages et ne garantit donc que la portabilité des applications clientes Java d’un fournisseur à un autre. Les communications inter-fournisseurs nécessitent l’utilisation de ponts “bridges” assurant la transformation des messages d’un format à un autre. Toutes ces contraintes vont disparaître avec AMQP qui permet d’échanger des messages entre applications Java, C++, python, etc. et ceci indépendamment du fournisseur. AMQP offre donc une réelle indépendance de choix tant au niveau de la plate-forme que du fournisseur. AMQP n’a pas pour vocation première de fournir une API, même si le groupe de travail en discute, mais a été pensé afin de facilement supporter JMS. La version 1.0 d’AMQP a pour vocation de devenir un standard.

**Agnès** : _Qui “se cache” derrière AMQP? Comment le protocole évolue? Tout le monde peut-il apporter sa contribution?_  
**Arnaud** : AMQP a été créé il y a maintenant plus de quatre ans sous l’impulsion de JPMorgan et Red Hat. De nombreuses sociétés du monde des finances ont rapidement rejoint le groupe de travail. C’est par exemple le cas de Credit Suisse et Bank of America. Des constructeurs et éditeurs contribuent aussi au développement des spécifications et à leur implémentation. C’est évidemment le cas de Red Hat mais aussi de Microsoft Corporation, Cisco Systems, Novell, Progress Software et plus récemment VMware et Software AG. Il est très facile de rejoindre le groupe de travail. Il suffit pour cela de faire part de son intention et évidemment de prendre part aux réunions hebdomadaires.

**Agnès** : _Quels sont les cas d’utilisation standards que couvre AMPQ?_  
**Arnaud** : AMQP couvre tous les paradigmes de messagerie tels : point à point, publication/souscription, transactions distribuées, routage des messages basé sur le contenu, transfert de fichiers volumineux, sécurité, etc. Le protocole réseau a été pensé pour pouvoir atteindre des performances optimales sur les hardwares modernes. Son utilisation est donc des plus larges même si le secteur des finances reste privilégié par son besoin de performance élevé. Le monde du SOA et plus particulièrement les ESB basés sur AMQP gagnent aussi en interopérabilité et en flexibilité.

**Agnès** : _Il existe plusieurs implémentations d’AMQP comme par exemple RabbitMQ, OpenAMQP et Apache Qpid. Sans rentrer dans une comparaison exhaustive, qu’est-ce qui distingue ces différentes implémentations?_  
**Arnaud** : Je resterai bref et certainement partial. OpenAMQP est un projet qui semble mort. Les membres d’OpenAMQP n’ont pas modifié le projet depuis longtemps maintenant et ont de surcroit quitté le groupe de travail. RabbitMQ est maintenant sous le contrôle de VMware et implémente AMQP 0.9.1. Apache Qpid implémente AMQP 0.10 et AMQP 1.0 est en cours d’implémentation. Qpid offre un grand nombre de clients, un serveur C++ pour linux mais aussi pour Windows ainsi qu’un serveur Java. Les fonctionnalités sont très riches et sont source d’inspiration pour AMQP.

**Agnès** : _Tu travailles chez Redhat, et notamment sur Apache Qpid. Peux-tu nous présenter brièvement la solution Red Hat Enterprise MRG, qui s’appuie justement sur Apache Qpid?_  
**Arnaud** : Red Hat Enterprise MRG intègre un serveur de messagerie « M », un noyau linux temps réel « R » et des technologies de grille informatique, « G ». MRG-M s’appuie sur Apache Qpid et intègre le serveur C++ spécifiquement optimisé pour Linux ainsi qu’un grand nombre de clients : Java JMS, C, C++, .net, python, etc. MRG-M est considéré chez Red Hat comme la colonne vertébrale pour une informatique distribuée haute performance, les déploiements SOA et les systèmes de cloud. MRG-M offre des performances jusqu’à 100 fois supérieures aux solutions du marché et grâce à AMQP, une interopérabilité sans précédent.

### **Merci Arnaud!**

Merci à Anne-Laure Rigaudon pour son aide précieuse sur la relecture de cet interview.

**Les inscriptions sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/messaging)**
