---
layout: "post"
author: 
  - "acrepet"
title: "Reactive Rapsberry Tour"
date: "2015-05-18"
categories: 
  - "les-conferences"
  - "tech"
tags: 
  - "akka"
  - "cassandra"
  - "elasticsearch"
  - "eventsourcing"
  - "microservices"
  - "play2"
  - "raspberrypi"
  - "reactive"
---

| [![Mathieu Ancelin](/assets/2015/05/2015-05-18-reactive-rapsberry-tour/mathieu-ancelin-bw.JPG)](http://www.lyonjug.org/_/rsrc/1430565594942/speakers/2015/mathieu-ancelin-bw.JPG)[![Alexandre Delegue](/assets/2015/05/2015-05-18-reactive-rapsberry-tour/AlexandreDELEGUE.jpg)](http://www.lyonjug.org/_/rsrc/1430565592882/speakers/2015/AlexandreDELEGUE.jpg) |

Mathieu Ancelin et Alexandre Delegue de [SERLI](http://www.serli.com/) attaquent leur "Reactive Rapsberry Tour" cette semaine (à Lyon le 19 mai, Grenoble le 20 et Genève le 21). Ils disséqueront une application réactive basée sur des micro services et de l'Event Sourcing avec des outils comme Cassandra, ElasticSearch, Play 2 ou encore Akka. Avec autant de buzz words dans une annonce, vous ne pouvez pas louper ça!

_Cette interview a été préparée par [Agnès CREPET](https://twitter.com/agnes_crepet) et [Alexis HASSLER](https://twitter.com/AlexisHassler) de la team du Lyon JUG._

**Agnès et Alexis: Pouvez-vous vous présenter?**

**Mathieu et Alexandre:** Je m’appelle Mathieu ANCELIN, je suis développeur chez SERLI. Je travaille essentiellement sur des applications web au quotidien, majoritairement en Java avec Play et avec beaucoup de Javascript ce qui n’est pas pour me déplaire. Et après sur mon temps libre j’essaie de tester toute sorte de technos, de langages, histoire de m’amuser.

Je m’appelle Alexandre Delègue, je suis comme Mathieu développeur chez SERLI, une société basée sur Poitier. Dans ma vie de tous les jours je fais essentiellement du java et généralement je travaille sur des applications spring. A la maison j’aime tester plein de truc et depuis que je fais du scala je ne code plus en java chez moi :)

**Agnès et Alexis: Autant de buzz words dans le résumé de votre talk... Vous allez faire déplacer les foules! Plus sérieusement qu'est-ce qui vous a poussé à proposer ce talk ? Vous voyez trop de projets ringards et vous avez envie de changer ça ? ;-)**

**Mathieu et Alexandre:** C’est tout simplement un pur coup marketing, dans les faits on montre comment déployer du Struts 2 sur des Raspberry Pi ;-)

En fait notre approche, ça a été vraiment de prendre tous les buzzwords du moment ayant un peu de cohérence entre eux (il y a plus d’un an maintenant) et de voir ce que ça voulait vraiment dire en terme de mise en place, de frameworks, de produits existants, etc … et surtout on voulait voir si tous ces buzzwords tiennent vraiment leurs promesses.

J’ajouterais qu’on voit beaucoup de talks où le speaker fait défiler des slides en expliquant que tout fonctionne très bien. Nous on voulait aussi pouvoir montrer en live ce qui se passe. Le cluster de raspberry est là pour ça.

En développant entièrement une application, on a pu voir ce qui marche, ce qui ne marche pas, les difficultés …

Et oui il y a sûrement une certaine volonté à sortir du quotidien, à ne pas se fixer de limite, à partir d’une page vierge.

**Agnès et Alexis: Et au fait c'est quoi une application réactive ? Et ça sert à quoi ?**

**Mathieu et Alexandre:** Une application réactive c’est une application qui est développée suivant le [reactive manifesto](http://www.reactivemanifesto.org/). Ce manifeste décrit comme développer des applications modernes scalables et résilientes. Il y a beaucoup de bon sens dans ce manifeste et je dirais que ce qui change des applications traditionnelles c’est le côté “message driven” qui impose d’écrire des applications asynchrones.

**Agnès et Alexis: Quels sont les principaux outils que vous allez présenter ?**

**Mathieu et Alexandre:** On va présenter pas mal de choses. Malheureusement ce ne sera que des introductions afin de ne pas faire une session qui dure 12 heures, même si je pense que chaque outil présenté vaut vraiment le coup d’en savoir plus. Globalement on va parler de Elasticsearch, Cassandra, Akka, Akka cluster, CQRS, EventSourcing, Gatling, Kibana, de zombies et bien d’autres choses.

**Agnès et Alexis: Et pourquoi Play 2 ... C'est encore un framework hype ? ;-)**

**Mathieu et Alexandre:** Sans vouloir troller autour des frameworks web sur la JVM, je ne sais pas si Play 2 était plus hype qu’un autre au moment où on l’a choisi, pour le coup, je pense que là on est plus sur de la zone de confort pour nous deux, c’est un framework que l’on connaît bien et avec lequel nous avons une bonne productivité, donc on a préféré le choisir histoire d’avoir au moins une brique que nous maitrisions bien.

De plus Play 2 a l’avantage d’être entièrement asynchrone ce qui est une propriété obligatoire dans un modèle réactif sous peine de tout voir s’effondrer. En plus de ça, Play s’intègre extrêmement bien avec Akka qu’on utilise également.

Il y a d’autre frameworks réactifs comme Vert.X, Ratpack, akka-http, rx-netty, etc mais Play 2 est plus abouti, il propose du templating, de la validation de formulaires, l'intégration Server-Sent Events (SSE) et WebSockets, etc ... Bref tout pour développer une application de A à Z.

**Agnès et Alexis: Quel est l'outil ou framework que vous trouvez super, que vous auriez aimé mettre dans votre talk mais qui ne rentrait pas en terme de timing ?**

**Mathieu et Alexandre:** On aurait pu ajouter un système de messaging entre nos applications pour aller encore plus loin. On aurait pu mettre Kafka pour ajouter un peu de buzzword.

On aurait également pu Dockeriser tout ça voir même utiliser Apache Mesos :)

La spec "reactive streams" est vraiment pas mal, on pourrait intégrer les Akka streams, le travail que la team Akka a fait est énorme donc ça donne très envie de l’utiliser :)

