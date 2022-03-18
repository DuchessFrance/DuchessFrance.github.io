---
layout: "post"
author: 
  - "edijoux"
title: "Concours Moov' In The City : les duchesses participent"
date: "2013-06-19"
categories: 
  - "coup-de-coeur"
  - "developper"
  - "duchess-agit"
tags: 
  - "bemyapp"
  - "moov-in-the-city"
---

| [Moov' In The City](http://moovinthecity.com/) est un grand concours organisé autour de l'ouverture des données des transports parisiens. Sous l'impulsion de [Ludwine](https://twitter.com/nivdul) et [Blandine](https://twitter.com/bbourgois), nous avons décidé de participer. Tout s'est fait très vite : monter une équipe, trouver une idée, étudier les  données fournies par la Ville, définir les fonctionnalités, le design, le logo, les pages puis choisir les technos, développer, livrer en Prod, faire une vidéo. Et hop ! La V1 est livrée. |

## Notre motivation

Nous voulions avant tout, en participant à ce concours, rencontrer d'autres femmes faisant le même métier, apprendre à mieux nous connaître et travailler ensemble sur un vrai projet....Et pourquoi pas, peut-être, réaliser une belle application ?

## L'idée

![MOOVSIMPLY_Icone](/assets/2013/06/2013-06-19-concours-moov-in-the-city-les-duchesses-participent/MOOVSIMPLY_Icone.jpg)

Le souhait de toutes était de réaliser une application très simple capable de retrouver à proximité tous les types de transport et les prochains horaires de passage. En effet, juggueuses que nous sommes, il nous est indispensable de savoir si l'on doit courir rattrapper le dernier métro ou trouver une station de velib' avec des vélos disponibles. Les applications existantes sont bien mais elles ne regroupent pas tous les types de transports. Nous voulions quelque chose de simple pour nous faciliter la vie dans nos déplacements, d'où l'idée de notre application  **Moov'Simply**.

## L'équipe

Après un appel sur le Google Groups Duchess France et des rencontres lors de la soirée de lancement, nous avons constitué une équipe 100% féminine :

- [Blandine Bourgois](https://twitter.com/bbourgois) : Dev Java et Nao
- [Dahlia Scherr](https://twitter.com/scherrda) : Dev Java, js et Android
- [Amira Lakhal](https://twitter.com/MiraLak) : Dev Java
- [Ludwine Probst](https://twitter.com/nivdul) : Dev Java
- [Nassima Amrouche Tafni](https://twitter.com/namrouche) : Dev Java, JEE.
- [Annabel Hary](http://www.web-solidaire.fr/) : Chef de projet Web et conceptrice d’interface Web
- [Sophie Trinh-Khanh](http://sophietk.appspot.com/) : Dev Java, js, et responsive web design
- [Aya Berteaud](http://www.ayaberteaud.com/) : Directrice Artistique, Webdesigner
- [Mathilde Lemée](https://twitter.com/MathildeLemee) : Dev Java et Mobile
- [Ellène Dijoux Siber](https://twitter.com/ElleneSiber) : Dev Java

## Le design

Nous avons toutes beaucoup réfléchi à la conception de l'application avec une volonté d'en faire une application très simple d'utilisation et épurée. Amira, Aya, Annabel et Sophie ont su représenter au mieux nos idées. Et voici le résultat  :) :

![MOOVSIMPLY_Splash](/assets/2013/06/2013-06-19-concours-moov-in-the-city-les-duchesses-participent/MOOVSIMPLY_Splash.jpg)

## Les choix techniques

Une semaine pour livrer (enfin, 5 soirées et un week-end) ! Pour tenir face à cette pression, les craftswomen que nous sommes avons choisi le pragmatisme et la simplicité : ce sera une application web Responsive Design, de la géolocalisation HTML5, un serveur gérant les données fournies par les API. Notre stack technique limite les frameworks :

- Des services REST avec java et jersey pour le back-end,
- Du javascript avec Backbone.js, le plus léger des framework MVC, côté front,
- Du maven pour le build et le déploiement,
- Jetty comme serveur.

Avec cette architecture légère et souple - nous pourrons aisément l'adapter, l'enrichir au fur et à mesure (pourquoi pas nous brancher sur un ElasticSearch par exemple), nous avons très vite réussi à mettre en place quelque chose de sympa avec une mise en prod sur Heroku au bout de 3 jours

## Devenez nos beta-testeurs !

Il nous reste encore du boulot mais vous pouvez commencer à tester notre application disponible ici : [moovsimply.heroku.com](http://moovsimply.heroku.com)

Vous trouverez une page d'accueil, une page avec map et transports autour de l'utilisateur, (détail sur clic d'un transport), une page listant tous les transports.

Vous pouvez commencer à tester et nous faire des retours via notre compte Twitter : [@moovsimply](https://twitter.com/MoovSimply).

Les prochaines fonctionnalités prévues sont :

- afficher des horaires,
- gérer les routes favoris,
- intégrer l'application à Nao pour qu'il puisse nous aider à rentrer chez nous ;-),
- et autres améliorations suivant vos retours.

**Souhaitez-nous bonne chance pour la finale le 10 juillet !**
