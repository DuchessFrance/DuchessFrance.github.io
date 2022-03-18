---
layout: "post"
author: 
  - "edijoux"
title: "JUG Summer Camp &#8211; Google App Engine"
date: "2010-09-16"
categories: 
  - "les-conferences"
tags: 
  - "gae"
  - "jug-summer-camp"
---

| ![](/assets/2010/09/2010-09-16-jug-summer-camp-google-app-engine/4984312120_746493c795_o.jpg "aquarium")   |
**Google App Engine** – Christophe Jollivet ([présentation](http://sites.google.com/site/jugsummercamp/presentations))  
_par Ellène Dijoux_

Christophe nous a fait dans sa présentation un retour d’expérience sur Google App Engine. Bien plus qu’une présentation de ses fonctionnalités, il nous a montré les petits cailloux qu’il a pu trouver sous la serviette et qui rendent l’utilisation de Google App Engine pas très confortable. Une présentation très pragmatique qui nous montre les problèmes auxquels nous pourrions être confrontés en adoptant Google App Engine.

**Qu’est-ce-que Google App Engine ?**

Google App Engine est une plateforme fournie par Google pour y déployer des applications. Tout d’abord un peu d’histoire, GAE a été disponible :

- tout d’abord, en Avril 2008 en Python,
- puis en Avril 2009 pour Java,
- en Mai 2010, Google App Engine for Business fournit une solution pour les entreprises.

Google App Engine fournit des services tels que les crons, les tâches, les mails … ainsi qu’une console d’administration avec des stats, logs, une liste des tâches. Il y est également possible de naviguer dans le datastore et le tout est disponible en plusieurs langages tels que Scala, Groovy et Python.

L’un des gros avantages de Google App Engine est la scalabilité qui se fait automatiquement contrairement à Amazon EC2. Tout est géré pour nous. Les quotas sont parfaitement raisonnables, la preuve avec quelques chiffres : 43 200 000 req/j, 45220 visiteurs par minutes, 1 Go de bande passante/jour, 1 Go de Datastore.

Lors du développement d’application destiné à Google App Engine, on se heurte à un premier souci : la sécurité. L’application se situe dans une Sand Box (un bac à sable), il n’est donc pas possible d’accéder aux systèmes de fichiers et ceci limite les possibilités des applications. Une limite de 30 secondes de chargement est fixée, au delà de ce temps une exception est levée, le streaming est donc à bannir. Le framework Atmosphere a cependant pu contourner le problème, il est donc quand même possible de faire du push serveur. Il existe une liste blanche des classes autorisées, pour la trouver demandez “Will it play in Google App Engine” sur Google. Le Cold Start (démarrage à froid) est également problématique : il faut attendre plusieurs connexions d’utilisateurs avant d’avoir un temps de réponse correct car la plateforme charge tout au fur et à mesure des connexions. Dans l’API Mail, l’expéditeur du mail est l’administrateur ou l’utilisateur courant, il n’est pas possible de fournir une autre adresse. De plus, l’adresse de l’expéditeur a le format suivant string@appid.appspotmail.com. Pour l’API User, il faut impérativement un compte Google pour que l’utilisateur puisse s’authentifier et on peut ensuite accéder au mail et au surnom de l’utilisateur. La sécurité se fait dans le web.xml, il est possible de configurer des restrictions dans la console. L’API de messagerie instantanée (XMPP) nécessite une souscription pour pouvoir envoyer un message à quelqu’un d’autre.

Au niveau de la persistence, Google App Engine fournit JDO et JPA. Le souci de l’utilisation de BigTable est que l’on manipule une table sans schéma, la modélisation se fait par groupe d’entité, il n’y a aucune relation n/n, il ne s’agit que d’une liste de clés. Le quota est limité à 1Go. Dans les requêtes, il n’est pas possible de réaliser des jointures, ni de fonctions d’aggrégation, ou de polymorphisme de requêtes (héritage par exemple).

Dans les autres limitations, on a 1000 fichiers par applications (images incluses), 150 Mo pour le code de l’application, 10 Mo en HTTP …

Pour résumer, les gros avantages d’une application Google AppEngine sont la scalabilité automatique et les quotas gratuits généreux. Mais il ne faut pas négliger les difficultés que l’on peut avoir à cause des quotas et de la limite de temps. Les principaux freins à son adoption en entreprise sont BigTable, la sécurité limitée aux comptes Google, la confidentialité, le démarrage à froid et la portabilité.
