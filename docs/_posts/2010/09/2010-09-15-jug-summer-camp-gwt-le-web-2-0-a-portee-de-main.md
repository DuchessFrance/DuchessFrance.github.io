---
layout: "post"
author: 
  - "Audrey"
title: "JUG Summer Camp – GWT, le web 2.0 à portée de main"
date: "2010-09-15"
categories: 
  - "les-conferences"
tags: 
  - "gwt"
  - "gwt-2-0"
  - "gwt-2-1"
  - "jug-summer-camp"
---

| ![](/assets/2010/09/2010-09-15-jug-summer-camp-gwt-le-web-2-0-a-portee-de-main/4983715753_3f6aa366fd_o.jpg "aquarium") |

**GWT, le web 2.0 à portée de main** – Nicolas de Loof ([présentation](http://sites.google.com/site/jugsummercamp/presentations))  
_par Audrey Neveu_

**GWT, qu’est ce que c’est ?**

Commençons d’abord par un petit rappel sur ce qu’est le web 2.0 : des usages qui modifient l’interaction avec l’utilisateur au niveau du net. Pour obtenir une RIA (Rich Internet Application) de qualité, il vous faut des experts dans plusieurs domaines : CSS, HTML, DOM au minimum et surtout Javascript. Or pour ce dernier bien peu de développeurs peuvent se prétendre expert en la matière. Le web 2.0, c’est donc quelque chose de puissant mais de délicat : il faut être cross browser, faire attention à sa vitesse de chargement, être vigilant au XSS, penser aux fuites de mémoire, savoir débugger en javascript, etc …

Devant cette demande croissante pour des applications 2.0, de nombreux frameworks sont apparus, nous donnant comme le dit Nicolas “l’embarras du choix … et surtout l’embarras”. En effet, dans la vie de tous les jours, le développeur lambda est amené à faire du Javascript, de l’HTML, du Java, du CSS et du design sans pour autant être expert dans tous ces domaines. De plus l’émergence du web mobile vient encore compliquer cette problématique du cross browser que tout développeur d’application web connait bien : être compatible I.E. 7, 8, 9, Firefox, Chrome, Safari mais aussi I.E. 6 qui malgré tout représente encore une forte part de marché dans les entreprises.

De ce besoin de développer des applications plus riches naissent 3 rêves :

- L’architecte rêve de ne pas devoir traiter les problématiques de bas niveau de javascript sur un navigateur : fuite mémoire, gestion événementielle, support cross browser, etc …
- Le chef de projet de son côté rêve de pouvoir réutiliser les compétences existantes, c’est-à-dire java.
- Le développeur quand à lui, rêve de pouvoir conserver son IDE préféré qui lui propose un outillage de test complet, l’auto complétion, l’aide au refactoring et milles autres petites pratiques de développement aussi utiles qu’indispensables une fois que l’on y a gouté.

Et c’est ici qu’apparaît la solution miracle face à ces trois problèmes totalement divergents et pourtant liés : GWT (Google Web Toolkit). Le framework de Google orienté composant a en effet pour but de vous permettre de développer vos applications web 2.0 en java grâce à l’utilisation du JRE standard couplé à une API spécifique. A sa charge de compiler votre code en Javascript, inutile pour vous de devenir un pro de ce langage pour réaliser une RIA digne de ce nom.

Autre notion essentielle de GWT, sa devise “Only pay for what you see”. En d’autres termes, GWT va produire une application par navigateur cible et ainsi éliminer le code mort, les bibliothèques inutiles et autres if et else qui traînent invariablement dans une application web cross browser. D’autre part, le code java n’est pas transmis initialement : il est d’abord repris, optimisé et compilé en javascript pour effectuer la manipulation du DOM en fonction de ce qui sera le moins coûteux en performance selon le navigateur.

Pour résumer, GWT est un framework :

- simple et peu coûteux en temps d’apprentissage,
- avec un coût incomparable par rapport au MVC,
- extensible grâce à des librairies telles que GWT-Fx, Ext-GWT et des wrappers comme Smart-GWT,
- multi-navigateur y compris mobiles et navigateurs à venir

GWT supporte nativement le back des navigateurs et l’internationalisation (i18n) et est également HTML 5 ready et nativement Ajax. Votre code quant à lui, écrit en java reste entièrement testable.

Très appréciable la fonction Out Of Process Hosted Mode (OOPHM) vous permet de tester le rendu de votre application, de le modifier, de recompiler à la volée et de le re-tester, le tout dans votre navigateur habituel. En effet avec GWT 2.x, plus besoin d’utiliser le navigateur système, le débugger java se branche au moteur javascript de votre navigateur, pour lequel vous aurez au préalable téléchargé le plugin.

Plusieurs fonctionnalités sont apparues avec GWT 2.0 :

- le découpage du code js via runAsync qui permet de charger du code à la demande en fonction des droits de l’utilisateur ou du module dans le cas d’un module peu utilisé,
- la possibilité d’utiliser des bundlers pour les images, le CSS, le JS Natif (navigateur cible). Tout le contenu du bundler est chargé au démarrage de l’appli, ce qui le rend disponible de suite lors de la navigation,
- le binding entre code java et code html grâce à UiBinder,

Côté serveur, GWT utilise un mécanisme RPC spécifique basé sur Rest, JSON et XML; et est devenu complètement stateless : toutes les données sont chez le client, ce qui en fait un framework tout à fait indiqué pour le cloud computing.

Côté concurrence, GWT fait face à Flex, qui est déjà bien installé mais qui nécessite une phase d’apprentissage non négligeable ainsi qu’un environnement récent; et à SilverLight qui a l’avantage d’un très fort taux de pénétration grâce à windows update mais dont la plateforme est limitée.

Conclusion : vous n’avez pas d’experts javascript, html, css, java etc … faîtes du gwt !

**Quoi de neuf avec GWT 2.1 ?**

L’apparition du design pattern MVP (Model View Presenter) pour la présentation devient la référence. Il se traduit comme suit :

- une partie visuelle totalement dénuée d’intelligence,
- un Presenter qui récupère les événements,
- un modèle de données caché : la vue n’en a pas connaissance.

Ce design pattern permet d’obtenir une application entièrement testable (la vue peut être mockée), modulaire et facilement repackageable.

En attendant une implémentation officielle (à venir ?), les implémentations open source sont nombreuses :

- gwt-presenter
- gwt-dispatch
- gwt-platform
- mvp4gwt

Attention néanmoins, l’apparition du MVP dans GWT 2.1 se traduit par des librairies “temporaires” dont la javadoc mentionne qu’elles sont encore en cours de développement et peuvent être supprimées. Les librairies suivantes en font partie et sont donc à utiliser à vos propres risques ![:-D](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_biggrin.gif) :

- gwt.text : parser/renderer pour le data binding “donnée -widget”
- gwt.app : place/activity pour la gestion de la navigation et les contrôleurs
- gwt.event : event bus qui permet de gérer les événements applicatifs et d’éviter le plat de spaghetti que peut rapidement créer une application ambitieuse composée de nombreux composants qui écoutent tous les événements qui passent;

Autres sujets à surveiller dans l’avenir de GWT :

- le rapprochement avec Spring Source et notamment la collaboration avec Spring Roo,
- le support de Maven, longtemps laissé de côté (publication des artefacts laissant à désirer, mauvais packaging, chemins en dur etc …), Maven fait enfin l’objet d’un réel effort de collaboration (option -maven -noAnt sur webAppCreator, évolution du plugin google eclipse …)
