---
layout: "post"
author: 
  - "cfalguiere"
title: "Paris JUG de mai : Build, Share & Deploy jusqu’au bout de la nuit (3)"
date: "2010-05-14"
categories: 
  - "les-conferences"
tags: 
  - "git"
  - "paris-jug"
---

| Pour faire suite à la présentation des DVCS en général, David va nous emmener dans une visite de Git. |

Une très belle présentation, soutenue par Maître Yoda (il faut une citation de Maître Yoda par session au JUG) et des démos de gestion de configuration en live (incroyable non ?)

<table border="0"><tbody><tr><td></td></tr></tbody></table>

## Git, la gestion de conf qui vous veut du bien !

[David Gageot](http://www.parisjug.org/xwiki/bin/view/Speaker/DavidGageot) est CTO d’[AlgoDeal](https://beta.algodeal.com/home.html), un site qui permet de mettre au point et valoriser ses propres stratégies boursières basées sur des techniques quantitatives. Il nous a présenté [Git](http://git-scm.com/) qu’il utilise depuis le début du projet.

[![David Gageot sur le point de dégainer l"effaceur de mémoire des Men In Black pour nous faire oublier tout ce que l'on sait sur les VCS](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-3/JUG_20100511_SBD_git1-199x300.jpg "JUG_20100511_SBD_git1")](http://jduchess.org/duchess-france/files/2010/05/JUG_20100511_SBD_git1.jpg)

Tout d’abord David et son équipe ne travaillent pas du tout de la même manière que Sébastien. Il nous en dira un peu plus sur la fin, mais sur le principe tout le monde met à jour tout le temps. C’est ça aussi la souplesse d’un DVCS.

Un autre avantage est qu’il peut être totalement _**autonome**_. Il a la totalité de son projet avec tout l’historique en local sur sa machine et peut nous faire des démos sans avoir accès aux serveurs de sa société, ce qui est impensable avec d’autres VCS. D’un point de vue plus pratique, ça permet de travailler dans le train par exemple.

David va nous présenter quelques raisons très motivantes pour passer à Git. Flashage de la mémoire à la Men in Black et on y va.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Le tube de l’été : Git bisect

L’histoire commence un matin face à l’impossibilité de faire fonctionner mvn eclipse:eclipse.

C’est une fonction qu’on n’utilise pas très souvent (elle sert à initialiser les projets eclipse) et semble cassée silencieusement depuis un bon moment. Mais il sait que la version 1.1.3 fonctionnait. Quand a-t-on cassé le build ? et à cause de quoi ? _**La traque commence.**_

Trouver le commit en cause en testant les versions une par une en remontant le temps entre le HEAD et la 1.1.3 va prendre beaucoup de temps. Une stratégie plus efficace consiste à ne tester que certaines versions en utilisant une méthode dichotomique. Manuellement, c’est fastidieux de calculer la version médiane. Mais voilà, Git vient avec plein d’outils magiques, dont [git bisect](git bisect) … Git bisect va calculer tout seul un plan de test des versions en utilisant la dichotomie et tester la commande qu’on lui indique sur ces différentes versions.

Petite démo sur notre build cassé en faisant tester mvn eclipse:eclipse à chaque pas. git bisect annonce qu’il va trouver en 8 coups. Au bout de quelques essais git bisect a trouvé la première version qui ne marche plus. Il s’agit de la version dans laquelle le plugin  [Maven Enforcer](http://maven.apache.org/plugins/maven-enforcer-plugin/) a été mis en place et configuré pour n’autoriser que Maven 3. Petite recherche complémentaire, c’est un bug connu.

[![David nous apprend la chorégraphie du git bisect, la danse de cet été au JUG Summer Camp. On ouvre les bras sur les builds 1.3.12 à 1.4.2 et on tranche au milieu sur le 1.2.22, et on recommence avec 1.2.22 à 1.3.12 ...](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-3/IMG_0066-300x225.jpg "IMG_0066")](http://jduchess.org/duchess-france/files/2010/05/IMG_0066.JPG)

L’outil est assez **_bluffant_** et depuis David ne peut plus s’en passer pour chercher les régressions.

**_Question_** d’Emmanuel Bernard du podcast [Les Cast Codeurs](http://lescastcodeurs.com/) : _“Et si t’as pas de test , tu fais comment ?”_. Et bien s’il manque un test, tu rajoutes un test et tu l’envoie dans le passé en faisant du [cherry picking](http://www.kernel.org/pub/software/scm/git/docs/git-cherry-pick.html). Quand  je vous disais qu’on est en pleine Science Fiction ! Mais c’est réel.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Le build incassable

Le souci lorsque l’on travaille à plusieurs c’est que ce qu’on livre même si ça marche localement peut ne pas fonctionner avec d’autres livraisons faites dans la même période. Pour ça on a mis en place des solutions compliquées appelées _**serveurs d’intégration**_, [Hudson](http://hudson-ci.org/) le plus souvent,  pour jouer le build sur le repository commun puis afficher un statut (les voyants bleu/jaune/rouge).

Et puis comme le build casse plus ou moins souvent, on doit gérer des stats, qui affichent des soleils ou des petits nuages en fonction des statuts des dernières exécutions. Ces serveurs d’intégration sont des machines dédiées. Les services  tombent, il faut les monitorer, avoir des fermes de machines pour tenir la charge. Bref, on rajoute des complications par dessus des complications.

_**Et si tout bêtement les builds ne cassaient pas ?**_ Si vous passez chez Algodeal un jour, passez voir leur serveur d’intégration. C’est une oeuvre d’art. Mais il ne sert à rien, les builds ne sont jamais cassés. Science-Fiction ? Magie ?

[![En même temps, c'était joli la météo du build.](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-3/JUG_20100511_SBD_build_incassable.jpg "JUG_20100511_SBD_build_incassable")](http://jduchess.org/duchess-france/files/2010/05/JUG_20100511_SBD_build_incassable.jpg)

L’intégration des livraisons est vérifiée en amont sur un principe de **_private build_**. Certains serveurs d’intégration comme [Team City](http://www.jetbrains.com/teamcity/) proposent ce type de fonction. Lorsqu’un développeur fait un commit, il est d’abord appliqué dans un bac à sable, et si ça marche le vrai commit est fait. Mais Team City impose des contraintes, par exemple utiliser [IntelliJ IDEA](http://www.jetbrains.com/idea/).

Algodeal a mis en place le même principe en utilisant la possibilité d’avoir des dépôts multiples et la flexibilité de Git sur la gestion des contenus.

Chaque développeur a sur sa machine son dépôt personnel et un dépôt qui est une copie du projet qui sert au build privé.  Il pousse des mises à jour pour intégration sur le dépôt sur sa copie du projet.  Un script prend en charge le build et la propagation sur le dépôt commun si le build a marché.

Plus de serveur d’intégration centralisé, plus de machine dédiée, plus de Hudson, plus de voyant vert/rouge, et surtout _**plus de build cassés**_.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Démo de Gource

David nous a ensuite fait une rétrospective de son projet sous [Gource](http://code.google.com/p/gource/). C’est un outil graphique qui permet de visualiser l’évolution d’un projet Git dans le temps : l’arrivée de nouvelle personnes, l’arborescence du projet, les changements. C’est encore un outil magique, même si c’est plus contemplatif qu’utile.

Le projet d’Algodeal est marqué par quelques feux d’artifices. Tout d’abord les deux changements de nom de la société, d’Algodeal à Tech4Quant, puis de Tech4Quant à Algodeal. Ne doutant de rien David a renommé tous les packages Java à chaque fois.  Il a aussi réorganisé les projets Maven un matin pour en multiplier le nombre par 2. Et Git s’en est bien sorti, là où un VCS standard aurait créé une monstrueuse panique.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Comment démarrer avec Git ?

David Gageot fera une présentation plus approfondie à [Agile France 2010](http://conf.agile-france.org/) le 31 Mai et le 1er Juin. Vous pouvez aussi le suivre sur son blog [JavaBien](http://blog.javabien.net/).

_**Un peu de lecture ?**_ L’excellent [Pro Git](http://progit.org/) chez Apress vous apprendra comment revoir toute votre conception de la gestion de configuration avec Git.

Il existe aussi une documentation assez complète sur Internet.

Et puis finalement rien de vaut l’utilisation pour se faire une idée. Git ne nécessite pas de serveur centralisé, d’administrateur. Il suffit d’installer une des versions de Git selon son OS et vous pouvez démarrer tout de suite avec un dépôt local.  Il existe même une version portable si vous n’avez de droits de super user.

Vous voulez démarrer Git en travail _**collaboratif**_ ? [Github](https://github.com/) vous permettra de participer à des projets open source ou de créer votre propre projet.

Pour relativiser un, peu l’enthousiasme de David, Git pour le moment ne bénéficie pas encore de la même intégration dans les outils que SVN dans les outils de développement. En particulier sous Windows, il n’existe à peu près que la ligne de commande. Mais ça va venir, et on présent que ça sera bien.

20h30, il est temps d’aller voir ce buffet.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

<table width="100%" border="0"><tbody><tr><td style="text-align: left;"><a href="http://jduchess.org/duchess-france/?p=371">Précédent : la présentation DVCS</a></td><td style="text-align: right;"><a href="http://jduchess.org/duchess-france/?p=444">Suivant : la présentation Maven3</a></td></tr></tbody></table>

_Les photos sont de José Paumard et Claude Falguière._
