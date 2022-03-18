---
layout: "post"
author: 
  - "aurelie"
title: "Retour sur l'Eclipse Con France 2015"
date: "2015-07-09"
categories: 
  - "les-conferences"
---

| Les 24 et 25 juin dernier a eu lieu l'[Eclipse Con France 2015](https://www.eclipsecon.org/france2015/) qui a réuni 250 personnes au Centre des Congrès de Toulouse. |

C'est la première fois que je me rendais a l'Eclipse Con et le bilan est positif : 2 journées bien chargées, la tête bien remplie, de bonnes découvertes (Leshan, Thym, Che ...), des rencontres ... et 2 macarons engloutis ! ;-).

Je me suis rendue compte a quel point l'éco-système d'Eclipse était énorme. Si pour vous Eclipse se résume a l'IDE, ou bien que vous êtes tout simplement intéressé par mon petit retour sur l'Eclipse Con, alors je vous conseille vivement de lire la suite de cet article. 40 sessions, un [hackaton](https://www.eclipsecon.org/france2015/session/contributing-eclipse-live-hackathon-part-1), 3 speakeuses,  250 personnes réunies autour d'Eclipse. Des stands pour pouvoir parler a des personnes travaillant chez Red  Hat, IBM, ou encore découvrir Syrius et Papyrus.

Sur les 40 sessions présentées vous vous doutez bien que j'ai du faire un choix, voici le résumé de la conférence et des sessions que j'ai vu.

 

## 1ère journée :

Après avoir récupérer mon badge en 2 minutes top chrono, direction le premier étage du Centre des congrès. Pour le moment il n'y a pas grand monde donc cela me permet de faire un tour des stands.

[![EclipseCon2015_1](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_1.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_1.png)

 

### How to reuse the DAWNSci Eclipse Project to describe data and do plotting

#### par [Matthew Guerring](https://twitter.com/matthewgerring) \[Diamond Light Source LTD\]

L'Eclipse Con n'a pas bien commencé en terme de sessions. Le premier workshop auquel j'ai assisté s'est mal passé. Le speakeur a fait passé 3-4 clés USB contenant un workspace et un [PDF](https://www.eclipsecon.org/france2015/sites/default/files/slides/DAWN_Developer_Training_v1.1.pdf), Le problème c'est que le workspace ne compilait pour personne ... même pas sur l'ordinateur de l'orateur. Matthew a mis un certain temps (les 3/4 du temps) a comprendre ce qu'il se passait et comment régler le soucis sur sa machine. Donc au final, il a pu nous montrer un exemple de découpe d'une image sous Eclipse en slices, il nous a parlé du projet [DAWNSci](http://www.dawnsci.org/) et la session était terminée.

[![EclipseCon2015_2](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_2.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_2.png)

 

### Hands-on with Lightweight M2M: run a smartwatch on the Internet of Things!

#### par [Julien Vermillard](https://twitter.com/vrmvrm?lang=fr), [Simon Bernard](https://www.eclipsecon.org/france2015/user/681) et [Manuel Sangoi](https://www.eclipsecon.org/france2015/user/3261) \[Sierra Wireless\]

Au cours d'un workshop, le trio de Sierra Wireles, nous a présenté la smartwatch qu'ils avaient fabriquer et nous a montré comment communiquer avec cette dernière via la librairie Eclipse [Leshan](https://projects.eclipse.org/projects/iot.leshan) (une implémentation en Java de l'OMA Lightweight M2M, un protocole pour gérer les objets connectés). Avec quelques lignes de code nous avons pu créer un [SmartWatch client](https://github.com/msangoi/leshan-tuto) sous Eclipse et "jouer" avec cette librairie Java.

[![EclipseCon2015_3](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_3.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_3.png)

Les slides de la présentation sont disponibles [ici](http://fr.slideshare.net/jvermillard/hands-on-with-lightweight-m2m-and-leshan).

Si vous êtes intéressé par l'IOT, Julien Vermillard a présenté une autre session sur la [sécurité des objets connectés](http://www.slideshare.net/jvermillard/the-5-elements-of-iot-security).

 

Après une première matinée, rien de tel qu'une petite pause repas pour se ressourcer et faire du networking !

[![Lunch time sponsorised by Intel at Eclipse Con France 2015](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/CIQooMjWwAE4YTo.jpg)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/CIQooMjWwAE4YTo.jpg)

### Keynote Smarter Grids: The Convergence of the Internet of Things and Energy

#### par [Tom Raftery](https://twitter.com/tomraftery) \[RedMonk\]

On s'éloigne de l'éco-système Eclipse pendant quelques minutes pour se préoccuper des problèmes de réchauffement climatique et des émissions de CO2 qui pourraient être réduit grâce à l'Internet des Objets (IoT) et donc la création et l'utilisation de dispositifs intelligent qui permettrait de réduire notre consommation d'énergie pour le bien de la planète.

[![EclipseCon2015_4](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_4.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_4.png)

Les slides de la présentation sont disponibles [ici](http://fr.slideshare.net/TomRaftery/the-convergence-of-the-internet-of-things-andenergy).

 

### JDK 8 refactoring

#### par [Vincent Ferries](https://twitter.com/VincentFERRIES) \[Genigraph\]

Etant développeuse Java, je me devais d’assister a cette présentation. En quelques minutes Vincent, que vous avez déja vu si vous assistez à des meetups toulousain tel que le [Toulouse JUG](http://www.toulousejug.org/) ou le [TAUG](http://toulouseaug.blogspot.fr/), a fait le tour des principales nouveautés de Java 8 et nous a montré comment transformer un code sous Java6 ou 7 vers Java 8 sous Eclipse. Des lambdas aux stream, en passant par un tips permettant d'éviter les NullPointerException ... Et en bonus track il nous a montré qu'il était possible d'ajouter un template sous Éclipse pour ajouter un foreach spécial JDK8.

[![EclipseCon2015_5](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_5.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_5.png)

Le Github et slides sont disponibles [ici](https://github.com/vferries/jdk8-refactoring).

 

### Docker Tooling for Eclipse

#### par [Max Rydahl Andersen](https://www.eclipsecon.org/france2015/user/1877) \[Red Hat\]

Employé de Red Hat, Max Rydahl Andersen, l'homme au t shirt "Superman", a présenté l'intégration Docker dans Eclipse. J'ai trouvé que cela a été un bon aperçu de la techno avec un soupçon de JBoss Wildfly dedans (RedHat oblige ;-)). Si vous voulez en savoir plus, je vous invite à regarder ce [screencast](http://tools.jboss.org/blog/docker_tooling_eclipse_mars.html?utm_content=bufferf73b4&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer).

[![EclipseCon2015_6](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_6.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_6.png)

Les slides de la présentation sont disponibles [ici](http://fr.slideshare.net/maxandersen/docker-tooling-for-eclipse).

 

### Code in the cloud with Eclipse Che

#### par [Stevan Le Meur](https://www.eclipsecon.org/france2015/user/3217) \[Codenvy\], [Sun TAN](https://www.eclipsecon.org/france2015/user/2826) \[Serli\]

Stevan et Sun qui ont effectué la présentation en duo, ont commencé à présenter les problèmes et le casse tête que le setup d'un environnement de développement peut poser, surtout lorsqu'une nouvelle personne arrive dans l'équipe par exemple. Ensuite ils nous ont parler des besoins selon le type de métier : les devs veulent un environnement "ready to code" prêt à l'emploi sans installation, les DevOps veulent des workspace versionnable intégré avec leurs outils ... Après les problèmes soulevés, les besoins, vient la solution, "Codenvy - Eclpe Che" : un IDE avec se workspaces dans le Cloud qui utilise Docker.

 [![EclipseCon2015_7](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_7.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_7.png)

 Les slides de la présentation sont disponibles [ici](https://www.eclipsecon.org/france2015/sites/default/files/slides/Eclipse%20Con%20-%20June%202015.pdf).

 

### Speaker Pitches + Ignite Talks - Un Mars et ça repart !

Et enfin, pour finir, nous nous sommes tous rejoints dans la plus grande salle pour écouter quelques speakers présenter leur solution et regarder une vidéo simulant la mise en production de la dernière version d'Eclipse : Éclipse Mars (4.5) !

[![EclipseCon2015_8](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_8.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_8.png)

Ce fut une journée bien remplie mais très instructive :-).

 

## 2ème journée :

### Live editing and pair programming with Eclipse Cloud Development top projects

#### par [Sun TAN](https://www.eclipsecon.org/france2015/user/2826) \[Serli\]

A la base j'avais prévue d'assister à une autre session mais la présentation de la veille de Sun et de Stevan a égaillé ma curiosité et m'a donné envie d'assister à ce Live coding/editing.

Malheureusement, du a un problème de matériel et de connectique, le Live coding n'a pas pu se faire donc Sun n'a pu faire "que" sa présentation en nous parlant d'Eclipse Flux qui permet le live editing en temp réel et comment faire cohabiter Eclipse Che avec Flux.

[![EclipseCon2015_9](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_9.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_9.png)

Les slides de la présentation sont disponibles [ici](https://www.eclipsecon.org/france2015/sites/default/files/slides/Live%20editing%20and%20pair%20programming%20with%20Eclipse%20Cloud%20Development%20top%20projects_1.pdf).

 

### Best serve the User Experience: a few usability principles and their Eclipse rendering

#### par [Nathalie Cotté](https://www.eclipsecon.org/france2015/user/3266) \[Bonitasoft\]

Une speakeuse, une speakeuse ! Nathalie de Bonitasoft a su présenté clairement l'expérience utilisateur (UX) et quelques uns de ces principes associé a leur outil BonitaBPM basé sur Eclipse, malgré de petits problèmes avec son câble HDMI. Clair, simple et efficace !

[![EclipseCon2015_10](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_10.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_10.png)

Les slides de la présentation sont disponibles [ici](https://www.eclipsecon.org/france2015/sites/default/files/slides/Eclipse%20Con%20-%20Nathalie%20Cotte%20-upload.pdf).

 

### Transformations, Patterns, Version Control: Where there is modeling, there is merging (Sponsored by Thales)

#### par [Olivier Constant](https://www.eclipsecon.org/france2015/user/2861) \[Thales\], [Mathieu Velten](https://www.eclipsecon.org/france2015/user/257) \[Atos\] et [Stephane Bouchet](https://www.eclipsecon.org/france2015/user/2656) \[Intel\]

J'ai hésité avec la session sur [Scala](https://www.eclipsecon.org/france2015/session/scale-your-efforts-scala) qui m'aurait plus intéressé je pense au final. Cette session présentait des outils créés/utilisés par Thalès, Atos et Intel (Cofluent Studio basé sur EMF) pratique lorsque l'on a des problématiques de merge ou de controle de version de modèles.

[![IMG_20150625_110511](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/IMG_20150625_110511-225x300.jpg)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/IMG_20150625_110511.jpg)

Les slides de la présentation sont disponibles [ici](https://www.eclipsecon.org/france2015/sites/default/files/slides/Merging_ECF_2015_AtosIntelThales.pdf).

 

Tout comme Mercredi, rien de tel qu'une pause repas pour se ressourcer, regarder des démos et réseauter.

[![EclipseCon2015_11](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_11.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_11.png)

 

### Because you can't fix what you don't know is broken - How automated error reporting minimizes bug fix cyles and boosts your product quality

#### par [Marcel Bruch](https://www.eclipsecon.org/france2015/user/1136) \[Codetrails\]

Qu'est ce qu'un logiciel sans Bug ? Ces derniers sont inévitable mais plus vite les développeurs sont alertés des problèmes, avec les bonnes informations et plus vite ces derniers pourront être analysés et réparés. Marcel nous a présenté le nouveau système automatique de reporting de Bug intégré dans Eclipse Mars : l'Eclipse Error Reporting. Je vous invite à regarder les slides qui sont simple, sobre et efficace.

[![EclipseCon2015_12](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_12.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_12.png)

Les slides de la présentation sont disponibles [ici](https://www.eclipsecon.org/france2015/sites/default/files/slides/2015-06%20-%20EclipseCon_0.pdf).

 

### LIVE! Building a Mobile App with Eclipse Thym and a Java EE backend

#### par [Erik Jan de Wit](https://www.eclipsecon.org/france2015/user/3295) \[Red Hat\]

Erik nous à montré en quelques minutes comment générer une appli mobile en JEE sous Eclipse avec quelques lignes de commande qui génère les Beans/Classe Java (jpa-new entity, jpa-new-field ...).

[![EclipseCon2015_13](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_13.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_13.png)

Les slides de la présentation sont disponibles [ici](https://rawgit.com/edewit/eclipsecon-slides/master/assets/player/KeynoteDHTMLPlayer.html#0).

Github :

https://gist.github.com/edewit/7e7afc7de8cff9310cde

### 50 slides of IDE

#### par [Baptiste Mathus](https://www.eclipsecon.org/france2015/user/2295)

Et pour finir, une présentation que pas mal de développeurs attendaient, les 50 Tips & Tricks d'Eclipse !

[![50slides](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/50slides-225x300.jpg)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/50slides.jpg)

Les slides de la présentation sont disponibles [ici](http://batmat.github.io/presentations/50-slides-of-ide/prez.html).

 

### Closing session

Enorme Clossing session présentée par Gael Blondelle où nous étions tous conviés a jouer à un jeu. Le but était de répondre avec un papier vert ou rouge et à la fin les quelques personnes restantes ont jouer à une partie de ... Pierre papier ciseaux (Chifoumi) !

Certaines personnes sont reparties avec des mini drones, d'autres avec des t-shirt ... Bref, une bonne session permettant de bien terminer ses 2 journées.

[![EclipseCon2015_14](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_14.png)](/assets/2015/07/2015-07-09-retour-leclipse-con-france-2015/EclipseCon2015_14.png)

La salle Cassopée à été live-streamée pendant les 2 jours donc vous pouvez voir quelques présentations, dont la Keynote, les speakers pitches et la Closing session ci-dessous :

<iframe src="https://www.youtube.com/embed/ng6jlGTfETA" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

<iframe src="https://www.youtube.com/embed/4LzafNP5HNk" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

 

**Conclusion**

Pour les prochaines années j'aimerai bien qu'il y ait plus de temps de battement entre deux sessions car 15 minutes c'est vraiment trop juste, surtout quand la présentation d'avant finit 10 minutes en retard et la présentation d'après 10 minutes en avance.

Comme idée de présentations je trouve ça très bien d'avoir rajouter un thème sur la Science mais je ne serai pas contre pour avoir l'année prochaine, et aux autres Eclipse Con, des présentations sur GWT et/ou Android (quoi que je pense qu'avec l'arrêt d'ADT cela ne risque pas d'etre possible ^^).

Ce serait super qu'il y ait plus de 3  femmes comme speaker également. N'oubliez pas, si vous souhaitez vous lancer et être oratrice, nous organisons des sessions d'aide/de répétition via Hanghout.

Pour conclure, merci la Fondation Eclipse et peut être a l'année prochaine !
