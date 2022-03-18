---
layout: "post"
author: 
  - "edijoux"
title: "ParisJUG de Juin : Rencontre avec Holly Cummins (1)"
date: "2010-06-14"
categories: 
  - "les-conferences"
tags: 
  - "paris-jug"
  - "performance"
---

| Cette soirée fut drôlement riche en évènement et en surprise … Ne dévoilons pas tout et commençons par la première partie de soirée : l’AvantJUG. |

## L’AvantJUG

Pas mal de Duchess sont présentes, certaines accompagnées de leur collègue, et quelques nouvelles qui assistent pour la première fois à l’AvantJUG. Nicolas Martignole auteur de l’incontournable blog [Le Touilleur Express](http://www.touilleur-express.fr/) a assisté à l’AvantJUG en tant qu’observateur pour voir comment se passait notre première partie de soirée. ![AjantJUG-Juin](/assets/2010/06/2010-06-14-parisjug-de-juin-rencontre-avec-holly-cummins-1/AjantJUG-Juin.jpg "AjantJUG-Juin")

Dans les conversations, on pouvait entendre qu’il y a un iPad à gagner ce soir ! En plus des bières promis par les organisateurs du ParisJUG pour tout ce qui arrivaient les cheveux bleus, cela promet d’être une belle soirée ![:)](/assets/2010/06/2010-06-14-parisjug-de-juin-rencontre-avec-holly-cummins-1/icon_smile.gif) . D’ailleurs en parlant de cheveux bleus, certaines d’entre nous ont profité des bombes à laques bleus amenées par Laure pour réaliser une petite séance de coiffure improvisée.

Déjà 19h ? On se prépare et en route pour l’ISEP !

## Avant de commencer la soirée …

Antonio prend la parole pour faire le point sur les JUG et Oracle. Après quelques mois de silence, Oracle s’est enfin prononcé sur leurs intentions par rapport au JUG. Ils ont décidé de mettre en place 3 catégories de JUG :

- les gros JUG avec plus de 1000 membres et un cadre juridique pour qui Oracle sortira le tapis rouge avec soutien en force,
- les JUG de taille moyenne qu’Oracle soutiendra … moralement on va dire,
- et les JUG virtuels qui auront droit à une petite tape dans le dos avec un “C’est sympa ce que vous faîtes”.

Le petit souci du ParisJUG, c’est que nous sommes 200 à nous réunir chaque mois et un millier sur la mailing list mais juridiquement il est composé de trois membres ! Alors comment Oracle les considèrera ?

La présentation débute maintenant …

## L’optimisation des performances : pas si effrayant que ça !

![IMG_0235_500](/assets/2010/06/2010-06-14-parisjug-de-juin-rencontre-avec-holly-cummins-1/IMG_0235_500-300x168.jpg "IMG_0235_500")Holly Cummins commence tout d’abord par nous remercier pour l’accueil en français s’il vous plaît !

Elle poursuit ensuite par une présentation de son parcours au travers de sa couleur de cheveux.

- En 2001, les cheveux roses, elle arrive chez IBM pour travailler sur Websphere.
- En 2004, pour se rapprocher des couleurs d’IBM, elle choisit le bleu et au même moment elle commence à travailler sur les performances de la JVM.
- Actuellement, avec les cheveux tout simplement noir, elle contribue au projet open source Apache Aries.

Les performances ce n’est pas si terrible que ça ! Holly souhaite dédramatiser la situation.

Une application répondant mal, ce n’est pas seulement problématique mais aussi coûteux :

- en électricité : cela consomme beaucoup surtout quand on a des data centers comme Google,
- les employés utilisant ces applications sont moins productifs,
- une perte de business à cause de pages qui ne répondent pas assez vite voire même pas du tout.

La loi de Moore prédit que l’on aura des processeurs de plus en plus rapides mais les SI peuvent ils se permettre de changer de matériels régulièrement pour améliorer leur performance ? Le problème c’est surtout qu’on a atteint le maximum de la scalabilité verticale. On ne peut pas faire tourner les processeurs plus vite pour une question de dissipation de chaleur. Par ailleurs, à l’heure actuelle c’est l’accès aux données en mémoire qui limite les vitesses de processeurs. On fait de la scalabilité horizontale c’est à dire qu’on augmente le nombre de core. Mais cette technique impose de réaliser des tâches en parallèle et pose donc plus de problème de synchronisation.

A son arrivée chez IBM, connaissant peu de choses sur les performances, selon ses termes, elle a cherché quelques livres pour l’aider. Et malheureusement dans la monstrueuse bibliothèque d’IBM seuls deux livres traitaient de la performance !

### Méthodologie

Les performances sont limitées par les ressources. Il faut donc trouver le goulet d’étranglement et régler le problème. Un exercice qui n’est pas toujours facile à appliquer en général. Voici quelques ressources à considérer : le CPU, les accès mémoire, l’espace mémoire, les accès disques … Il faut comprendre comment la JVM fonctionne afin de trouver le problème. Il est indispensable également de se faire aider d’outils qui fourniront des mesures et permettront de détecter ce goulet d’étranglement.

### Les outils de performance d’IBM

IBM fournit un certain nombre d’outils permettant de mesurer et détecter plus facilement les goulets d’étranglement. Ils sont disponibles gratuitement sur le site IBM Assistant. Mais attention ces outils fonctionnent majoritairement sur les JVM d’IBM.

### Détecter les problèmes liés à la mémoire

