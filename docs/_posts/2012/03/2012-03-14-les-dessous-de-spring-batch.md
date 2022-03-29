---
layout: "post"
author: 
  - "acrepet"
title: "Les dessous de Spring Batch"
date: "2012-03-14"
categories: 
  - "les-conferences"
tags: 
  - "lyon-jug"
  - "spring-batch"
---

| ![](/assets/2012/03/2012-03-14-les-dessous-de-spring-batch/arno-nyc_bigger.jpg)Le [Lyon JUG](http://www.lyonjug.org "lyonJUG") accueille [Arnaud Cogoluegnès](https://twitter.com/acogoluegnes "Twitter Arnaud Cogoluegnes") de la société [Zenika](http://www.zenika.com "Zenika") le mardi 20 mars prochain. Au programme de la soirée : [Spring Batch](http://static.springsource.org/spring-batch/ "Spring Batch")! Nous sommes allés à la rencontre d’Arnaud, auteur de [Spring Batch in Action](http://manning.com/templier/ "Spring Batch In Action") chez Manning, pour lui poser quelques questions afin de vous donner envie de venir! L’interview a été préparé par une partie de la team du [Lyon JUG](http://www.lyonjug.org "lyonJUG") : [Agnès CREPET](http://twitter.com/agnes_crepet "Twitter Agnès Crépet"), [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat "Twitter Cedric Exbrayat") et [Alexis HASSLER](http://twitter.com/AlexisHassler "Twitter Alexis Hassler"). |

**Agnès, Alexis & Cédric : Peux-tu te présenter?**  
**Arnaud :** Je travaille chez Zenika. J’assure des formations Spring pour VMware/SpringSource, mais aussi des formations Zenika sur d’autres sujets (Wicket, Java, AMQP). Cette activité de formateur prend la moitié de mon temps. Le reste est consacré à des activités de conseil et de développement.

**Agnès, Alexis & Cédric : Tu vas venir parler de Spring Batch au LyonJUG, qui permet d’écrire des batchs en java. Peux-tu citer des exemples de problèmes récurrents quand justement on veut écrire des batchs en java?**  
**Arnaud :** L’exemple le plus courant est l’import ou l’export de données à partir de/vers des fichiers (XML, CSV). On partage souvent des données de référence de cette façon. Un autre exemple est le parcours d’enregistrements (contrats, dossiers), la vérification de règles et la mise en alerte de l’enregistrement parce qu’il est dans un état lambda depuis trop longtemps. On peut prendre aussi l’exemple d’envoi d’emails (“tous les nouveaux sujets sur un forum depuis 1 semaine”). Enfin, la consolidation de données (comptables, financières) et la génération de rapports. Il y a bien sûr d’autres cas, mais la plupart suivent le schéma lecture – vérification/transformation – écriture, cela pour de gros volumes de données.

**Agnès, Alexis & Cédric : En quoi Spring Batch va nous aider face à ces problèmes? Est-il vraiment utile et / ou efficace ?**  
**Arnaud :** On peut résumer ce qu’apporte Spring Batch en 3 points :

- il implémente le cycle lecture/transformation/écriture. Pour faire simple, il s’agit d’une super-boucle foreach, intelligente et configurable. Cela permet au développeur de gérer facilement et par configuration des sauts en cas d’erreur (au lieu de faire échouer la totalité du batch), du rejeu (“retry”), etc. Dans cette boucle, le framework gère aussi les transactions tous les n éléments, s’occupe des rollbacks, etc. Ce cycle est la spécialité de Spring Batch mais on peut tout à fait faire d’autres opérations (brancher n’importe quelle logique en Java).
- il propose des composants réutisables pour les sources de données courantes (fichiers CSV/XML, base de données en JDBC/Hibernate/JPA, JMS, email, etc). On configure généralement ses composants qui s’occupent des tâches pénibles (I/O sur le système de fichiers) et on branche notre logique métier aux points stratégiques.
- il conserve toutes les données d’exécution dans une base de données. Cela permet de faire du monitoring (“est-ce que le batch de cette nuit s’est bien passé ?”, “combien de temps l’exécution a-t-elle pris ?”) mais aussi de la reprise sur erreur.

A la question “Spring Batch est-il utile/efficace ?” oui, il l’est. Il fait son travail de framework : il fournit une excellente base technique, il prend les bonnes décisions par défaut et laisse la possibilité au développeur de paramétrer finement son comportement.

**Agnès, Alexis & Cédric : Parmi les fonctionnalités de Spring Batch, laquelle mettrais-tu en avant pour nous convaincre de l’utiliser ? Partage de composants Spring, reprise sur incident, séparation des tâches de lecture/traitement/écriture,… ?**  
**Arnaud :** Pas forcément une fonction coeur : le monitoring. Pas mal d’applications ont finalement des besoins légers en termes de batch. Mais le besoin récurrent va être de savoir si ces batchs se sont bien exécutés, s’ils n’ont pas pris trop de temps, etc. Implémenter cela à la main prend du temps et n’a aucune plus-value pour l’utilisateur final. Spring Batch propose ce genre de monitoring : on peut utiliser Spring Batch Admin (une application web fournie avec Spring Batch), si on n’aime pas son apparence, on peut facilement la customiser. Si on aime vraiment pas Spring Batch Admin, on peut utiliser la couche d’accès aux données d’exécution que propose Spring Batch. On peut même taper directement sur les tables des données d’exécutions. Bref, c’est très souple.  
Spring Batch est modulaire, chacun pourra y trouver au moins un élément qui l’intéresse et qui lui évitera des développements purement techniques, souvent très pointus. Chaque fois que je présente Spring Batch à une équipe projet, j’entends de la part des développeurs : “Spring Batch fait tout ce que j’ai passé tant de temps à re-développer sur de nombreux projets”.

**Agnès, Alexis & Cédric : Pendant longtemps Spring Batch a souffert d’une réputation d’un outil complexe (notamment au niveau de la configuration). Comment a évolué le produit ces dernières années? Les créateurs ont-ils opté pour plus de simplicité?**  
**Arnaud :** La première version de Spring Batch était très verbeuse, puisqu’elle qu’elle n’avait pas de balises dédiées (elle utilisait les balises bean/constructor-arg/property de Core Spring). C’était un peu le syndrome Acegi Security. Depuis la version 2.0, Spring Batch a un namespace batch. Cela rend la configuration plus simple, maintenable et lisible. Les interfaces cœur ont aussi été simplifiées.  
Le framework reste simple et souple : il utilise un contexte Spring, il peut tourner n’importe où (en ligne de commande, dans un conteneur). Il lui faut juste une base de données (et encore, si on souhaite bénéficier de la reprise sur erreur).

**Agnès, Alexis & Cédric : Suis-tu le développement de la JSR 352, qui vise à standardiser le traitement des batchs en Java ?**  
**Arnaud :** Je suis de loin. La scope de la JSR est un peu plus large que celle de Spring Batch, puisqu’elle comprend le scheduling. Le travail vient de commencer (début février 2012 d’après la mailing list, nous sommes en mars). La version finale est annoncée pour le 2ème trimestre 2012, nous verrons bien. Spring Batch est très souvent évoqué dans la mailing list, il sera certainement une source d’inspiration.

**Agnès, Alexis & Cédric : Comment Spring Batch gère-t-il les gros volumes de données ? Est ce que des passerelles avec Spring Hadoop sont possibles ? Même question pour les bases NoSQL et Spring Data ?**  
**Arnaud :** Spring Batch commence par gérer les I/O le plus efficacement possible (streaming des fichiers, pagination SQL ou utilisation de curseurs BD, etc). Il permet aussi de régler le nombre d’éléments par commit, un paramètre qui peut jouer beaucoup sur les performances. Même si le traitement est mono-threadé par défaut, cela fonctionne pour la plupart des applications.  
Quand on commence à avoir des traitements lourds, qui nécessitent du calcul, ou de gros volumes (millions, voire milliards d’enregistrements), Spring Batch permet assez facilement de multi-threader les traitements. Le partitioning est une solution populaire, car elle est simple à mettre en place. Elle impose  
cependant de pouvoir partitionner les données (ex. : plusieurs fichiers d’entrées, chaque fichier est lu et traité dans son propre thread).  
Spring Batch permet aussi de distribuer les traitements. Un noeud maître lit les données et les envoit à des noeuds esclaves qui les traitent. On parle de “remote chunking”. C’est une solution puissante, mais plus complexe que le partitionning, puisqu’elle nécessite une solution de messaging comme JMS ou AMQP pour que le maître et les esclaves échangent les lots de données à traiter. Toutes ces solutions sont directement disponibles dans Spring Batch. Elles peuvent être mises en place avec de la configuration et très peu de développement spécifique. Après, on peut distribuer encore plus avec le récent projet Spring Hadoop, qui permet notamment de lancer un job Hadoop depuis Spring Batch. On bénéficie alors de l’injection de dépendances de Spring, de l’environnement Spring Batch (configuration du job, monitoring, reprise sur erreur) et de la puissance d’Hadoop.

**Agnès, Alexis & Cédric : (joke) Quel est le sujet de ton prochain livre?**  
**Arnaud :** Pas de livre en cours, 3 livres en 3 ans, j’ai donné !

**Merci Arnaud! Rendez-vous au [LYON JUG le 20 mars](http://www.lyonjug.org/evenements/spring-batch "Lyon JUG inscription soirée 20 mars") pour la suite!**