Après je dirais qu’avec du temps il faudrait surtout améliorer l’existant comme par exemple faire du tuning, revoir certaines parties faites à l’arrache, etc ...

**Agnès et Alexis: Votre talk, ce sera plutôt des slides ou du live coding ?**

**Mathieu et Alexandre:** Alors notre talk, c’est essentiellement des slides car on parle de beaucoup de choses différentes, et il serait difficile ou extrêmement long de faire du live coding, même si nous aimerions beaucoup. Après on fait quelques démos sur le cluster et on essaye d’avoir un discours fun et rythmé pour que ce ne soit pas barbant.

A puis pour les plus motivés, on pourra potentiellement creuser un peu plus après la session :-)

**Agnès et Alexis: Vous déployez un cluster sur Raspberry Pi. C’est sérieux, ou c’est juste pour la démo ?**

**Mathieu et Alexandre:** Alors ça dépend de ce que tu ce qu’on entends par sérieux :-)

On déploie vraiment sur un magnifique cluster fait maison, composé de 7 Raspberry Pi B+. Il sera d’ailleurs présent durant la session de mardi pour pouvoir faire quelques démos. Après ça n’a pas vraiment un but “sérieux” c’était plus pour s’amuser avec des Raspberry Pi, de raconter une histoire sympa, etc … c’était le truc en plus. Après on pourrait peut-être monter un business pour fournir une plateforme de cloud entièrement basée sur des Raspberry Pi, qui sait :-)

Mais surtout, l’idée c’est de recréer des conditions de déploiement vraiment difficiles (peu de CPU, peu de cores, peu de RAM, stockage et réseau peu fiables, etc ...) pour se rapprocher d’un environnement de type cloud. Du coup, ce support nous permet d’expérimenter tous les patterns à mettre en place pour que notre application soit toujours “réactive” malgré toutes ces contraintes.

Un autre avantage, c’est que pour nos démos, on a pas besoin d’accès à internet, on a notre cloud portable avec nous :-)

**Agnès et Alexis: Akka est fait en Scala et prévu pour développer en Scala, il a aussi une API Java. Est-ce qu’elle est utilisable ou vaut-il mieux développer en Scala ?**

**Mathieu et Alexandre:** L’api java d’Akka est complètement utilisable (idem pour Play qui est java et Scala).

Il n'y a pas à ma connaissance de fonctionnalités en moins en java sauf pour les features expérimentales qui sont d’abord développées en Scala et donc d’abord proposées en Scala.

On peut quand même dire que coder en Scala reste quand plus adapté en terme lisibilité de code notamment grâce au “pattern matching” qui est très utilisé dans Akka. De plus le code Scala est plus compact et représente mieux les intentions du développeur. On peut cependant noter que l’arrivée de Java 8 a grandement contribué à améliorer la lisibilité et la compacité du code.

Après Akka c’est vraiment un super outil qui vaut la peine qu’on l’explore, on peut vraiment faire des choses très sympas avec, ainsi qu’avec tous les modules qui orbitent autour. Il faut vraiment dépasser le côté “Arrggghh, c’est du Scala !!!!” et voir ce que Akka peut offrir.

A puis pour les plus motivés, on pourra potentiellement creuser un peu plus après la session :-)

**Merci à Mathieu et Alexandre pour cette interview !** Inscrivez-vous à leurs sessions [à Lyon le 19 mai](http://www.lyonjug.org/evenements/akka-rpi), [à Grenoble le 20](http://www.alpesjug.fr/?p=2813) et [à Genève le 21!](http://genevajug.ch/)
