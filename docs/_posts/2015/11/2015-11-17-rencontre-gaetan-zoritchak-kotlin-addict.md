---
layout: "post"
author: 
  - "claire.villard"
title: "Rencontre avec Gaetan Zoritchak, Kotlin addict"
date: "2015-11-17"
categories: 
  - "les-portraits"
tags: 
  - "kotlin"
---

| [![gz_k](/assets/2015/11/2015-11-17-rencontre-gaetan-zoritchak-kotlin-addict/gz_k-200x300.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/11/gz_k.jpg)Cette semaine, le [LyonJUG](http://www.lyonjug.org/evenements/kotlin-code-with-fun) accueille Gaetan Zoritchak, alias [@gz\_k](https://twitter.com/gz_k), pour parler de Kotlin. C'était une belle occasion pour une petite interview... L'équipe du Lyon JUG lui a donc posé quelques questions pour vous donner envie de ne pas rater sa session mardi 17 novembre. |

_**LyonJUG : Pourrais-tu te présenter?**_

**Gaetan :** De formation ingénieur, je travaille dans l’écosystème java depuis 1999. J’ai fait le choix de l’informatique parce que je suis passionné par la technique. Je voulais un métier qui me permette de continuer à faire ce qui me passionne: concevoir, élaborer des solutions. Je vois trop de copains d’école talentueux qui ont basculé dans des fonctions qui ne sont pas à la hauteur de leurs compétences. Je trouve ça dommage.

J’ai continuellement fait des allers-retours entre SSII, consulting, et entreprise/start up. Je prends plaisir dans ces différentes fonctions tant que je fais de la technique.

Je suis un des 3 fondateurs de MonCoachFinance, une société basée à Genève. Par ailleurs, je suis conseiller municipal, père de trois enfants, et fan de parapente.

 

_**LyonJUG : Kotlin, encore un langage sur la JVM.  Qu'est-ce qu'il a mieux que les autres? Et pourquoi t'y es tu intéressé ?**_

**Gaetan :** La première description du langage en juillet 2011 (cela faisait déjà un an que l’équipe travaillait sur le projet) contenait beaucoup d’éléments que je recherchais pour les avoir utilisés dans d’autres langages : inférence de type (Scala), extension de classe existantes (Objective C, C#), High Order Functions,... Quand, en plus, j’ai vu que le point virgule avait disparu je suis définitivement tombé amoureux.

C’est une synthèse pragmatique d’un ensemble d’autres langages. Quand le projet a démarré, j’ai observé le travail d’Andrey Breslav, son concepteur. Il analysait tellement finement les autres langages qu’[il découvrait des bugs](http://stackoverflow.com/questions/3696047/why-calling-isetdynamic-contains-compiles-but-throws-an-exception-at-runtim) ! Son approche et les propositions faites sont très équilibrées et intelligentes. Le langage est facile à apprendre et néanmoins très puissant.

Pour citer quelques qualités de Kotlin par rapport aux autres langages de la JVM :

- la courbe d’apprentissage est plus rapide,
- l'intégration avec Java est meilleure,
- Kotlin offre la possibilité de «patcher» Java et les librairies existantes.

 

**_LyonJUG : Est-ce que tout le monde devrait s’y intéresser ? Pour des vraies applications ? Quels types d'applications ?_**

**Gaetan :** Oui ;-). J’en suis convaincu depuis longtemps. C’est pour moi LE langage qui peut réellement remplacer Java. Oracle ne donne pas l’impression de s’intéresser tant que ça à Java. Cette proposition de langage est une alternative très efficace pour la communauté Java. Tout le monde devrait s’y intéresser car les champs d’applications sont nombreux.

Il y a actuellement un intérêt très fort dans la communauté Android. Le fait de ne pas pouvoir coder en Java 8 sous Android et de dépendre d’APIs pas très pratiques rendent les fonctionnalités de Kotlin très attrayantes. On peut coder comme en Java 8 (et même mieux) et patcher Android. Que demander de plus.

Personnellement, je l’utilise essentiellement pour du backend. Quand je ne suis pas chez un client, je n’utilise que Kotlin pour coder dans la JVM. J’ai du code en production depuis environ 2 ans.

L’expressivité permise par la syntaxe de Kotlin et ses fonctions de «Type-Safe Builders» sont, à mon avis, très intéressantes pour l’écriture de DSL et la modélisation métier.

Un compilateur Javascript existe mais la finalisation du travail sur ce point sera réalisée après la version 1.0. C’est une fonctionnalité qui est proposée actuellement par de nombreux langages mais je ne crois pas trop à cette démarche.

L’arrivée de la version 1.0 va donner un joli coup de projecteur sur ce langage. Je m’attends à une adoption significative dans les mois à venir.

 

_**LyonJUG : Qui a développé le langage ? Est-il open source ? Est-il pérenne ? Est-on obligé d’utiliser IntelliJ pour développer?**_

**Gaetan :** Le langage est open-source. Il est développé par JetBrains, la compagnie qui développe IntelliJ IDEA et beaucoup d’autres IDEs. La base de code d’IntelliJ IDEA est importante ([vraisemblablement autour de 7-8 millions de lignes](https://twitter.com/intelliyole/status/375260104612134912)). Jusqu’à maintenant ce code était quasiment exclusivement en Java. Parmi les raisons de la création de Kotlin, il y a la volonté d’améliorer la productivité du développement de leurs outils. Le fait qu’ils utilisent Kotlin pour leur code interne sur un projet comme IntelliJ IDEA est une garantie de qualité et de pérennité. Cela fait 5 ans qu’ils travaillent sur ce langage. L’équipe dédiée est d’environ 20 personnes.

Il existe également un plug-in pour Eclipse. [Il y a une activité importante sur ce projet depuis début 2015](https://github.com/JetBrains/kotlin-eclipse/graphs/contributors). Il semble qu’il y ait une réelle volonté de favoriser l’adoption du langage au-delà des « JetBrains addicts».

 

_**LyonJUG : Que dire de son interopérabilité avec Java? Et avec l'écosystème Java, notamment l’usine logicielle (Maven/Gradle, Sonarqube, Nexus…) ?**_

**Gaetan :** Elle est tout simplement excellente (et bien meilleure que celle des autres langages de la JVM). Il est possible de mixer du code Kotlin et Java dans un même projet et faire des appels de manière transparente d’un langage à l’autre. C’est l’un des arguments majeurs de Kotlin. Là où Scala a créé sa propre implémentation des collections, Kotlin a trouvé un moyen d’améliorer l’existant en gardant les classes existantes. On utilise des fonctions équivalentes aux Streams Java 8, dans des JVM Java 6, et en manipulant des ArrayList, HashMap, … joli tour de force.

La version 1.0 indique une stabilisation dans le code et le bytecode. Il y aura désormais [une compatibilité entre les versions futures et la version 1.0](http://blog.jetbrains.com/kotlin/2015/11/the-kotlin-language-1-0-beta-is-here/).

Il est tout à fait possible d’utiliser Ant/Maven/Gradle pour construire des projets Kotlin. À noter que Cédric Beust [développe actuellement un projet](http://beust.com/kobalt/home/index.html) pour proposer un outil de build implémenté en Kotlin.

Pour Sonaqube, je ne sais pas quels sont les plans. Je pense que cela dépendra de l’adoption du langage.

En ce qui concerne Nexus, je ne vois pas de problématique spécifique à Kotlin.

 

_**LyonJUG : Est-ce que Kotlin a d’ores et déjà un support de Java 8?**_

**Gaetan :** Il y a encore une possibilité d’amélioration sur ce point. L’appel de streams depuis Kotlin n’est pas excellent.

C’est le seul cas où j’écris parfois un peu de Java (quand [des frameworks utilisent des fonctions «avancées» java 8](https://github.com/CodeStory/fluent-http#more-routes)). Ce n’est pas un réel problème dès lors que l’on peut mixer Java et Kotlin. Les améliorations sur l’utilisation des streams arriveront vraisemblablement après la version 1.0.

 

_**LyonJUG : Y a-t-il une communauté Kotlin en dehors de JetBrains? Quels sont les librairies ou outils open-source utilisant Kotlin les plus connus et marquants ?**_

**Gaetan :** La communauté est pour le moment relativement petite mais de qualité. Il y a 750 personnes sur [https://kotlinlang.slack.com](https://kotlinlang.slack.com). Parmi elles, Jake Wharton, développeur de Butter Knife, des personnes de Mongo DB, Airbnb, … On sent qu’il y a de l’attention sur le projet et que ce n’est pas juste pour s’amuser. Airbnb évalue Kotlin pour migrer son code Android (40k LoC), MongoDB développe un driver sous Kotlin, …

Parmi les librairies importantes ou intéressantes:

- [kovenant](http://kovenant.komponents.nl/) : gestion asynch / promise
- [jackson-module-kotlin](https://github.com/FasterXML/jackson-module-kotlin) : pour rendre la sérialisation json transparente
- [injekt](https://github.com/kohesive/injekt) : injection de dépendance,
- [fuel](https://github.com/kittinunf/Fuel) : http networking (pour android notamment)
- [funKTionale](https://github.com/MarioAriasC/funKTionale/wiki) : pour aller plus loin dans la programmation fonctionnelle avec kotlin (composition, currying, …)
- [anko](https://github.com/JetBrains/anko) : librairie proposée par JetBrains pour simplifier le développement sous android.

 

**Merci Gaetan :)**
