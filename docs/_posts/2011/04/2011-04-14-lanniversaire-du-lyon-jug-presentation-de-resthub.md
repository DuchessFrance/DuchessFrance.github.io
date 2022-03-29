---
layout: "post"
author: 
  - "acrepet"
title: "L&#8217;anniversaire du Lyon JUG : présentation de RESThub"
date: "2011-04-14"
categories: 
  - "les-conferences"
tags: 
  - "lyon-jug"
  - "resthub"
---

| [![RESTHub](/assets/2011/04/2011-04-14-lanniversaire-du-lyon-jug-presentation-de-resthub/logo.png "RESTHub")](http://resthub.org/)Le 19 avril prochain, pour les 2 ans du Lyon JUG, [comme nous vous l’avons déjà annoncé](http://jduchess.org/duchess-france/blog/a-la-decouverte-de-izpack-avec-julien-ponge/), les open-sourceurs lyonnais sont invités à monter sur scène pour présenter leurs projets. Après [l’interview de Julien Ponge](http://jduchess.org/duchess-france/blog/a-la-decouverte-de-izpack-avec-julien-ponge/) sur [IzPack](http://izpack.org/), c’est au tour de Sébastien Deleuze et Damien Feugas, architectes chez [Atos Worldline](http://www.atosworldline.com/index.htm), de se prêter au jeu des questions/réponses spécial JDuchess. Ils nous présentent leur framework [RESThub](http://resthub.org/), permettant de développer des applications riches basées sur Hibernate, Spring 3, JAX-RS, jQuery et HTML5. Avec une approche très similaire à celles de Flex, Sébastien et Damien vont vous dévoiler un nouveau type d’architecture RIA, basée sur des briques légères utilisant au mieux les standards du web. |

 [![Follow Sebastien on Twitter](/assets/2011/04/2011-04-14-lanniversaire-du-lyon-jug-presentation-de-resthub/seb.jpg)](http://twitter.com/sdeleuze) ![Damien Feugas](/assets/2011/04/2011-04-14-lanniversaire-du-lyon-jug-presentation-de-resthub/DamienFeugas.jpg)

[**@sdeleuze**](http://twitter.com/sdeleuze "Follow Sébastien on Twitter")**Damien Feugas**

**Agnès: Vous allez nous présenter, lors de la prochaine session du Lyon JUG, [RESThub](http://resthub.org/). Comment vous est venu cette idée de créer un tel framework? Le but initial était-il celui d’industrialiser le démarrage de vos projets? Une sorte de “super archetype” maven avec des briques déjà intégrées et un socle gérant des fonctionnalités telles que la sécurité, etc.?**  
**Sébastien et Damien**:Nous étions plusieurs à utiliser les mêmes frameworks Java pour faire des WebService REST, à peu près tous de la même manière.  
Et au détour d’un café, nous avons décidé de ne plus bosser seuls dans notre coin et de mutualiser nos efforts. [RESThub](http://resthub.org/) est né ainsi.  
Lors de la mise en commun, nous avons décidé d’en faire un projet OpenSource, dans la mesure où ce framework n’était pas lié au métier d’un de nos clients.  
Au début, il s’agissait juste de glue entre Spring (IOC, transactions), Hibernate (provider JPA) et Jersey (implémentation JAX-RS).  
Petit à petit, [RESThub](http://resthub.org/) s’est étoffé, et le simple CRUD s’est vu ajouté des fonctionnalités de recherche (Hibernate Search), des classes de test génériques, la gestion de plusieurs entity-manager, la stack Javascript/HTML5, la sécurité avec OAuth2…  
Désormais, beaucoup de nos projets qui démarrent utilisent [RESThub](http://resthub.org/) comme starterkit pour être plus productifs.

**Agnès: Vous mettez en avant certains principes DRY (Don’t Repeat Yourself) ou KISS (Keep it simple, Stupid). En quoi [RESThub](http://resthub.org/) permet-il aux développeurs de respecter plus facilement ces principes?**  
**Sébastien et Damien**: KISS est inhérent à la philosophie REST : le simple fait de définir son WebService en terme d’accès CRUD force à rester simple.  
Essayer de proposer des Url humainement lisibles force à rester simple (ex : GET /role/ADMIN/users -> renvoie les utilisateurs ayant le rôle ADMIN).  
Le découpage de l’application Java en couche (Front/Business/Dao + modèle) invite les développeurs à bien structurer leurs classes, en séparant les problématiques (présentation, métier, persistance) et en améliorant la lisibilité, la testabilité et la maintenabilité de l’application.  
Concernant le DRY et la productivité, [RESThub](http://resthub.org/) propose des classes génériques dans toutes les couches, implémentant le CRUD sur une ressource donnée (une entité du modèle).  
Ainsi, le développeur définit son entité, et crée 3 classes héritant du DAO générique, du Service générique et du Controller générique. Il n’a aucune méthode à ajouter, et dispose d’ores et déjà du CRUD, et de tests au niveau de chaque couche !  
Un des points forts de [RESThub](http://resthub.org/), c’est la complexité progressive. Nous avons déjà tous utilisé des outils soit-disant simples, qui étaient en fait contraignants et restrictifs.  
Il serait vraiment dommage de ne pas pouvoir exploiter toute la richesse de Hibernate, ou celle de Spring. C’est pourquoi nous ne proposons pas de _scaffolding_, nos classes ne sont jamais finales, les mécanismes jamais « magiques ».  
Notre objectif est d’aider le débutant à mettre rapidement son projet en œuvre, tout en lui permettant une grande liberté lorsqu’il sera devenu un expert. Nous n’essayons pas de masquer les choses.

**Agnès: Combien de personnes contribuent au projet [RESThub](http://resthub.org/)? Comment s’opèrent les choix d’architecture concernant les éléments constitutifs de chaque stack (java/javascript)?**  
**Sébastien et Damien**: Actuellement, nous avons 6 contributeurs actifs, dont la plupart participent à des « labs » (une journée par semaine pour travailler sur des sujets innovants, en dehors du contexte projet habituel). [RESThub](http://resthub.org/) est issu de ce mode « labs » et la plupart des choix d’architecture se font dans ce cadre. Concernant la gouvernance, elle se fait de manière collégiale, car nous sommes suffisamment peu, et nous pouvons nous retrouver pour en parler. Chacun est plus ou moins spécialisé et en charge de telle ou telle partie.  
Grâce à [Bitbucket](https://bitbucket.org/) et à sa facilité de fork, nous intégrons régulièrement de petites contributions proposées par les équipes qui utilisent [RESThub](http://resthub.org/) chez Atos Worldline.  
Enfin, pour choisir les éléments constitutifs du framework, nous faisons un petit état de l’art, ainsi qu’un ou deux POC (proof of concept). Nous cherchons au maximum à réutiliser des outils existants, performants, si possible respectant une norme. Il doivent être pourvus de documentation, d’exemples et supportés par une communauté active.  
Nous essayons aussi de faire des choix techniques qui ne soient pas trop disruptifs. Il faut toujours penser à l’accompagnement du changement lorsqu’on propose un outils dans le monde professionnel.

**Agnès: Savez-vous si beaucoup de projets ont intégré [RESThub](http://resthub.org/) à ce jour? L’effet Devoxx a t’il été bénéfique?**  
**Sébastien et Damien**: Pour être franc, nous n’avons pas particulièrement eu « d’effet Devoxx ». L’adoption de [RESThub](http://resthub.org/) est en très forte croissance sur les projets qu’Atos Worldline réalise pour ses clients, mais l’utilisation en dehors de ce cadre est encore limité. C’est pourquoi nous en faisons la promotion à travers les JUG (AlpesJUG, LyonJUG, Tours JUG et bientôt Riviera JUG).

### **Merci Sébastien et Damien!**

**Les inscriptions sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/2eme-anniversaire)**
