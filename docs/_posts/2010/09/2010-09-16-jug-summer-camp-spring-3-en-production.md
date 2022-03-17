---
layout: "post"
author: 
  - "cfalguiere"
title: "JUG Summer Camp : Spring 3 en production"
date: "2010-09-16"
categories: 
  - "les-conferences"
tags: 
  - "jug-summer-camp"
  - "spring"
  - "spring-3"
---

| ![](/assets/2010/09/2010-09-16-jug-summer-camp-spring-3-en-production/4983715491_94f7298e4d_o.jpg "aquarium")   |
**Spring 3 en production** – Julien Dubois ([présentation](http://www.slideshare.net/julien.dubois/spring-3-en-production))  
_par Claude Falguiere_

Julien Dubois nous a exposé quelques bonnes pratiques pour que le déploiement en production se passe bien, s’adapte aux divers environnements et soit robuste.

Spring 3 est une boîte à outils basée sur deux concepts principaux : la programmation par contrat qui sépare le code qui décrit l’interface du code qui l’implémente, et l’injection de dépendance qui permet de reporter jusqu’au moment de l’exécution le choix de l’implémentation réelle. Les composants ont moins d’adhérence à la compilation, ce qui simplifie la maintenance. Les dépendances sont décrites par des informations de configuration qui sont soit dans des fichiers XML, soit sous forme d’annotations dans les classes  qui utilisent les interfaces.

Lorsque les dépendances peuvent varier en production (le type de base de données, l’utilisation de services bouchonnés ou pas), la configuration via des fichiers XML est préférable car les fichiers sont éditables sur chaque plate-forme alors que les annotations requièrent une recompilation. L’usage des namespaces est recommandé. Les erreurs sont ainsi détectées plus rapidement.

Il nous a également recommandé de répartir les éléments de configuration dans plusieurs fichiers de manière à éviter des conflits de gestion de configuration et de regrouper les informations qui varient selon les plates-formes afin de faciliter le travail d’adaptation à un nouvel environnement. Il n’y a pas de contrainte technique particulière dans la mesure où tous les fichiers seront regroupés en un seul avant analyse. Il est plus simple de maintenir tous ces fichiers dans un répertoire dédié et sa préférence va à META-INF/spring disponible dans tous les types d’architecture Java.

Le XML étant assez verbeux et difficile à éditer dans un éditeur en mode terminal. Il est préférable d’isoler les variables à modifier dans un fichier de propriété plus facilement éditable sous tous types de terminaux et de les utiliser sous forme de paramètre en ${} dans le document XML.

Une autre bonne pratique est de fournir une valeur par défaut dans la configuration qui se trouve dans le package et de permettre de la surcharger si nécessaire. Context:property-placeholder permet de définir l’endroit où se trouve les propriétés, soit de manière absolu soit en faisant référence au classpath.

Spring est souvent utilisé dans les serveurs d’applications. Le serveur d’applications connait les paramètres de configuration propre à la plate-forme (les informations de connexion pour la ressource JDBC par exemple). Ces informations sont plus simples à configurer par les consoles Java EE que par des fichiers. Spring peut accéder aux informations déjà définies dans le contexte JNDI en utilisant Jndi-lookup-id.

Spring est un framework mais inclus également des frameworks bâtis au dessus de ce socle. Une source fréquente d’erreurs avec Spring dans Java EE est due à l’utilisation de contextes hiérarchiques. Des modules comme Spring MVC créent des contextes propres à chaque couche avec des régles de visibilité d’un modèle en couche. Des configurations définies dans la couche supérieure ne sont pas visibles depuis la couche inférieure. Des configurations de sécurité peuvent ainsi être ignorées par le système alors que le développeur croit qu’elles sont actives. Il faut que les configurations partagées par plusieurs couches soient définies au niveau le plus bas.

Une autre source de manque de robustesse est due à l’absence des implémentations requises détectée seulement au moment où un service est utilisé et demande la résolution d’une dépendance. L’annotation @required dans le composant qui utilise une dépendance permet de s’assurer au démarrage que l’implémentation existe.

L’AOP est un mécanisme qui permet d’ajouter des comportements cross-fonctionnels à des classes en se greffant sur les entrées ou les sorties de méthode. Ce mécanisme peut jouer quelques tours gênants pour les performances. Il peut être géré de plusieurs manières. Par défaut, il utilise des proxy JDK, c’est à dire un mécanisme interne à la JVM. Il nécessite qu’une interface ait été défini. Lorsque ce n’est pas le cas, Spring bascule sur une implémentation en CGLib qui s’affranchi de cette contrainte en modifiant dynamiquement les classes. En charge, ça ne se passe pas toujours très bien. Même si on n’a pas mis explicitement CGLib dans ses dépendances, il peut arriver en dépendance d’une des librairies qui l’utilise.

L’usage des singletons dans Spring est souvent une cause d’instabilité. En charge, plusieurs threads peuvent utiliser le même singleton. Pour traiter ce problème des scopes peuvent être définis, mais les dépendances entre objets de scopes différents peut devenir un problème à son tour. Scopes-proxy apporte une solution (sauf en cluster)

La montée en charge sera meilleure avec des traitements asynchrones, pour isoler une tâche longue par exemple. Ils peuvent être définis simplement avec l’annotation @synch et un TaskExecutor.

Toujours sur les performances, une utilisation adaptée d’Hibernate permet de bien gérer les accès en base. Le lazy loading n’est pas toujours la panacée. Il est parfois préférable d’utiliser une jointure pour recupérer toutes les informations et les mettre dans un cache de second niveau.  L’utilisation de Hibernate Search permet d’alléger les recherches basées sur des wildcards (recherche de tous les noms qui commence par T avec T%). Enfin Hibernate Validator permet de rendre les contrôles plus robustes.

La production implique le monitoring qui se fait de plus en plus via l’API Java EE JMX. Spring facilite la déclaration des MBean, les objets qui exposent les informations en JMX. [http://static.springsource.org/spring/docs/2.5.6/reference/jmx.html](http://static.springsource.org/spring/docs/2.5.6/reference/jmx.html)

Enfin quelques informations de SpringSource et de sa politique sur le Cloud Computing. Spring permet d’homogénéiser les différentes implémentations de Cloud, il ne les remplace pas. Il ne comporte pas de cache distribué, ne résoud pas les problèmes de scalabilité de la base de données, cependant SpringSource est en train d’étoffer son portefeuille de société avec des entreprises spécialisées dans ces domaines.
