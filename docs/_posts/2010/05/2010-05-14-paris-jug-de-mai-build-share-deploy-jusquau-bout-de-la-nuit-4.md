---
layout: "post"
author: 
  - "cfalguiere"
title: "Paris JUG de mai : Build, Share & Deploy jusqu’au bout de la nuit (4)"
date: "2010-05-14"
categories: 
  - "les-conferences"
tags: 
  - "maven"
  - "maven3"
  - "paris-jug"
---

| Petit tour au buffet avant d’attaquer la deuxième partie de soirée. |

Comme d’habitude, c’est encore là qu’on apprend des tas de choses, et qu’on peut revenir un peu au réalités : Quel est le revers de la médaille ? quand va-t-on me laisser l’utiliser ?

[![Pour fêter son 10ième client de l'eXpress Board, Nicolas Martignole finance le buffet.](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-4/JUG_20100511_SBD_poster_buffet.jpg "JUG_20100511_SBD_poster_buffet")](http://jduchess.org/duchess-france/files/2010/05/JUG_20100511_SBD_poster_buffet.jpg)

Tout le monde est très sage ce soir. 21h, ils sont tous remontés dans la salle de conférence à l’heure dite, sans le coup de sifflet rituel d’Antonio. Très motivés par Maven 3 ?

<table border="0"><tbody><tr><td></td></tr></tbody></table>

## Maven 3

[Nicolas De loof](http://www.parisjug.org/xwiki/bin/view/Speaker/DeloofNicolas) et [Arnaud Héritier](http://www.parisjug.org/xwiki/bin/view/Speaker/HeritierArnaud), tous les deux commiters Maven, nous ont préparé un véritable show en duo basé sur les rôles de Jamy et Fred dans l’émission  [C’est pas sorcier](http://c-est-pas-sorcier.france3.fr/).

[![Arnaud où est ton pull jaune ?](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-4/IMG_0089-300x225.jpg "JUG_20100511_SBD_maven1")](http://jduchess.org/duchess-france/files/2010/05/IMG_0089.JPG)

Allez Marcel, ‘On va migrer vers Maven 3′  !

Nicolas De loof est très bon dans son rôle. Il a réussi à nous faire vivre ses relations compliquées avec son pote  Jason qui veut faire plein de trucs avec Maven. Il parle de  [Jason van Zyl](http://maven.apache.org/team-list.html) le fondateur de [Maven](http://maven.apache.org/). Présentation très vivante, sur un sujet qui n’était pas évident vous allez le voir.

Maven 3 est compatible avec toutes les versions précédentes. Plus de tests ont été faits pour le rendre plus robustes et assurer la compatibilité. Dans 99,99 % des cas ça passe tout seul. Dans les autres cas, ce sont des problèmes dus aux descripteurs de projet, car ils sont plus stricts en Maven 3. Et aussi [Maven Site](http://www.sonatype.com/books/mvnref-book/reference/site-generation-sect-building.html) ne marche pas en Maven 3. C’est plus la peine de leur dire : ils savent.

Maven 3 a été entièrement refondu. L’objectif N°1 était d’améliorer la compatibilité.

L’équipe Maven a appris de ses erreurs. Maven 1 était immaintenable. Maven 2 a fait table rase, plus maintenable, un support des plugins. Une joli architecture mais pas souple et peu extensible, difficile à aborder pour les gens qui veulent rentrer dans le code. Nicolas nous partage les déboires qu’il a pu rencontré lors du développement de son plugin GWT.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Les nouveautés

Quelques modifications prévues : _**supprimer [Plexus](http://plexus.codehaus.org/)**_, mal documenté et peu utilisé en dehors de Maven, pour le remplacer par un IoC standard base sur la [JSR 330](http://jcp.org/aboutJava/communityprocess/final/jsr330/index.html). [Spring](http://www.springsource.org/) ou sont [Guice](http://code.google.com/p/google-guice/) est envisagés, mais rien de clair pour le moment.

[![Nicolas de loof: Ils sont pas beaux mes wagons ? ](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-4/IMG_0098-300x225.jpg "JUG_20100511_SBD_maven2")](http://jduchess.org/duchess-france/files/2010/05/IMG_0098.JPG)

Maven passe enfin sur **_Java 5_** et va donc enfin pouvoir utiliser les [Generics](java generics). Le code est plus propre. Les documentations ont été améliorées, en particulier pour distinguer les API publiques et privées.

Le modèle de plugin de Maven 3 est plus interactif. Le plugin [Aggregator](http://communitymapbuilder.org/display/MAVEN/Aggregator+Plugins) qui servait à coordonner des opérations entre modules est supprimé. Une nouvelle fonction le **_Build plan_** va rendre les plugins plus adaptables au contexte. Le build plan permettra au plugin de comprendre ce qui va se passer lors de son exécution et ils pourront se configurer en fonction de ces informations.  Un exemple : le build plan pourra lister les tests à faire avant de commencer ce qui évitera de les jouer plusieurs fois parce qu’on ne sait pas s’ils ont été faits ou pas. Les builds plans devraient  éviter d’avoir besoin d’Aggregator.

Cela promet une meilleure intégration dans Eclipse. Maven 2 ne permettait que de réaliser des builds complets. Les build plus adaptables de Maven 3 permettront de laisser Eclipse faire ce qu’il sait faire dans les étapes du build (compiler par exemple) et de ne réaliser dans Maven que ce qui reste. Le plugin Eclipse les retirera du build plan, ce qui évitera les conflits.

**_Maven rencontre [OSGI](http://www.osgi.org/Main/HomePage)_**. **_Maven [Tycho](http://www.sonatype.com/people/2009/04/tycho-implicit-build-target-platform-support-from-maven/)_** implémente la gestion des modules et des dépendances basée sur OSGI. Eclipse est basé sur un modèle OSGI. Le moteur qui installe et les gère les dépendances est Eclipse P2 (pour Provisioning Platform). Grâce à Tycho, Maven aura une meilleure intégration avec Eclipse et les repositories de bundle OSGI au format P2.  Le **_plugin Eclipse [M2Eclipse](http://m2eclipse.sonatype.org/)_** s’appuie sur Tycho.

_**Le POM devient polyglotte**_. Il pourra être écrits dans d’autres langages qu’XML (Python, Groovy). une nouvelle syntaxe va également permettre de définir des exclusions globalement et non pas au niveau de chaque dépendance.

Les logs sont plus lisibles.

La possibilité de faire des **_[mixins](http://en.wikipedia.org/wiki/Mixin)_** c’est à dire  d’avoir des héritages multiples et non plus strictement hiérarchiques.

**_Les performances sont améliorées_**, en particulier par la possibilité de **_paralléliser_** certaines parties du build. C’est Maven qui analyse les branches parallélisables et les points de synchronisation. Par exemple, sur un bi-core, le temps passe de 11mn en Maven 2, à 10 mn en Maven 3 et 6 mn en Maven 3 sur les 2 cores en parallèle. Bien sûr tout celà dépend de la présence ou pas d’éléments parallélisables. Cette possibilité est aussi intéressante pour les fermes d’intégration continue (comme [Hudson](http://hudson-ci.org/)) qui hébergent des builds complexes et longs.

[![Arnaud, Nicolas et Antonio en train de comploter pour savoir comment ils allaient faire pour donner le bouquin à une fille.](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-4/IMG_0100-300x225.jpg "JUG_20100511_SBD_maven3")](http://jduchess.org/duchess-france/files/2010/05/IMG_0100.JPG)

De nouveaux outils : une  **_console [Maven Shell](http://shell.sonatype.org/)_** qui permet d’avoir un résultat en couleur, et accélère un peu les builds en évitant de relancer la JVM et en mettant en cache les descripteurs Maven. Elle permet aussi de configurer des environnements Maven distincts selon les projets.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Pourquoi passer à Maven 3 ?

Il n’y a pas de fonctionnalité renversante, mais ça fonctionne mieux et plus vite. Le nouveau plugin Eclipse [M2Eclipse](http://m2eclipse.sonatype.org/) devrait permettre aussi de gagner du temps et est à tester.

Maven 3 est en béta 1 pour le moment. L’équipe travaille toujours à porter les composants qui ne marchent pas comme Maven Site et eclipse:eclipse et attends vos retours.

L’organisation est toujours assez dirigée par le haut par Sonatype, et par Jason le pote à Nicolas,  mais elle se professionnalise et les processus sont plus clairs. Maven dispose d’une très forte communauté de développeurs et d’utilisateurs sénior.  Après la refonte en Maven 3 de nouveaux développeurs arrivent. C’est une bonne nouvelle, la communauté revie.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

Vous pouvez retrouver les deux trublions dans leur livre [Apache Maven](http://www.amazon.fr/Apache-Maven-Nicolas-loof/dp/274402337X/wwwdeveloppec-21?tag=citofgamonlco-20) aux éditions Pearson. Chose à noter, il est en français, c’est rare;

Un exemplaire a été donné à une des Duchess.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

## Appel pour l’ISEP

Antonio a profité du micro pour faire un appel pour l’ISEP. L’ISEP met ses locaux à disposition du JUG gracieusement. Le JUG vous propose de le remercier en réalisant des présentations ou des cours de quelques heures pour les étudiants de  l’ISEP sur des sujets  que vous maîtrisez. Ces cours ont lieu dans la journée.

N’hésitez pas à contacter l’équipe du JUG si vous avez des idées ou des propositions.

21h30 plus qu’une présentation, mais si on fait tout ça c’est bien pour déployer non ?

<table border="0"><tbody><tr><td></td></tr></tbody></table>

<table width="100%" border="0"><tbody><tr><td style="text-align: left;"><a href="http://jduchess.org/duchess-france/?p=417">Précédent : la présentation Git</a></td><td style="text-align: right;"><a href="http://jduchess.org/duchess-france/?p=449">Suivant : la présentation Deployit</a></td></tr></tbody></table>

_Les photos sont de José Paumard et Claude Falguière._
