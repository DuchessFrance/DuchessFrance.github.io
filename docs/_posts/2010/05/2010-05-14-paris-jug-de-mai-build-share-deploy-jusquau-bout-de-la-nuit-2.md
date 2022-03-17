---
layout: "post"
author: 
  - "cfalguiere"
title: "Paris JUG de mai : Build, Share &amp; Deploy jusqu’au bout de la nuit (2)"
date: "2010-05-14"
categories: 
  - "les-conferences"
tags: 
  - "dvcs"
  - "paris-jug"
---

| Premier sujet de cette première partie, les DVCS. Ça sonne un peu comme un titre de Justice, mais ça veut dire Distributed Version Control System ou en français Gestionnaires de Configuration Logicielle Distribués. |

Ces outils permettent de gérer plusieurs dépôts de code que l’on peut synchroniser avec d’autres dépôts en push (j’envoie mes mises à jour sur un dépôt distant) ou en pull (un dépôt distant vient chercher les mises à jour chez moi).

<table border="0"><tbody><tr><td></td></tr></tbody></table>

## DVCS

Onon Palui, aussi connu sous le nom [Sébastien Douche](http://www.parisjug.org/xwiki/bin/view/Speaker/DoucheSebastien), nous a fait un retour d’expérience très enlevé sur sa vie avant les DVCS et avec les DVCS, supporté par une présentation très graphique à la typographie très travaillée.

[![Onon Palui, un expert Python, qui ne fait pas de Java mais vient régulièrement au JUG !](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-2/JUG_20100511_SBD_dvcs1-199x300.jpg "JUG_20100511_SBD_dvcs1")](http://jduchess.org/duchess-france/files/2010/05/JUG_20100511_SBD_dvcs1.jpg)

Petit sondage à main levée pour commencer : _**qui utilise SVN, CVS, ClearCase, Perforce ?**_ On peut constater qu’une majorité de personnes dans la salle utilisent Subversion (SVN).

A son arrivée comme Technical Leader dans une startup SecurActive en 2007, Sébastien avait son kit de survie. Pour lui, la gestion de version du code source est le premier filet de sécurité. Les tests sont le second. Il transportait ses deux outils fondamentaux avec lui de société en société : Trac et Subversion.

Ils fabriquent un logiciel à partir d’une _**page blanche**_. On ne sait pas quelle direction prendre, on prend des culs de sac, fait beaucoup de refactoring, des POC.

En un an et demi Subversion est devenu synonyme de _**souffrance**_. Jusqu’au jour fatal où il a été impossible de faire une démo. Et là, Onon Palui s’est dit : ça ne peut pas continuer comme ça ! Pourquoi ?

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Pourquoi tant de souffrance ?

Le processus classique d’un développeur c’est _**checkout – code – commit**_. Ce qu’il a constaté en observant les développeurs avec qui il travaillait c’est qu’il passaient beaucoup de temps dans des _**micro-merges**_.

Les développeurs font des commits très souvent pour livrer le moindre changement : une correction de faute d’orthographe, une modification mineure. Ces commits fréquents obligent les autres à prendre constamment en compte les modifications des autres sur des fonctions qui ne sont pas encore finalisées.

Il peut même se développer une _**course qui consiste à commiter le plus vite possible**_, avant les autres pour ne pas avoir à merger les modifications des autres dans son code. Et encore plus de commits, encore plus de merges …

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Mais pourquoi ces micro-merges ?

Les développeurs livrent souvent pour historiser leur code et avoir un backup. Mais lorsqu’ils le font ils sont confrontés au merge. Plus il y a de changements à merger, plus c’est compliqué. Donc fragmenter et merger souvent permet de réduire la douleur.

Mais normalement _**les branches**_ devraient permettre à chacun de travailler en isolation et en sécurité sur sa branche de code. Les branches seraient la solution ?

Qui fait des branches sur Subversion ? (Silence dans la salle). Personne ne fait de branches sur Subversion car les merges de branches SVN sont un cauchemar.

_**Donc pas de branches.**_ Finalement Subversion est fait pour faire de l’_**historisation**_ et pas de la gestion de configuration.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Trouver autre chose ?

[![Sébastien Douche: "Je ne suis pas un numéro !"](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-2/IMG_0058-300x225.jpg "JUG_20100511_SBD_dvcs2")](http://jduchess.org/duchess-france/files/2010/05/IMG_0058.JPG)

Sébastien est un coach Agile. Son objectif est de _**supprimer le passage développement – livraison**_ pour avoir un environnement stable sur lequel on peut faire des démos tout le temps, et surtout faire des démos de fonctions en cours d’élaboration et pas encore intégrées.

_**La clé : l’isolation**_. Sébastien a donc commencé à étudier les DVCS. L’année clé a été 2005, l’année où Linus Torvald a créé Git.

Subversion reprend en les améliorant les principes de CVS qui date des années 80. Il faut changer de point de vue. Nettoyer le cerveau. Repenser les choses.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### 1ère notion a revoir : comment travaille-t-on ?

Un développeur est confronté à 3 workflows :

\- un _**workflow organisationnel**_ : la réalisation du produit dans sa globalité impose une gestion de repository qui peut se faire sur plusieurs modes : dépôt centralisé, existence de dépôts privés intégrés en pull par des intégrateurs dans le dépôt officiel, dépôts pyramidaux à la Linux, dépôts multiples resynchronisés sous contrôle pour les projets délocalisés.

\- un _**workflow personnel**_ : comment on travaille tout seul. Une branche par fct, par bug fix, par patch …

\- un _**workflow inter-personnel**_ : comment on travaille avec les développeurs autour de soi, échange par le dépôt central, échange de patch, cherry picking

Application concrète : le dépôt central n’autorise parfois pas les mises à jour. C’est le cas de la plupart des projets OpenSource où l’intégration des modifications se fait par échange de patch. Faute de pouvoir, faire un commit sur ces patchs, les développeurs doivent faire des copies de sauvegarde du code manuellement. Avec Git, les développeurs peuvent faire un commit sur leur dépôt local, même s’ils ne font pas un push de ces modifications vers le dépôt central.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### 2ième notion à revoir : la nature des objets manipulés

Les DVCS sont _**orienté contenu**_ et non change set.

Les _**VCS**_ (ou gestionnaire de configuration logicielle) classiques , sont _**orienté ChangeSet**_. Ils identifient des changements apportés à des fichiers. Lorsqu’un de ces fichiers a été modifié depuis le commit précédent, le VCS stocke un diff entre les deux états successifs du fichier. Il ne connait jamais vraiment l’état complet d’une version, il ne connait que des états successifs d’un fichier. Lorsque les noms changent, le VCS supprime un fichier et crée un autre fichier.

Les _**DVCS**_ (ou gestionnaire de configuration logicielle distribués) identifient des _**contenus**_. Un contenu à une position dans l’arborescence, une nom et une empreinte (un checksum MD5 de son contenu). Au commit, le DVCS fait un snapshot de tous les fichiers de la version. Si le fichier n’a pas changé, la version pointera sur l’ancienne copie, si  le contenu du fichier a changé, la version pointera sur le nouveau contenu. Comme les noms sont dissociés des contenus, lorsque les noms changent, seuls les index sont modifiés.

Application concrète : le renommage massif. Il est très très lourd sous Subversion, car il implique la suppression et la création de nouveaux fichiers. Avec un DVCS, les fichiers changeront seulement de noms.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Quels bénéfices ?

Les DVCS permettent de gérer une branche par fonction développée. _**Pas de mélange**_ des fonctions et donc un code plus _**stable**_. Il est également possible de faire des _**validations supplémentaires**_ fonction par fonction (revue de code, démo)

Dans sa société, 1 – les développeurs se concentrent sur leur code 2 – flexibilité : ils choisissent les outils qu’ils veulent 3 – push par fonction 4 – revue de code systématique par fonction livrée 5 – phase de démo avant push par fonction livrée 6 – moins de stress ! 7 – projet beaucoup plus stable

Conclusion _**:**_ SVN est une torture, _**Libérez vous ! Tentez Git**_

Dans le cas où votre infrastructure n’aurait pas l’esprit aussi ouvert que Sébastien Douche, Git permet des bindings vers Subversion pour avoir un workflow personnel en amont du workflow organisationnel.

[![Nicolas Martignole présente l'eXpress Board et le sponsoring du buffet pendant qu'Antonio aide David Gageot à équiper son micro](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-2/IMG_0059-300x225.jpg "IMG_0059")](http://jduchess.org/duchess-france/files/2010/05/IMG_0059.JPG)

Sébastien Douche organise également [Agile France 2010](http://conf.agile-france.org/) le 31 mai et 1er juin.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

## Annonce du sponsoring du buffet par l’eXpress Board

Un petit speech de Nicolas Martignole (aka [Le Touilleur Express](http://www.touilleur-express.fr/)) sur l’[eXpress Board](http://www.express-board.fr/), le site d’annonce d’emploi qu’il vient de créer. Pour fêter son 10ième client, il nous offre le buffet. Il a aussi fait un compte rendu de la soirée qui se trouve [là](http://www.touilleur-express.fr/2010/05/12/la-soiree-du-11-mai-2010-au-paris-jug-git-dvcs-et-lexpress-board/).

Mais avant, on enchaîne avec Git, il n’est que 20h !

<table width="100%" border="0"><tbody><tr><td style="text-align: left;"><a href="http://jduchess.org/duchess-france/?p=365">Précédent : l’Avant JUG et la présentation W3C</a></td><td style="text-align: right;"><a href="http://jduchess.org/duchess-france/?p=417">Suivant : la présentation Git</a></td></tr></tbody></table>

_Les photos sont de José Paumard et Claude Falguière._
