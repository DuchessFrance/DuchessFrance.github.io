---
layout: "post"
author: 
  - "edijoux"
title: "Paris JUG Octobre (I) – Ruby On Rails et HTML 5"
date: "2010-10-20"
categories: 
  - "les-conferences"
tags: 
  - "html5"
  - "paris-jug"
  - "rails"
  - "ror"
  - "ruby"
---

| Mardi 12 Octobre, Paris. Vous vous en souvenez peut être, jour de grève national en France notamment dans les transports, mais cela n’a pas effrayé les juggers qui furent nombreux à assister à la soirée framework purement web au Paris JUG. |

### L’Avant JUG

Peu de personnes pour cet Avant JUG, entre les habitués qui ont été découragés par la grève et les autres bloqués dans les transports. Nous étions moins d’une dizaine pour cette pré-soirée. Au milieu des discussions, les problèmes de transport rencontrés par chacun et un petit retour sur le Startup Weekend par Laure. L’heure approche et nous nous dirigeons vers l’ISEP pour la suite de la soirée.

### Première partie de soirée : Ruby On Rails et HTML 5

#### Ruby On Rails

[![SpeakerROR](/assets/2010/10/2010-10-20-paris-jug-octobre-i-ruby-on-rails-et-html-5/5097058633_8fdd1012c7.jpg)](http://www.flickr.com/photos/jduchess/5097058633/ "SpeakerROR by jDuchess, on Flickr")  
[Christian Blavier](http://blog.octo.com/author/cbl/), architecte chez [Octo Technology](http://www.octo.com/) nous présente Ruby On Rails. Il est l’auteur d’un article qui a fait beaucoup de bruit [Confession d’un javaiste repenti](http://blog.octo.com/confession-javaiste-repenti-rails/).

Les applications Java que l’on développe actuellement sont de grosses architectures avec des couches JSF, Spring, Hibernate et tout un tas d’autres frameworks qui peuvent devenir très vite indigestes. On s’éloigne beaucoup du concept que l’on recherchait au début : une application web simple.

Ruby On Rails, dont le petit nom est RoR, est un framework open source. Il est écrit en Ruby, un langage purement orienté objet. Ruby On Rails fournit une fonctionnalité intéressante : le [scaffolding](http://en.wikipedia.org/wiki/Scaffold_%28programming%29) qui consiste à générer le code pour la création, suppression, modification et lecture des données (CRUD). Mais selon l’expérience de Christian c’est une fonctionnalité finalement peu utilisée par les développeurs. Voici quelques astuces qu’il nous a présenté et qui sont bien intéressantes pour le développement d’applications :

Ruby est un langage dynamique faiblement typé qui propose :

- Les closures ;
- Les controllers ;
- Le templating avec le langage [Haml](http://wiki.rubyonrails.org/howtos/templates/haml) et [Sass](http://wiki.rubyonrails.org/howtos/templates/sass) pour le style ;
- L’utilisation de Rest avec support du GET, POST, PUT, DELETE et de vraies urls Rest ;
- Les expressions de matching ;
- [Active Record](http://ar.rubyonrails.org/) équivalent Hibernate mais qui fournit des fonctionnalités bien plus simples.

Ruby On Rails fournit des commandes pour la création de modèles. Voici un exemple de commande pour créer un modèle :

`rails generate model book title:string description:string`

Il propose également des commandes pour mettre à jour la base de données en fonction du nouveau modèle de données :

`rake db:migrate`

La commande provoque une génération du nouveau schéma de la base de données tout de suite utilisable pour le développement.

**Les tests unitaires**

Il existe plusieurs outils permettant de réaliser des tests sur vos applications Ruby On Rails :

- [mocha](http://mocha.rubyforge.org/) est un framework pour définir des mocks comme EasyMock en Java ;
- [Factory Girl](http://thoughtbot.com/community/) est l’équivalent DbUnit pour réaliser des tests unitaires avec une base de données, qui semble plus lisible et maintenable que DbUnit ;
- [TimeCop](http://rubyreflector.com/Timecop) qui permet de freezer le temps pour s’assurer de la construction de composants  ;
- [Cucumber](http://cukes.info/) pour la programmation orientée comportement, un équivalent de GreenPepper.

**Ruby On Rails dans le Cloud**

Une offre de déploiement sur le Cloud existe pour les applications Ruby On Rails : [Heroku](http://heroku.com/). Le déploiement s’effectue avec Git.

**Utilisation de Ruby On Rails**

Ruby On Rails est adapté au développement rapide d’application web. Christian a d’ailleurs participé au startup weekend où il a pu développer avec Ruby On Rails une application de partage de photos en un week end. Une autre application a aussi été développée avec Ruby On Rails : Qualifeed.

C’est la fin de la présentation nous passons immédiatement à celle de Cédric Beurtheret et Alain Duval sur HTML 5.

### HTML 5

[![HTML5Speaker](/assets/2010/10/2010-10-20-paris-jug-octobre-i-ruby-on-rails-et-html-5/5097655022_f30b3b330f.jpg)](http://www.flickr.com/photos/jduchess/5097655022/ "HTML5Speaker by jDuchess, on Flickr")  
La partie HTML 5 a été présenté par Alain Duval et Cédric Beurtheret respectivement directeur technique et expert chez OBJECTIF. Annoncé depuis 1998, HTML 5 est issu d’une longue attente, et bien que relancée en 2004 par 2 organismes, la spécification n’est jusqu’à présent toujours pas finalisée.

Aujourd’hui, de plus en plus de navigateurs supportent le HTML 5. Parmi les nouveautés que l’on peut découvrir, on peut constater l’apparition de nouvelles balises et la dépréciation d’autres comme `<frame>`, <`u>` ou encore <`font>`. Le DOCTYPE et le CHARSET sont simplifiés.

Les formulaires ont été améliorés avec de nouveaux type de champs de saisie par exemple comme les balises <`slider`\>, <`tab`\>, <`email>` ou encore `<search>`. De nouveaux attributs font également leur apparition : autocomplete et autofocus par exemple pour mettre le focus sur un champ particulier lors du chargement de la page. La validation des champs est maintenant possible et elle est réalisée en fonction du type défini par le champs input (email, url, …).

Un réel effort de compatibilité entre les navigateurs a été réalisé. En ce qui concerne le multimédia, de nouvelles balises apparaissent comme <canvas> et d’autres pour l’audio et la video. Des codecs audio et vidéo ont ainsi été standardisés et SVG est dorénavant supporté nativement.

Grâce à l’API JavaScript, il est possible de réaliser plus facilement des glisser déposer sans framework supplémentaire. Le support de la géolocalisation permet aux applications de demander au navigateur la position géographique de l’utilisateur. Parmi d’autres nouveautés, il y a les web sockets, le mode offline web pour disposer de son application en mode déconnecté, web workers pour réaliser des tâches en mode asynchrone et le cross window messaging pour les échanges de message.

**Contexte d’un projet autour d’HTML 5  
**

Après avoir exposé les nouveautés disponibles pour HTML 5, nos speakers nous présentent un cas pratique avec un projet qu’ils ont pu réaliser. Leur projet : une application de gestion à l’usage des commerciaux qui ne sont pas toujours connectés, l’application doit donc être nomade pour être disponible partout. Ils ont utilisé les fonctionnalités suivantes pour réaliser l’application :

- Web workers : permet de lancer du JavaScript en tâche de fond comme des threads. Les communications se font par l’intermédiaire de messages, et de son côté le Worker s’abonne à un listener ;
- Cross Window Messaging : API pour la communication de messages entre windows, tabs & iframe ;
- Web storage qui dispose de 3 niveaux de stockage : **session storage** qui disparaît lorsqu’on ferme le navigateur, **local storage** qui mémorise les informations mais limité en taille et **webdatabase** avec SQLLite (version synchrone et asynchrone, cette dernière est recommandée).

### La pause

Le buffet a été offert par [Zenexity](http://www.zenexity.fr/). Et la suite ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) dans le prochain épisode.  
[![MiTemps](/assets/2010/10/2010-10-20-paris-jug-octobre-i-ruby-on-rails-et-html-5/5097058805_cc748ca42c.jpg)](http://www.flickr.com/photos/jduchess/5097058805/ "MiTemps by jDuchess, on Flickr")
