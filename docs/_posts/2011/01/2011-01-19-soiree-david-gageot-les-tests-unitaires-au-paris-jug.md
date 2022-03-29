---
layout: "post"
author: 
  - "Audrey"
title: "Soirée David Gageot : les tests unitaires au Paris JUG"
date: "2011-01-19"
categories: 
  - "les-conferences"
tags: 
  - "paris-jug"
  - "tests-unitaires"
---

| Vous voulez prouver à tout le monde que non content d’être là mardi vous avez écouté David  avec toute la discipline de padawan requise et que vous n’étiez pas en train de chercher la fève gagnante parmi les galettes du buffet ? |

Alors faites le test et frimez devant vos collègues en réalisant un 100% parfait !

## Si mon test dépasse l’heure :

A – Mon build prend trop de temps mais c’est pas grave, vu la rapidité de Maven, personne ne s’en rendra compte B – C’est trop long, je le supprime et j’arrête les tests C – Cool, je peux rester à jour de ma timeline Twitter tout en jouant sur Facebook ! D – J’ai toujours un test en train de tourner, c’est parfait car je travaille en NTD (Neverending Test Development)

[![IMG_6972](/assets/2011/01/2011-01-19-soiree-david-gageot-les-tests-unitaires-au-paris-jug/5360459449_ff0f88d474.jpg)](http://www.flickr.com/photos/jduchess/5360459449/ "IMG_6972 by jDuchess, on Flickr")

## Pour résoudre un problème difficile David Gageot :

A – Se maquille outrageusement et met des platform boots B – Fait beaucoup de bruit C – Applique le principe KISS (Keep It Simple, Stupid) D – Viens nous voir

## La phase de test sera forcément plus courte :

A – Avec une solution d’intégration continue multi-agent avec Hudson parallélisée sur un cloud B – Si je change pour un quadri-coeur C – En utilisant l’option “-T4” de Maven3 dans la commande “mvn clean install” D – Si chaque test est plus performant E – Si on enlève ceux qui ne servent à rien

## Je peux rendre mes tests plus rapides :

A – En retournant jouer dans mon bac à sable B – En cassant tous mes gros tests en petits morceaux C – En me laissant pousser la barbe et en me teignant en roux dans l’espoir de ressembler à David Gageot D – En délaissant Sélénium pour tester le code de l’IHM au profit d’un vrai test unitaire en Javascript E – En améliorant mon code

## Que sont les tests d’intégration ?

A – Ils servent à accueillir les nouveaux tests B – Ils permettent de vérifier que l’application fonctionne de bout en bout C – Ils testent les spécifications du domaine D – Ils sont nécessaires pour tester l’IHM

## A quoi sert le plugin MoreUnit pour Eclipse ?

[![IMG_7037](/assets/2011/01/2011-01-19-soiree-david-gageot-les-tests-unitaires-au-paris-jug/5361074742_58bbd0a6a0_m.jpg)](http://www.flickr.com/photos/jduchess/5361074742/ "IMG_7037 by jDuchess, on Flickr") A – A dupliquer tous les tests unitaires pour les passer 2 fois au cas où B – A montrer qu’Eclipse c’est quand même vachement mieux qu’IntelliJ IDEA vu que ça n’existe pas pour d’autres IDE C – A fournir des tas de fonctionnalités super sympa aux courageux développeurs qui testent envers et contre tout et peuvent alors siffler en testant D – A lancer le test depuis la classe sous test unitaire

## A quoi sert le plugin Infinitest ?

A – A ne jamais terminer chaque test pour faire du NTD (Neverending Test Development) B – A rejouer les tests impactés de manière transitive par la modification d’une classe C – A embêter les gens qui utilisent TestNG pour qu’il reviennent à JUnit D – A visualiser rapidement quel test est mis en échec par les modifications qui viennent d’être apportées dans le code

## Qu’est ce que FEST-Assert ?

A – Un truc plus tendance que [Hamcrest](http://code.google.com/p/hamcrest/) B – Un outil qui extrait les règles à vérifier du code pour éliminer la maintenance C – Une librairie qui permet d’écrire les assertions de manière plus naturelle D – Un site pour s’assurer qu’il y a toujours un festival dans le coin

## Quelles sont les annotations JUnit valides ?

[![IMG_7030](/assets/2011/01/2011-01-19-soiree-david-gageot-les-tests-unitaires-au-paris-jug/5361074200_94a4eddd64_m.jpg)](http://www.flickr.com/photos/jduchess/5361074200/ "IMG_7030 by jDuchess, on Flickr")

A – @Rule B – @AfterTestWhenAllIsFine C – @Theory D – @Categories et @SuiteClasses

## Les réponses

Les réponses sont dans un [post secret](http://jduchess.org/duchess-france/blog/soiree-david-gageot-les-tests-unitaires-au-paris-jug-les-reponses/) protégé par mot de passe, mais comme on sait que vous allez répondre à tout en 5 mn et ne pas pouvoir patienter plus longtemps pour prouver à vos collègues que vous êtes maintenant incollable sur les tests unitaires, le voici : testsrocks ![;-)](/assets/2011/01/2011-01-19-soiree-david-gageot-les-tests-unitaires-au-paris-jug/icon_wink.gif)

_Les photos sont de José Paumard du Paris JUG._
