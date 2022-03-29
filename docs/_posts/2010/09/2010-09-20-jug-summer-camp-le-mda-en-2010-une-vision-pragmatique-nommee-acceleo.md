---
layout: "post"
author: 
  - "Audrey"
title: "Jug Summer Camp &#8211; Le MDA en 2010 &#8211; Une vision pragmatique nommée Acceleo"
date: "2010-09-20"
categories: 
  - "les-conferences"
tags: 
  - "acceleo"
  - "emf"
  - "idm"
  - "jug-summer-camp"
  - "mda"
  - "mdd"
  - "mde"
  - "mdsd"
  - "xtext"
---

| ![](/assets/2010/09/2010-09-20-jug-summer-camp-le-mda-en-2010-une-vision-pragmatique-nommee-acceleo/4985958344_3f72758113_o.jpg "aquarium")   |
**Le MDA en 2010 – Une vision pragmatique nommée Acceleo**– Jérôme Benois ([présentation](http://sites.google.com/site/jugsummercamp/presentations))  
_par Audrey Neveu_

Le but de cette session était de nous présenter l’historique et les apports de la démarche MDA et comment la mettre en oeuvre simplement avec eclipse.

**Qu’est ce que le MDA ?**

Le Model Driven Architecture voit le jour début 2000, partant du constat qu’à cette époque 2 projets sur 3 sont en dépassement significatif de coût et/ou de délai. La DSI s’interroge sur la façon de diminuer ces coûts, sur la possibilité de capitaliser le savoir faire de ses équipes etc … en bref comment produire mieux avec les mêmes équipes ?

La nécessité de passer par des modèles pour monter en abstraction et mieux communiquer entre les équipes métiers et IT se fait sentir, et UML est retenu pour supporter tout cela.

Plusieurs phases s’enchaînent dans le MDA, chacune s’appuyant sur une partie des modèles proposés par UML :

- Recueil des besoins / exigences : livrable = CIM. Le Computation Independant Model va se baser sur les exigences du système et va pour cela avoir recours aux use case diagrams et autres sequence diagrams.
- Analyse : PIM ou Platform Independant Model (Class diagram, Activity Diagram, State Chart Diagram, Sequence Diagram)
- Conception : PSM (Class diagram, Component Diagram, Deployment Diagram) considÃ©rations techniques proches de la plateforme
- Implémentation : le code.

**Et Acceleo dans tout ça ?**

[Acceleo](http://www.obeo.fr/pages/acceleo/fr) est un générateur de code basé sur OMG MOF To Text Language, développé par [Obeo](http://www.obeo.fr/), partenaire de longue date d’Eclipse, qui permet de traduire rapidement le modèle en code.

Il dispose notamment de modules qui lui permettent de générer du code dans de nombreux langages (java, .c#, Php, Python …). Chaque module est lui même composé de plusieurs templates paramétrant la génération du code, comme par exemple le template `generateEntity`.

Entièrement intégré à Eclipse, il a l’avantage certain de laisser aux développeurs les facilités auxquelles il est habitué : auto complétion et coloration du code par exemple.

Après la génération du code vient le cycle de maintenance et la génération incrémentale. Celle ci peut se faire de deux façons :

- le “User-Code Pattern” consiste à laisser le développeur coder librement entre marqueurs.
- le “Generation Gap Pattern” consiste à avoir deux sources folders pour séparer le code généré du code non géré

**Le constat après plusieurs années de développement**

Côté avantages, amélioration de la productivité et meilleure agilité technique et fonctionnelle sont au rendez vous, mais de nombreux inconvénients ont tout de même été relevés, parmi lesquels :

- la difficulté à maintenir en cohérence les différents modèles
- le risque de désynchronisation entre le modèle et le code
- l’intégrisme du tout modèle : il n’est pas possible de modéliser l’algorithmie par exemple
- la lourdeur des outils et des standards UML
- la déconnexion des générateurs en maintenance

**Les leçons tirées de cette expérience**

Tout d’abord que l’UML est un langage riche pour représenter le modèle, mais peut être un peu trop. Il existe des diagrammes pour représenter quasiment tout, du modèle aux étapes de développement. Or les diagrammes du PSM par exemple, peuvent rapidement devenir redondant avec le code source. D’où l’envie de privilégier le DSL (Domain Specific Language) que notre speaker résume ainsi : un vocabulaire précis et concis pour une problématique précise. En effet en DSL, tout est centré sur un problème technique ou métier bien particulier.

Autre point important, le modèle doit rester un support de communication et un outil de productivité. Autrement dit les équipes doivent communiquer entre elles : métier et développement doivent interagir fortement afin d’être sûres que chaque partie a bien compris la problématique posée.

Et enfin, garder les générateurs connectés en maintenance et ne pas oublier les bonnes pratiques d’ingénierie (tests automatisés, utilisation de svn/git, build automatique et reproductible, intégration continue, qualimétrie, etc …).

**Le futur du MDA : l’ingénierie des modèles**

On parle donc désormais d’Ingénierie Dirigée par les Modèles (IDM ou MDE : Model Driven Engineering). La version 2.0 de l’approche MDA se nomme MDD (Model Driven Development), aussi appelé MDSD (Model-Driven Software Development). Côté outils on s’appuie toujours sur la plateforme d’Eclipse. Grâce à [Eclipse Modeling Project](http://www.eclipse.org/modeling/) et son écosystème riche proposant à la fois des outils de développement à partir du modèle (UML entre autre) :

- Transformation du modèle (Modele To Modele ou Modele To Text)
- Représentation graphique du modèle (Concrete Syntax Development)
- Modélisation et génération facilitée du code (Abstract Syntax Development).

**Mettre en oeuvre une démarche modèle pragmatique**

Fort de ces constats, reprenons les différentes étapes du MDA pour les faire évoluer :

- CIM et PIM (recueil des besoins / exigences et analyses) deviennent des DSL
- l’architecture cible est décrite par les générateurs de code (conception)
- le PSM est remplacé par le code lui même

La démarche recommandée par Jérôme pour cela est :

- identifier le vocabulaire échangé avec le métier
- le définir clairement
- le définir en code

Pour manipuler ce vocabulaire l’API EMF Java va nous permettre de construire des outils et de faire des imports depuis des sources d’informations existantes.

Pour le construire en revanche, nous disposons de [XText](http://www.eclipse.org/Xtext/), un framework de développement de DSL textuel basé, qui offre de nombreuses fonctionnalités telles que la complétion, la validation, des fonctions d’édition, etc …

Il nous faut ensuite passer du DSL au DSM. DMS est la représentation graphique du modèle. A l’aide d’un framework de notre choix qui sera basé sur Eclipse GMF, nous profiterons d’un environnement dédié, simple à paramétrer pour obtenir des diagrammes de qualité.

**Du DSM au point de vue !**

L’enjeu du MDA étant de faciliter le dialogue entre les équipes métier et technique comme nous l’avons vu plus haut, le DSM – graphiques – doit être là pour permettre à chacun de retrouver “son point de vue”, tout en dépassant les représentations “sectaires” : l’IT d’un côté, le métier de l’autre. Autrement dit, on doit tendre vers un modèle unique mais abordable par tous.

**Conclusion**

Pour Jérôme DSL + DSM + Acceleo = approche modèle efficace. Si la théorie est facile à croire, sans pratique il est difficile de se faire un réel avis sur cette autre façon d’envisager la conception.
