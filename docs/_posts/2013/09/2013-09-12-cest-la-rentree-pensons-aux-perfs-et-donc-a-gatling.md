---
layout: "post"
author: 
  - "acrepet"
title: "C’est la rentrée! Pensons aux perfs et donc à Gatling!"
date: "2013-09-12"
---

| Le 17 septembre prochain, [Stéphane Landelle](https://twitter.com/slandelle) est invité par le [Lyon JUG](http://www.lyonjug.org) pour une session, qu'il co-animera avec [Pierre Dal Pra](https://twitter.com/pierre_dalpra ), autour [des tests de performance avec Gatling](http://www.lyonjug.org/evenements/gatling). Nous lui avons posé quelques questions en amont de sa session, histoire de vous mettre l'eau à la bouche, de vous donner envie de venir à cette rentrée du Lyon JUG! |

[![Stéphane Landelle](/assets/2013/09/2013-09-12-cest-la-rentree-pensons-aux-perfs-et-donc-a-gatling/slan.gif)](https://twitter.com/slandelle)

_Cet interview a été préparé conjointement par la team élargie du Lyon JUG : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)._

**La team du Lyon JUG : Peux-tu te présenter ?**

**Stéphane**: Mon poste officiel est directeur technique d'[eBiz](http://ebusinessinformation.fr). Je suis avant tout un développeur et fait du service depuis une douzaine d'année. Après des années de Java, je m'amuse depuis deux ans avec Scala, ce qui non seulement me dépoussière sérieusement le cerveau, mais me redonne de la satisfaction à regarder le code que je produit ;)

**La team du Lyon JUG : Tu t’intéresses particulièrement aux outils et pratiques touchant aux tests de performance. Quand fait-on généralement appel à un expert comme toi ? Lorsque tout va mal? Les tests de ce type sont-ils généralement bien intégrés dans le cycle de développement ?**

**Stéphane**: Je ne me définis pas vraiment comme un expert des tests de charge, mais plus comme un développeur. Je considère que c'est aux développeurs d'une application de monter les tests et d'investiguer les problèmes éventuellement mis en évidence, c'est de cette manière qu'une équipe monte en compétence, apprend de ses erreurs et apprend à "dompter la bête": l'application et son infrastructure. Dans cette logique, les tests de charges ne devraient pas être le job d'un expert que l'on dégaine seulement une fois le couteau sous la gorge. Je préfère donc accompagner une équipe sur la mise en place de ce genre d'outil et de process et qu'elle soit ensuite autonome.

Dans la pratique, il est vrai que j'interviens souvent en fin d'un très (trop) long cycle de développement, voire en mode pompier quand les problèmes sont constatés. Dans les deux cas, les impacts sont souvent lourds: il est rare que les problèmes proviennent d'une seule petite erreur qui s'est glissée dans un coin. Assez souvent, ce sont les règles de développement qu'il faut revoir, voire l'architecture. A mon sens, les tests de charge devraient être présents le long du cycle de développement, afin d'être en mesure de rectifier le tir au plus tôt.

**La team du Lyon JUG : Pour exécuter les tests de performances , il est bon de limiter les écarts entre la production (“la vraie vie”) et le contexte des tests de performances? Sur quels points portent principalement les écarts?**

**Stéphane**: Effectivement, on est dans le domaine de la simulation, et donc des écarts peuvent se glisser.

Tout d'abord, l'infrastructure disponible pour les tests n'est pas forcément alignée avec celle de la production. Dans le cas d'un hébergement en interne, monter une copie conforme de la production a un vrai coût, si bien que la copie n'est pas forcément à niveau. On doit alors faire avec, ou tenter des mises à l'échelle (moins de serveurs, mais moins d'utilisateurs), mais on est certes dans l'approximation.

Ensuite, il va falloir modéliser le comportement des utilisateurs: définir des enchainements d'actions, des pauses qui vont déterminer la charge produite. Dans le cas où l'on cherche à reproduire un problème survenu en production, on peut s'appuyer sur des access logs ou des données d'un outil d'analytics. Dans le cas où l'on cherche à étudier l'impact d'une nouvelle feature, voire le lancement d'une nouvelle application, on ne dispose pas de ces données de production. Il faut donc s'appuyer sur des projections business, ou confier l'enregistrement des scénarios à un pannel de beta-testeurs.

Bref, c'est une tâche complexe.

**La team du Lyon JUG : Quel que soit l’outil permettant d'exécuter les tests de performances, on récupère souvent beaucoup de données mais il est parfois difficile de les interpréter ou du moins à corroborer les différents résultats (temps de réponse, données système, etc. ). Quelles méthodes/outils utilises-tu pour l’analyse de résultats?**

**Stéphane**: Les injecteurs de charge proposent tous des rapports permettant d'identifier les requêtes en erreur ou lentes du point de vue de l'injecteur. Cela permet de cibler un peu, mais commence effectivement alors le travail d'investigation, et pour cela, il faut disposer de données du système sous stress.

En général, les grosses sociétés sont équipées de solutions de monitoring, type AppDynamics, Dynatrace ou Appneta. Je m'appuie alors sur ces outils. Sinon, sur des petites applications qui ne sont pas intégrées au milieu d'une nébuleuse SOA, je me sers assez souvent de Yourkit.

Ensuite, je travaille de manière assez artisanale, avec un tableur, et en ouvrant le code.

**La team du Lyon JUG : Tu vas nous parler de Gatling lors de ta prochaine session au Lyon JUG. Pourquoi t’intéresses-tu à cet outil? Qu’a-t’il de mieux par rapport aux autres? Quelle est votre roadmap pour la suite?**

**Stéphane**: Je suis à l'origine de [Gatling](http://gatling-tool.org/) un outil de test de charge. J'ai lancé ce projet il y a deux ans, après plusieurs expériences frustrantes sur les outils disponibles alors, notamment JMeter et The Grinder.

A l'époque, JMeter avait de vrais problèmes de performances qui obligeaient rapidement à monter un clusters d'injecteurs, et The Grinder souffrait de fuite mémoire. Depuis, JMeter se comporte mieux. J'ignore ce qu'il en est de The Grinder.

Ensuite venait le problème de l'utilisabilité. JMeter est dans une approche end-user, avec une interface graphique riche. Je peux comprendre que cette approche conviennent à certains, mais elle ne me convenait pas à moi. Il est fréquent de devoir coder certaines fonctionnalités spécifiques à l'application, et je n'ai jamais trouvé pratique de devoir copier-coller un bout de BeanShell ou de Groovy dans une textbox. En ce sens, j'aimais l'approche de The Grinder dont les scenarios sont en python, et donc dans lesquels on peut venir coder ce que l'on veut.

Gatling propose une approche par code. Les scénarios sont des classes Scala, s'appuyant sur un DSL riche, mais dans lesquelles l'utilisateur a la main pour venir réorganiser ou customiser. Ensuite, Gatling s'appuie sur un moteur asynchrone, aussi bien au niveau de l'enchainement des actions, qu'au niveau IO. Cela permet de consommer moins de resources, donc potentiellement d'utiliser un nombre moins important d'injecteur ou d'éviter de lagger.

Pour la suite, nous avons beaucoup de choses dans les cartons.

Nous travaillons depuis janvier dernier sur Gatling 2, et nous revoyons beaucoup de choses, et encore beaucoup à faire. Le premier objectif est de nettoyer nos API internes afin de pouvoir les ouvrir et permettre à la communauté de développer plus facilement le support d'autres protocoles. Une première version du support des WebSockets est déjà présent dans le master. JDBC devrait suivre. Nous allons également revoir le moteur d'orchestration pour le rendre plus dynamique, par exemple pour pouvoir faire du pacing/throttling. Bref, nous avons eu énormément de retour très enrichissants de la communauté que nous allons prendre en compte.

Pour finir, nous allons probablement lancer une structure proposant du service autours de Gatling, voire des composants commerciaux.

 

### **Merci Stéphane!**

 

**Les inscriptions pour la session de Stéphane et Pierre sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/gatling).**
