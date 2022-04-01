---
layout: "post"
author: 
  - "Audrey"
title: "JUG Summer Camp – Maven 3 au coeur de la Forge Logicielle"
date: "2010-09-15"
categories: 
  - "les-conferences"
tags: 
  - "forge-logicielle"
  - "jug-summer-camp"
  - "maven"
  - "maven3"
  - "usine-de-developpement"
  - "usine-logicielle"
---

| ![](/assets/2010/09/2010-09-15-jug-summer-camp-maven-3-au-coeur-de-la-forge-logicielle/4983715571_2d3c255839_o.jpg "aquarium4")   |
**Maven 3 au coeur de la Forge Logicielle** – Nicolas de Loof ([présentation](http://sites.google.com/site/jugsummercamp/presentations))  
_par Audrey Neveu_

Forge logicielle, usine logicielle, industrialisation … autant de termes un peu rédhibitoires au premier abord qui recouvrent tous un même besoin : celui d’être pro ! Nicolas de Loof nous a donc fait faire un petit tour des outils nécessaires à toute usine de développement qui se respecte en nous présentant ses préférés.

**La communication dans l’équipe**

Tout d’abord prenons l’essence même de cette usine : l’équipe. Comme le déplore notre speaker, trop d’équipes sont constituées d’un nombre excédent de manager pour un trop petit nombre de développeur. Les premiers ne sachant pas toujours en quoi consiste réellement le travail du second, un projet peut rapidement tourner à la catastrophe.

Quelques conseils pour éviter ça :

- favoriser la communication,
- partager les connaissances,
- éviter la spécialisation,
- se renseigner sur ce que font les autres,
- avoir une vision globale du projet.

Pour cela quelques outils intégrés peuvent venir à notre secours, l’important étant qu’ils s’intègrent de manière correcte entre eux. Le choix de Nicolas est la suite [Jira](http://www.atlassian.com/software/jira/) pour la gestion du suivi des bugs, des incidents et de projets qu’ils proposent.

_Agile ou fragile ?_

Certains softs vous permettent de gérer votre backlog, vos sprints, etc … bref toute l’agilité de votre équipe en un clin d’œil. Néanmoins comme le rappelle notre speaker, le bon vieux post-it a un avantage indéniable : celui d’être constamment visible. En effet, un outil comme [Greenhopper](http://www.atlassian.com/software/greenhopper/) nécessite que votre équipe le consulte régulièrement, que chaque développeur fasse l’effort d’aller visualiser le tableau alors qu’un mur judicieusement choisi par vos soins et quelques post-its de couleur seront toujours bien visibles par l’ensemble de l’équipe.

_Travailler à plusieurs_

Un projet ça se construit à plusieurs, et pour cela il nous faut un outil pour partager notre code. A l’heure actuelle vous utilisez probablement [svn](http://subversion.tigris.org/), au moins dans votre vie professionnelle, et serez d’accord sur le fait que ce système de gestion des versions a de nombreux défauts, parmi lesquels la gestion des branches pour n’en citer qu’un. Notre speaker ayant succombé au charme du plus ravageur des SCM, c’est sans surprise [Git](http://git-scm.com/) qu’il aura retenu notamment parce que ce qu’il apprécie chez lui, c’est que votre façon de travailler localement n’impacte pas le reste du projet. Bien qu’encore récent, Nicolas prédit qu’il va révolutionner notre petit monde et pour peu que vous suiviez l’actualité de la communauté actuellement, vous conviendrez qu’il a probablement raison.

**Outiller le projet**

_Le build_

Qu’est ce que le build ? Rien de moins que la génération du binaire, l’initialisation de l’environnement, la création d’une base de données, la configuration de l’IDE, la gestion de l’encodage etc …

Le grand classique des outils de build est bien entendu [maven](http://maven.apache.org/) : standard, portable, indépendant de l’environnement, Maven décrit les spécificités du projet plutôt que des commandes de construction.

Sa force réside dans les conventions qu’il a su imposer :

- tous nos outils qui prennent en compte la convention de Maven fonctionnent dès qu’on les plugge,
- n’importe quel développeur qui connaît Maven retrouvera rapidement ses marques, quelque soit le projet,
- les mêmes commandes produisent les mêmes résultats,
- il permet de tout faire sur son poste, sans un manuel de 50 pages pour comprendre les spécificités de gestion du build sur le projet.

Grâce à la gestion des dépendances, Maven a résolu le problème de la gestion des binaires : d’où vient ce jar, à quoi sert il, a-t-il été vérifié, comment diffuser nos propres binaires, quelle version est finale et quelle version est en snapshot ?

La meilleure solution pour profiter pleinement de la gestion des dépendances et des conflits est encore le repository manager qui va gérer l’indexation, la purge, la gestion des droits, etc … Le choix de Nicolas s’est porté sur [Nexus version pro staging suite](http://nexus.sonatype.org/) car il permet, entre autre de générer et déployer le livrable sans qu’il soit immédiatement accessible à tout le monde.

_Tester_

Que devez vous tester ? La réponse est simple : TOUT ! Aucun code ne devrait être livré sans avoir été testé, autrement dit : “All code is guilty until proven innocent”. Plusieurs méthodes s’offrent à vous pour réaliser vos tests, voyez plutôt :

- le Test Driven Development ou TDD : on commence par écrire le test, on fait tourner les tests pour voir les problèmes rencontrés, on écrit le code nécessaire, on relance les tests et ainsi de suite. Aucun framework cité par Nicolas mais le grand classique du genre est, sans conteste, [JUnit](http://www.junit.org/),
- le Behaviour Driver Development ou BDD : une des pratiques de l’XP programming dont le but est de comprendre de manière précise le souhait du client au travers d’un langage compréhensible par un non développeur : les user stories deviennent directement les tests. Pour cette pratique le choix de Nicolas s’est porté sur [Cucumber](http://cukes.info/) et [JBehave](http://jbehave.org/),
- les tests fonctionnels : ils visent à décrire le comportement que doit avoir l’application, de façon à ce que celui ci soit bien intégré par toute l’équipe, MOA comme développeur. L’outil le plus courant pour cette pratique et recommandé ici est [Fitnesse](http://fitnesse.org/FrontPage).

**Déployer l’application web**

Pour piloter le lancement et le démarrage d’un serveur d’application, le speaker recommande [Cargo](http://cargo.codehaus.org/), une application désormais un peu vieillissante ou encore [Arquillian](http://community.jboss.org/docs/DOC-14376?uniqueTitle=false) qui peut être vu comme son successeur. En effet, Arquillian permet de faire des tests d’application Java EE et ce, dans un conteneur embarqué ou déployé, avec possibilité de le démarrer à distance. On lui donne la description de l’archive à déployer avec des annotations et Arquillian se charge de tout : il déploie, lance les tests et donne un retour sur les résultats.

**Test du comportement de l’application dans un navigateur**

Afin de tester toute la partie fonctionnelle d’une application web, Nicolas a choisi [Selenium](http://seleniumhq.org/). Cet outil va nous permettre de lancer et de piloter un navigateur depuis le code afin de tester tous les comportements de l’application. La seule chose qui lui manque par rapport à un être humain, c’est de ne pas être capable de repérer les problèmes de CSS … Toutefois pour des questions de gain de temps, il vaut mieux utiliser [Selenium Grid](http://selenium-grid.seleniumhq.org/) qui a l’avantage de faire tourner des tests en parallèle sur plusieurs machines et donc d’être moins gourmand en ressource.

**Tests de performance / endurance**

Les tests de performance et d’endurance, s’ils sont effectués très tôt, permettent de détecter rapidement le moment où le code perd en qualité. Pour cela des outils tels que [JMeter](http://jakarta.apache.org/jmeter/) ou [Clif](http://clif.ow2.org/) permettent de collecter des données et d’avoir un historique des performances.

**Quand tester ?**

Dans l’idéal tout le temps, ce qui est recommandé avec Maven mais peut être long voire fastidieux d’où l’intérêt d’avoir des tests automatisés, ce qui nous amène à l’intégration continue. L’idée est cependant que les tests restent rapide, il faut donc faire un compromis entre le “tout testé” qui va prendre beaucoup de temps et le “testé partiel” où l’on va décider de remettre à plus tard les tests plus lourds, ce qui permet de déployer le snapshot pour qu’il soit testé le plus vite possible.

**Un feedback visuel**

Envoi de mail, de messages instantanés, utilisation de led … pour être efficace l’intégration continue passe par l’attention portée par les équipes de développement à l’état du build après chaque commit. Nicolas nous rapporte son expérience personnelle de l’un de ses projets où celui-ci était directement retransmis par des néons. Simple et ludique, cette solution était également un moyen d’alerter rapidement un développeur au cas où l’un de ses commits aurait cassé le build.

**L’intégration continue**

Certainement le plus populaire des outils d’intégration continue, [Hudson](http://hudson-ci.org/) est en effet bourré de qualités : très simple d’utilisation, il supporte maven 2 en natif et le support de maven 3 est déjà en cours, ce qui permettra de voir exactement quel module ne build plus et de faire de la rétroaction rapide. De plus, Hudson étant extensible par plugin, vous pourrez d’ores et déjà trouver votre bonheur parmi certaines extensions que Nicolas a répertoriées en plusieurs catégories : “indispensables” comme la notification ou le support SCM, “utiles” comme la recherche des TODO ou encore “geekesque” comme l’extension Chuck Norris. (Si vous cassez le build, Emmanuel Bernard Chuck Norris en personne vient vous botter le derrière ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) )

**Assurer la qualité**

Maintenant que vous avez tous les outils pour surveiller les performances de votre application, armez vous de métriques afin d’en surveiller la qualité, et notamment celle de votre code. Il existe des outils pour vous permettre de surveiller :

- la duplication de code
- la complexité cyclomatique (CCN)
- le nombre de ligne par classe / méthode
- le couplage entre objets (Ca, Ce)
- le code mort
- la couverture des tests
- les dépendances

L’outil de réference pour ce genre de mesure est bien entendu [Sonar](http://www.sonarsource.org/) qui va vous permettre, entre autre chose, de surveiller l’évolution de la qualité et de la complexité du code au fur et à mesure du développement (vue “time-machine”) ou encore de voir le top dix des méthodes qui violent les règles que vous aurez défini au préalable avec votre équipe (vue “violations drilldown”). Ce dernier point nécessite bien entendu d’effectuer en amont du développement des points de sensibilisation pour faire comprendre à chacun à quoi servent les règles.

**Produire le livrable**

Une procédure de Maven assez compliquée à mettre au point mais très efficace lorsqu’elle est maîtrisée est le cycle “release”. Celui-ci permet en effet de définir le processus de livraison : Maven va vérifier que tout est committé, tester tout, supprimer les snapshots, mettre un tag, faire un check out du tag, re-tester, etc … La vue complète des étapes de ce cycle est disponible dans la présentation de Nicolas (voir lien plus haut).

La livraison étant une étape parfois longue, Nicolas recommande l’automatisation du déploiement, avec l’aide de [DbMaintain](http://www.dbmaintain.org/overview.html) notamment, pour la gestion de la base de donnée. L’automatisation va permettre de déployer soit sur une plateforme de tests fonctionnels soit en plateforme de prod, de mettre à jour le repository central, etc …

**Gérer la documentation**

Pour documenter votre application, deux options s’offrent à vous : la doc dans le SCM, versionnée en même temps que l’application ou le wiki. Le wiki a l’avantage d’êter réactif, indexé, de tenir un historique et d’être accessible à tous : XWiki a en effet développé XEclipse et XWord pour éditer le wiki depuis eclipse ou word. Développeur ou Project Owner, plus personne n’a d’excuse pour ne pas l’ouvrir !

**Des postes de développement “prêt à coder”**

Vous avez sûrement tous à un moment ou à un autre, perdu du temps à installer votre poste de développement ou à tout simplement maintenir à jour l’environnement de développement de toute l’équipe. Pour résoudre ce souci, travailler dans une VM peut être la solution et pour cela deux solutions plutôt séduisantes arrivent :

- Sonatype annonce la venue de [OnBoard](http://www.sonatype.com/books/m2eclipse-book/reference/mse-intro-devonboard.html), une solution “prêt à coder” pour tous
- [the Blacksmith Project](http://code.google.com/p/blacksmith-project/wiki/BackLog) se propose de construire des forges logicielles à la demande : les utilisateurs peuvent voter pour les logiciels qu’ils souhaitent voir intégrer dans leur VM ou bien émettre des souhaits et la forge est prête à être téléchargée.
