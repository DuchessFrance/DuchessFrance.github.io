---
layout: "post"
author: 
  - "Ludwine"
title: "Les mains dans le code avec Ceylon"
date: "2012-12-09"
categories: 
  - "les-mains-dans-le-code"
tags: 
  - "ceylon"
  - "jvm"
  - "langage"
---

| ![](/assets/2012/12/2012-12-09-les-mains-dans-le-code-avec-ceylon/la-marmite-hands-on-450-200.png) |

Une fois n'est pas coutume, les Duchess vous invitent pour ce 3ème et dernier 'les Mains dans le code' de décembre à venir apprendre un nouveau langage tournant sur la JVM. Ce Hands-On aura lieu le mardi 18 décembre et portera sur **Ceylon**.

## Ceylon

Ceylon est un nouveau langage de programmation lancé par Red Hat et Gavin King. Ses objectifs sont :

- être facilement compréhensible par les développeurs Java et C#
- éliminer un peu de verbosité de Java tout en restant lisible par tous les programmeurs
- améliorer le typage fort de Java
- proposer une syntaxe déclarative dans le langage afin de ne plus avoir besoin d´XML et de supporter la description d'interfaces utilisateurs naturellement
- supporter et encourager un style de programmation plus fonctionnelle avec des objets immuables et des fonctions d´ordre supérieur
- proposer un bon support de méta-programmation, afin de faciliter l´écriture et l'utilisation de frameworks, et proposer un système de module intégré

Avant tous ces objectifs, Ceylon est conçu pour de vrais projets de la vie réelle et pour faciliter la vie des équipes de développement au quotidien.

## La session

Pendant cette session, Emmanuel Bernard et Stéphane Epardaud vont vous aider à apprendre le langage de programmation Ceylon, main dans la main, de l'usage de l'IDE au langage, en passant par l'utilisation d'outils variés. Vous irez jusqu'à lancer votre propre module de répertoire et publier votre premier module Ceylon sur celui-ci et sur le répertoire officiel Ceylon des modules.

Il est ouvert à tous, bien sûr, aucune connaissance de Ceylon n'est requise.

## Pré-requis de la soirée

Voici toutes les étapes à suivre pour bien configurer son JDK et Ceylon :

-  Installez le [JDK Java 7](http://www.oracle.com/technetwork/java/javase/downloads/java-se-jdk-7-download-432154.html "JDK7"), et le configurez comme JDK par défaut
-  Installez la distribution command-line de [Ceylon](http://ceylon-lang.org/download/ "Ceylon")
-  Si vous n´avez pas réussi à configurer Java 7 comme JDK par défaut sous Windows, remplacez le fichier " bin\\java.bat" de la distribution Ceylon par [https://github.com/ceylon/ceylon-compiler/raw/master/bin/java.bat](https://github.com/ceylon/ceylon-compiler/raw/master/bin/java.bat) et définissez la variable JAVA\_HOME pour qu´elle pointe vers votre distribution Java 7
-  Vérifiez que Ceylon tourne : "ceylon --version" doit afficher la bonne version de Ceylon
-  Installez [Eclipse Juno](http://www.eclipse.org/downloads/ "Eclipse") et le plugin Eclipse Ceylon via [http://ceylon-lang.org/download/](http://ceylon-lang.org/download/), le marketplace ou l'[update site](http://ceylon-lang.org/documentation/1.0/ide/install/ "Update site")
- Vérifiez que vous pouvez créer un nouveau projet Ceylon par l´IDE et qu'on peut le lancer comme "Ceylon Application" (faire un projet "demo" avec "Hello Word ! pour tester)
-  Vérifiez enfin que la ligne de commande fonctionne également pour votre projet : dans le répertoire de votre projet Ceylon "demo", la commande "ceylon compile demo" doit compiler votre projet et "ceylon run demo/1" doit afficher "Hello World!"

## Les speakers

**Emmanuel Bernard** est architecte plate-forme données à JBoss pour Red Hat et est un membre de l'équipe Hibernate. Il a dirigé l'implémentation JPA d'Hibernate. De plus, il a fondé et dirige Hibernate Search, Hibernate Validator ainsi que le petit nouveau Hibernate OGM. Emmanuel est membre de l'expert group JPA 2.1 et spec lead de Bean Validation. Il intervient régulièrement dans diverses conférences et JUGs, dont JavaOne, JBoss World, Devoxx et est le co-auteur d'[Hibernate Search in Action](http://emmanuelbernard.com/books/hsia/) publié par Manning. Il est aussi le fondateur et co-hôte de deux podcasts: [Les Cast Codeurs](http://lescastcodeurs.com) (Français) et [JBoss Community Asylum](http://asylum.jboss.org) (Anglais).

Depuis les hautes montagnes de Nice, **Stéphane Épardaud** travaille pour Red Hat sur le projet Ceylon. Il a travaillé sur divers projets tel qu'un éditeur XML WYSIWYG, une libraire de multi-threading en C, ou encore sur des services web 2.0 RESTfull et des interfaces web riches en HTML 5 / Javascript. Avide de partage de connaissance,on le retrouve dans des conférences telles que Scheme Workshop, Java User Groups, dont le Riviera Java User Group qu'il a crée avec Nicolas Leroux. Acteur passionné de l´open source depuis le début, il contribue au projet RESTEasy ainsi qu'au framework Play!.

## La soirée

La soirée aura lieu  **mardi 18 décembre** à partir de **19h30** chez [Capitaine Train](http://www.capitainetrain.com/ "Capitaine Train"), que nous remercions pour son accueil et pour le buffet.

 

[![](/assets/2012/12/2012-12-09-les-mains-dans-le-code-avec-ceylon/capitainetrain-300x67.png "capitainetrain")](http://www.duchess-france.org/wp-content/uploads/2012/12/capitainetrain.png)

Les inscriptions ouvriront le  **lundi 11 décembre à midi** sur [EventBrite](http://ceylon.eventbrite.com "Eventbrite").