La mémoire est une ressource critique car elle ne peut pas être dimensionnée à l’infini. Elle est d’abord limitée par la mémoire physiquement disponible. Ensuite, il est souvent nécessaire de faire un compromis entre la quantité de mémoire et le temps que prendront les phases de Garbage Collection. Pour identifier les problèmes de mémoire, deux types d’outils sont possibles : les traces de l’activité du GC et l’inspection du contenu de la heap (un heap dump). Activer l’option -verbose:gc sur la JVM permet de tracer les executions du Garbage Collector et d’identifier des fréquences ou des volumes anormaux. L’outil [GC and Memory Visualizer](http://publib.boulder.ibm.com/infocenter/ieduasst/v1r1m0/index.jsp?topic=/com.ibm.iea.was_v7/was/7.0/ProblemDetermination/WASv7_GC) permet d’exploiter ces traces et de les représenter visuellement. Cette technique permet de voir quand la mémoire est sur-utilisé et de constater une fuite mémoire mais pas de savoir par quel type d’objets. Pour cela il est nécessaire de réaliser un heap dump. Pour visualiser les fuites mémoire, voici deux outils qu’elle nous conseille :

- [Health Center](https://www.ibm.com/developerworks/java/jdk/tools/healthcenter/) est un outil d’IBM permettant de réaliser le diagnostic et le monitoring des applications Java. Il permet de visualiser les classes utilisées, l’utilisation de la mémoire, les entrées/sorties …

- [Memory Analyzer](http://www.eclipse.org/mat/) (MAT)  pour visualiser les appels aux objets et la mémoire prise par ces objets.

Dans la démo, Holly nous montre un exemple d’utilisation de ces outils. Il y a un trop grand nombre de String, ainsi qu’un très grand nombre d’entrées de Map. Le souci dans cette application est que des chaînes sont générées dynamiquement pour chaque utilisation d’un label de produit.

### La mémoire native

On appelle mémoire native la mémoire utilisée par le core de la JVM pour gérer les processus natifs de la JVM (gestion des threads, gestion de la mémoire, gestion de la pile d’appel). Cette mémoire est distincte de la Heap qui est la zone dans laquelle les objets manipulés par les applications sont créés. Il arrive que les fuites se produisent dans la mémoire native parce qu’elles sont causées par des processus natifs de la JVM. Or cette mémoire n’est pas traitée par les outils dont on vient de parler. Il faut utiliser les outils de l’OS [perfmon](http://technet.microsoft.com/en-us/library/bb490957.aspx) sous Windows et ps sous Linux pour surveiller la mémoire totale du process JVM pour identifier une dérive.

### Détecter les problèmes liés au CPU

Tout d’abord, les problèmes de CPU sont souvent en réalité des problèmes de mémoire. Le GC cause beaucoup d’opérations sans entrées sorties et donc génère souvent de fortes consommations CPU. Les problèmes liés au CPU sont en général du code invoqué plus que nécessaire. Pour détecter ces problèmes, deux méthodes existent :

- méthode de tracing : pour savoir dans quels méthodes passent notre application et trouver la méthode nous posant problème,
- méthode de profiling : pour cela, il nous faut un outil de profiling comme Health Center par exemple.

Paradoxalement, une utilisation très basse de la CPU peut indiquer également un problème parce que dans ce cas ce sont des attentes qui dégradent les temps de réponse. Le système qui attend des entrées/sorties ne consomme pas de CPU.

### Détecter les problèmes liés aux entrées/sorties

Il existe deux causes de problèmes d’entrées/sorties : les accès disque et les appels réseau. Les accès disques peuvent ralentir le service si le disque n’arrive pas à traiter les demandes suffisamment vite. Cela peut arriver pour une application fortement consommatrice d’écriture (via les logs par exemple). Mais la gestion des swaps mémoire peut également causer une sur-utilisation des disques pour des process s’allouant de grandes quantités de mémoire. L’autre source de dégradation par entrées/sorties est causée par les requêtes aux SGBD ou avec des services en backend. Le problème n’est pas évident à détecter. Il faut utiliser les outils du système en conjonction avec les outils de profiling pour enquêter et trouver le problème.

### Synchronization : la concurrence et la performance

Holly avoue que les problèmes d’accès concurrents ne sont pas faciles à résoudre. La nécessité de conserver la cohérence entre les actions des différents threads impose d’utiliser une forme de verrou (les synchronized) qui limitent les performances sous forte concurrence. Il faut donc les réduire au maximum.

L’évolution des processeurs ces derniers temps se fait par scalabilité horizontale et implique que l’on ne peut plus gagner en performance simplement en ayant des processeurs qui vont plus vite. Pour utiliser au mieux les multi-cores, il faut savoir paralléliser les tâches, ce qui nécessite de trouver un bon compromis entre synchronisation des données et augmentation du débit.

Fin de la première partie, nous passons au buffet.

## Le buffet

![Buffet](/assets/2010/06/2010-06-14-parisjug-de-juin-rencontre-avec-holly-cummins-1/Buffet.jpg "Buffet") Mais avant une petite photo groupée autour de Holly Cummins de tout ce qui ont eu le courage de venir les cheveux colorés. Le buffet fut sponsorisé par Octo. Pour cette soirée des représentants du [BreizhJUG](http://www.breizhjug.org/), [NormandyJUG](http://www.normandyjug.org/) et le [BruJUG](http://www.brussels-jug.be/) sont présents.
