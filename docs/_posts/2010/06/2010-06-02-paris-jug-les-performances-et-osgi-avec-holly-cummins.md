---
layout: "post"
author: 
  - "edijoux"
title: "Paris JUG : les performances et OSGi avec Holly Cummins"
date: "2010-06-02"
categories: 
  - "les-conferences"
tags: 
  - "aries"
  - "osgi"
  - "paris-jug"
  - "performance"
---

| Ce mois-ci performances et OSGi sont au menu de [la soirée du ParisJUG](http://parisjug.org/xwiki/bin/view/Meeting/20100608). Avec Holly Cummins notre speaker du mois, venez découvrir les deux thèmes qu’elle abordera ce soir : |

### Optimisation de performances

Mémoire, threads ? Tous ces concepts paraissent très mystérieux. En fait ce sont des comportements très simples dès lors qu’ils sont expliqués et aussi quand on peut les visualiser. Les outils fournis avec la Java 5 ainsi que des outils plus spécifiques permettent de visualiser les différentes zones de la mémoire, les données liées à chaque exécution du GC, le code en cours d’exécution pour chaque thread. Ces outils aident à comprendre comment une application sollicite les différentes zones de la mémoire. Certains OutOfMemory sont réfractaires aux modifications de -Xms -Xmx les paramètres qui dimensionnent la heap. C’est simplement parce que la heap ne concerne que les objets crées par l’application. D’autres zones mémoire sont utilisées pour stocker les classes, la pile d’appel. Même la heap est composée de plusieurs zones dans une JVM générationnelle. Beaucoup de consommation CPU, l’application pause tout le temps car la JMV passe beaucoup de temps dans des GC ? L’analyse détaillée des données de GC permet de comprendre pourquoi des GC sont fréquents, quelle est la durée de vie des objets impliqués et d’avoir de premières pistes pour identifier  une consommation mémoire excessive ou s’adapter à un usage particulier.Ou alors, les réponses sont parfois lentes sans raison apparente. Ces outils aident à identifier si un thread est en train d’en bloquer un autre parce qu’ils nécessitent tous les deux l’accès à une variable protégé par un synchronized. Même si la JVM nous décharge de la gestion des allocations/dé-allocations mémoire et du multi-threading, il est utile de comprendre comment ces mécanismes marchent pour les utiliser de manière efficace en Java.

### OSGi

On parle de la spécification OSGi mais savez vous de quoi il s’agit ? OSGi est une spécification ayant pour but de définir des applications modulaires, portables et dynamiques. Pour faire simple cela permet de réaliser des installations de modules à chaud sans redémarrage de la JVM. Le plus bel exemple que l’on a sans doute tous sous les yeux est Eclipse et son système de plugins par exemple qui respecte la spécification OSGi. Elle existe donc depuis un moment déjà mais revient au goût du jour pour tenter de répondre à nos problèmes de modularité sur nos applications web. Une présentation d’OSGi a été réalisée au ParisJUG en Octobre 2008 par [Cyrille Leclerc](http://parisjug.org/xwiki/bin/view/Speaker/LeclercCyrille) et [Nicolas Griso](http://parisjug.org/xwiki/bin/view/Speaker/GrisoNicolas) pour présenter ce que [OSGi pouvait nous apporter](http://www.touilleur-express.fr/2008/10/15/presentation-dosgi-au-paris-jug-naphtaline-et-peinture-fraiche/). Depuis plus d’un an s’est écoulé, Holly Cummins va nous présenter au travers du projet open source sur lequel elle travaille [Apache Aries](http://incubator.apache.org/aries/), les enjeux d’un tel outil. Injection de dépendances, transaction et persistance : venez découvrir comment l’on peut répondre à ces problématiques avec OSGi.
