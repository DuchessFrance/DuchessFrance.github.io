---
layout: "post"
author: 
  - "Audrey"
title: "Soirée Stephen Colebourne au Paris Jug"
date: "2011-03-15"
categories: 
  - "les-conferences"
tags: 
  - "joda-money"
  - "joda-time"
  - "paris-jug"
---

| Peu de monde à l’avant Jug et pas la foule des grands jours pour ce Paris Jug post 3ème anniversaire et c’est bien dommage pour ceux qui ne sont pas venus car Stephen Colebourne nous avait préparé une soirée passionnante autour de Java. |

# Once upon a time

Pour commencer, petit retour sur l’histoire de Java de sa naissance à aujourd’hui, en passant par la présentation des divers acteurs de cette épopée : Sun, Apache, Oracle mais également Google. Aux travers d’événements plus récents (le désengagement d’Apache du JCP et les retentissantes attaques d’Oracle contre Google) Stephen nous a livré ses réflexions sur l’avenir de Java en général et du JCP en particulier, avenir qui n’est pas des plus rayonnants selon lui car notre speaker conçoit mal un JCP sans Apache.

# Joda Money

Stephen nous a ensuite présenté sa librairie [Joda Money](http://joda-money.sourceforge.net/ "Joda Money"). Moins connue que Joda Time, elle est pourtant là pour combler elle aussi une lacune historique du langage : la gestion des montants en Java.

Pour cela, deux classes sont à notre disposition : Money qui a un nombre de décimales fixe et Big Money, qui propose un nombre illimité de décimales sans perte de précision. La classe Money fournit notamment de nombreuses méthodes pour effectuer les opérations basiques (y compris le formattage) sur un montant en gérant les devises, le tout de manière thread safe.

La librairie est assez petite ce qui fait que vous la maîtriserez rapidement, mais contient toutes les fonctions indispensables, ce qui en fait deux bonnes raisons pour supprimer sur le champs vos BigDecimal du code et les remplacer par des instantiations JodaMoney bien plus efficaces ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)

# Joda Time et la JSR-310

Stephen a ensuite enchaîné avec la plus célèbre et toujours aussi utile [Joda Time](http://joda-time.sourceforge.net/) , une librairie incontournable pour tout développeur Java. Sous ses aspects triviaux, la gestion des dates est un problème bien plus complexe que l’on ne se l’imagine de prime abord. De nombreuses problématiques sont à prendre en compte : les différentes échelles de temps, les notions de moment de la journée (minuit n’est pas une notion universelle), les divers calendriers existants de part le monde, sans compter les décisions politiques qui viennent parfois bouleverser les timezone.

En développant cette librairie, Stephe avait pour objectif de fournir une API :

- immutable (contrairement à l’API Date qui n’est pas Thread Safe)
- extensible
- facile d’utilisation : les objets et les méthodes sont simples et décrivent bien leur fonction
- avec une documentation explicite : tous les exemples de la javadoc sont concis et concrets

Pour ne citer qu’un exemple, prenez la classe LocalDate et parcourez ses méthodes : vous pouvez facilement retrouver le jour de la semaine ou encore rajouter 3 mois à votre date courante. Et lorsqu’il s’agit de déterminer un délai de facturation à 3 mois, fin de mois + 10 jours (si, si, ça existe) on est bien content d’avoir JodaTime sous la main ! Il y aurait peu d’intérêt à énumérer les possibilités vraiment nombreuses de cette librairie, on ne saurait que trop vous encourager à aller voir par vous même ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)

Heureusement pour nous, le JDK 1.8 verra le remplacement de l’API Calendar actuelle par la spécification proposée par Stephen, mais cela représente une énorme somme de travail et c’est pourquoi notre speaker vous invite à se joindre à lui ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif) Alors si vous aussi vous voulez devenir un super spécialiste en UTC, TAI et calendriers exotiques, n’hésitez pas, c’est ici que ça se passe : [jsr-310](http://java.net/projects/jsr-310/).

# The next big language for the JVM

Après le buffet, Stephen s’est penché sur ce que pourrait être le prochain langage pour la JVM. Au cours de son évolution, Java a connu pas mal d’ajouts de fonctionnalités, dont certaines parfois obscures ou complexes comme les Generics. Pour illustrer son propos, notre speaker nous présente plusieurs exemples de code pour le moins ardus à déchiffrer et encore plus à expliquer.

Et c’est bien là le coeur du problème selon Stephen : un langage performant doit être aisément compréhensible par un développeur moyen, et ce sans aide extérieure. Si un développeur “middle-level” ne peut parvenir à avoir au moins une idée de ce que fait la fonction rien qu’en lisant le code de celle ci, c’est que quelque chose ne va pas. Pour reprendre le cas des Generics, une centaine de personnes d’un niveau d’expertise avancé ont participé à leur élaboration, mais aucune ne s’est demandé si c’était compréhensible par l’utilisateur.

L’évolution de Java est freinée depuis plusieurs années déjà par son héritage lourd et parfois encombrant (le type null, les types primitifs, …) et cela s’illustre parfaitement avec la dernière version sortie qui ne comportait que quelques nouvelles classes et pas de grandes révolutions, comme ont pu en apporter les versions précédentes. Certaines implémentations qui étaient de vraies solutions techniques à la naissance du langage ressemblent plus aujourd’hui à d’embarrassantes tares dont l’on aimerait bien se débarrasser, ce qui est devenu impossible bien entendu pour des raisons de rétro-compatibilité.

**Faut il pour autant abandonner Java et créer un autre langage ? Et ce langage à quoi ressemblerait il d’ailleurs ?**

Après avoir comparé plusieurs langages (Scala et Fantom entre autre), Stephen nous a présenté quelques pistes de réflexion, au travers notamment d’une déclaration de Bean classique, qui s’allégeait au fur et à mesure que l’on envisageait l’intégration de fonctionnalités telles que la gestion “directe” des propriétés, qui nous permettrait par exemple de supprimer les classiques accesseurs qui prennent tant de places dans nos classes.

En revenant sur les langages historiques que sont C, C++ et Java, Stephen a également relevé un autre point intéressant : leur naissance vient souvent apporter le support de Design Patterns qui sont devenus indispensables (le C++ pour faire de l’objet, Java et la JVM pour la gestion de la mémoire, etc …), un Design Pattern n’étant rien d’autre que la réponse à un problème récurrent que le langage ne permets pas de traiter nativement.

Le prochain langage devra donc corriger les “défauts” de java, supporter nativement certains aspects devenus indispensables comme les closures, intégrer les design pattern qui sont devenus incontournables et tout cela en restant simple dans sa syntaxe.

Notre speaker n’a pas encore trouvé le langage idéal, celui qui pourrait prendre la relève et remplir tous ces critères, mais rien ne vous empêche de commencer à y réfléchir de votre côté et si vous l’inventez, n’oubliez pas de nous prévenir, nous vous réserverons un article dans Duchess ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)
