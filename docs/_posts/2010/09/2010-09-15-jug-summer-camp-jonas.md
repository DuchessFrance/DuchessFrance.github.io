---
layout: "post"
author: 
  - "cfalguiere"
title: "JUG Summer Camp : JOnAS"
date: "2010-09-15"
categories: 
  - "les-conferences"
tags: 
  - "java-ee"
  - "jonas"
  - "jug-summer-camp"
  - "osgi"
---

| ![](/assets/2010/09/2010-09-15-jug-summer-camp-jonas/4983715625_39923d7572_o.jpg "aquarium")**Outils d’audit et diagnostic pour les développeurs et administrateurs d’applications OSGi/Java EE ** – Florent Benoît ([présentation](http://sites.google.com/site/jugsummercamp/presentations))   |
_par Claude Falguiere_

Florent Benoît nous a présenté un outil de diagnostic fourni nativement avec le serveur d’applications JOnAS. L’outil est destiné à être utilisé en production pour collecter un certain nombre de métriques qui pourront servir à du diagnostic ou de la facturation à l’usage. Il peut également être utilisé en développement pour effectuer des diagnostics. Comme JOnAS se base sur OSGI l’outil doit être flexible car les services peuvent être présents ou pas.

Dans une première démonstration une fuite de connexion JDBC a été crée artificiellement. L’outil inspecte les connexions restées ouvertes lorsqu’une session est terminée sans rendre la connexion au pool et détermine la ligne de code qui a obtenu la connexion. Une autre fonction de cet outil est de montrer l’état des threads de manière dynamique. Cette fonction est plus rapide à utiliser que la génération d’un thread dump qui doit ensuite être chargé dans d’autres outils.

Une seconde démonstration a montré les capacité de profilage de l’outil. Il permet de tracer chaque requête de bout en bout avec un identifiant unique qui permet de la suivre dans toutes les couches et même pour les traitements asynchrones. Le grephe d’appel est présenté sous une forme graphique.

L’outil a l’air intéressant, mais JOnAS est un serveur d’applications que l’on utilise rarement. Dans la mesure où la collecte des informations de monitoring des serveurs d’applications repose pour une grande partie sur des protocoles standards, il est un peu dommage que cet outil soit spécifique à JOnAS.
