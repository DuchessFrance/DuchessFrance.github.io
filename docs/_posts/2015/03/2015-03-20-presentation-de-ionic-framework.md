---
layout: "post"
author: 
  - "steffy_29"
title: "Présentation de Ionic Framework"
date: "2015-03-20"
categories: 
  - "tech"
tags: 
  - "hybride"
  - "ionic"
  - "mobile"
---

| Je vais vous présenter Ionic Framework. Pourquoi, me direz-vous? Voilà, j’ai découvert ce framework lors du développement d’une idée que j’avais en tête depuis un moment et à laquelle je voulais donner vie. C’est ce que Ionic m’a permis de faire et je vais vous expliquer comment. |

### 1 - Qu’est-ce que Ionic Framework ?

[Ionic Framework](http://ionicframework.com/ "Ionic Framework") est un mélange d’outils et de technos pour développer des applications mobiles hybrides rapidement et facilement. Il s’appuie sur [AngularJS](https://angularjs.org/ "AngularJS") pour la partie application web du framework et sur [Cordova](http://cordova.apache.org/ "Apache Cordova")  pour la partie construction des applications natives. Ce framework open source permet de développer une application déployable sur plusieurs environnements tel qu'un site web ou une application mobile pour des systèmes tel que Android ou iOS ou Windows Phone...

![](/assets/2015/03/2015-03-20-presentation-de-ionic-framework/ionic_logo.png)

 

Comment ai-je découvert Ionic Framework? Je discutais avec un ami de l'idée de développer une application mobile pour Android. Mais voilà, j'étais un peu gênée car la nouvelle version du SDK Android venait de sortir et il fallait revoir l'implémentation des nouvelles librairies. Je signalais ce point gênant à mon ami ainsi que l'inconvénient de devoir recoder une grosse partie de l'application si je voulais la déployer sur une autre plateforme. C'est là qu'il m'a parlé de Ionic Framework et des possibilités que celui-ci offrait: "Tu connais le HTML, le CSS, Javascript et tu commences à faire de l'AngularJS. Tu devrais vraiment essayer Ionic. Et en plus, je suis sûr que ça va te plaire!".

Et c'est vrai. On trouve rapidement ses marques, lors du lancement des premières commandes, on génère un projet bien organisé où chaque élément est à sa place. On gagne en rapidité de développement, on voit les modifications appliquées automatiquement à la page exécutée.

### 2 - Et si on essayait de créer une application en 5 minutes?

#### 2.1 - Le début

Pour commencer, Ionic Framework s’appuie sur la plateforme [NodeJS](http://nodejs.org/ "NodeJS") et plus précisément NPM (Node Package Manager) pour installer les nouveaux modules développés par la communauté et gérer les dépendances entre les modules, donc il vous faudra l’installer (si vous ne l’avez pas déjà fait). Ensuite, pour générer une application mobile hybride, il vous faut le SDK Java et le SDK Android (si on veut faire une application Android ou tout autre SDK pour la plateforme visée), qui serviront à la compilation et à la construction de l’application.

Ensuite, il suffit d’exécuter la commande suivante (en ligne de commande)

$ npm install -g ionic cordova

Sous Windows 7, la commande “npm” ne fonctionnera pas sans les variables d’environnement de système JAVA\_HOME, ANDROID\_HOME et NPM.

Sous linux, les variables d'environnement JAVA\_HOME et ANDROID\_HOME sont nécessaires.

#### 2.2 - Et la suite…

Maintenant que l’on a un environnement de développement opérationnel, on va créer une application avec un menu sur le côté que l’on va appeler MySideMenuApp

Ensuite, pour créer un nouveau projet, on saisit la commande (sur Linux, il faudra peut-être précéder la commande de sudo pour exécuter celle-ci en tant que root) :

$ ionic start MySideMenuApp sidemenu

Dans Ionic Framework, on a 3 templates de disponibles : tabs (application avec des onglets, template par défaut), sidemenu (application avec un menu sur le côté) et blank (application vide)

Si vous avez exécuté la commande de création d’un projet en tant que root, n’oubliez pas de modifier les droits sur le répertoire nouvellement créé :

$ sudo chown user:group MySideMenuApp

#### 2.3 - Et ça ressemble à quoi ?

Si on va dans le répertoire de l’application nouvellement créée, on a l’arborescence suivante :

\--> ./MySideMenuApp

|--> ./hooks (_pour la gestion des plateformes cibles)_

|--> ./plugins (_plugins à utiliser par l’application)_

|--> ./scss (_pour customiser le “look and feel” de Ionic)_

|--> ./www

|--> ./css

|--> ./img

|--> ./js

|--> ./lib

|--> ./templates

|--> index.html

|--> .bowerrc

|--> .gitignore

|--> bower.json

|--> config.xml

|--> gulpfile.js

|--> ionic.project

|--> package.json

On peut maintenant, à partir du répertoire de l’application, lancer un serveur local de test à l’aide de la commande

$ ionic serve

Et là, on obtient une première application qui s’exécute en local sur notre machine.

![Première application](/assets/2015/03/2015-03-20-presentation-de-ionic-framework/premier_lancement_app.png)

Pour avoir la liste des différentes options disponibles pour ionic,

$ ionic -h

Une documentation plus complète sur le démarrage du développement à l’aide de Ionic Framework est disponible : [http://ionicframework.com/docs/guide/](http://ionicframework.com/docs/guide/ "Documentation Ionic Framework")

#### 2.4 - Et Android dans tout ça?

Pour pouvoir générer une application de type Android, il ne nous reste plus qu’à ajouter la plateforme avec la commande

$ ionic platform android

Maintenant, on a un répertoire ./platforms/android qui contient les sources de l’application Android.

Allez, on lance cette application:

$ ionic emulate

Cette action peut être un peu longue car l’émulateur Android est lancé, et celui-ci n’est pas connu pour sa rapidité... On peut aussi installer l'application directement sur le device sur lequel on veut faire le test (téléphone ou tablette), en le branchant directement sur le PC sur lequel on fait le développement et en activant le mode "developper" sur le device concerné. Sur les nouvelles versions d'Android, il faut cliquer 7 fois sur le numéro de version d'Android dans les paramètres du device.

Et voilà!

![Application Android](/assets/2015/03/2015-03-20-presentation-de-ionic-framework/application_android.png)

###  3 - La suite...

On trouve beaucoup d'avantages à utiliser Ionic Framework pour développer des applications mobiles et web. On développe une fois et on déploie sur plusieurs environnements. On s'appuie sur AngularJS, ce qui nous permet d'avoir un développement rapide et sur Cordova, qui nous permet d'accéder aux éléments du device comme le bluetooth ou l'accéléromètre. On peut déployer rapidement l'application sur un device connecté directement via la ligne de commande, ce qui est agréable lorsqu'on est en phase de développement et que l'on veut tester vite fait un petite partie de l'application sans devoir tout reconstruire. De plus, Ionic Framework va continuer d'intégrer les évolutions d'AngularJS, c'est-à-dire que les changements d'AngularJS 2 seront intégrés dans Ionic 2, ce qui laisse présager un bel avenir pour Ionic.

Le framework supporte l'intégration du SDK Android jusqu'à la version 4.0+, il ne supporte pas encore la version 5, et il est possible aussi que certaines fonctionnalités d'Android ne soient pas supportées totalement. Mais je trouve que l'on peut vraiment développer rapidement une application aussi bien web que mobile sans trop de difficultés d'intégration avec un bootstrap de base puissant et la possibilité de mettre en place une icone applicative et un splash screen.

J'adore faire du développement "hybride" avec Ionic Framework et je pense que je vais suivre de près les évolutions de celui-ci dans les mois à venir!
