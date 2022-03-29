---
layout: "post"
author: 
  - "Katia"
title: "Paris JUG Septembre (I) – Introduction NoSQL par Olivier Mallassi et Michaël Figuière"
date: "2010-09-21"
categories: 
  - "les-conferences"
tags: 
  - "nosql"
  - "paris-jug"
---

| Mardi 14 Septembre 2010, Paris. L’ambiance de la rentrée se respire partout. Le retour à la normalité Parisienne. Et avec cette normalité…  **le retour du Paris JUG** ! Et avec le Paris JUG, n’oublions pas notre **Avant JUG** au café Vavin. |

### L’Avant JUG

L’avant JUG a été très sympa comme toujours. Quelques nouvelles têtes qui viennent pour la première fois au Paris JUG, et quelques garçons qui viennent découvrir finalement ce qu’est l’avant JUG : la possibilité de parler de façon décontractée  autour d’un verre du sujet de la soirée ou bien d’autre chose. De quoi a-t-on parlé ? Essentiellement de la conférence Devoxx qui a lieu dans deux mois. On a partagé nos envies et notre enthousiasme pour y aller.

Vers 19:10 on est parti tous ensemble aux locaux de l’ISEP.

### Présentation de Startup Weekend

[![Sacha Bostoni - Photo: Claude Falguière](/assets/2010/09/2010-09-21-paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere/5005287393_880144e75a.jpg)](http://www.flickr.com/photos/jduchess/5005287393/ "Sacha Bostoni - Photo: Claude Falguière")

**Sacha Bostoni** nous a expliqué ce qu’est le **Startup Weekend**. On ne rentrera pas dans le détail car il existe déjà un post dédié ([post startup weekend](http://jduchess.org/duchess-france/blog/jduchess-aime-le-startup-weekend-et-vous/ "Post Startup Weekend")).

Comme promis, la main innocente de Laure a tiré au sort l’entrée gratuite offerte par Startup Weekend à Duchess France. Si vous êtes intéressés pour y assister, adressez-vous au [groupe google duchessfr](http://groups.google.fr/group/duchessfr) pour obtenir des entrées à prix réduit.

Nicolas Martignole nous a également rapidement présenté la conférence [**Soft Shake**](http://www.soft-shake.ch/) qui aura lieu le pour la première fois le **18 octobre à Genève**. Cette conférence veut réunir les thèmes Agilité, Java et iPhone dans la même conférence. On vous en reparlera.

Une fois ces présentations finies, tout le monde arrivé et installé, la première partie de la conférence peut commencer :

**Qu’est-ce que c’est NoSQL ?**

### Introduction à NoSQL

Depuis quelque temps on entend par ci et par là le mot “NoSQL” sans vraiment trop savoir ce que c’est. Ceux qui sont intéressés par la conférence Devoxx ont déjà constaté la quantité de sujets dédiés au Cloud/NoSQL cette année. Après tout le buzz autour de ce mot, Olivier Mallasi et Michaël Figuière nous ont fait finalement découvrir cette nouvelle technologie émergente en pleine expansion.

![Michaël (g) et Olivier (d)- Photo: Claude Falguière](/assets/2010/09/2010-09-21-paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere/5005899910_ccd6604d1a.jpg)

Les deux protagonistes de cette première partie de soirée ont réalisé un travail énorme pour enfin partager leur connaissances aux JUGs en France :

**Olivier** , consultant chez OCTO, créateur du NoSQL User Group Parisien début d’année 2010. Il est très expérimenté aux sein des systèmes d’information qui gèrent des grosses volumétries de données critiques.

**Michaël**, consultant chez Xebia, créateur du NoSQL Summer Group à Paris. Groupe dénommé  “underground” dont les participants se sont réunis pendant tout l’été au moins une fois par semaine pour travailler sur le sujet. Il est très expérimenté au sein des projets de fort trafic et de grosse charge.

Passons à la découverte de ce qu’est finalement NoSQL.

### Est-ce la fin… du langage SQL ?  des SGBDR ? des transactions ACID ?

Derrière le sigle NoSQL se cache aussi le phrase : **Not Only SQL**. Le NoSql est un ensemble de technologies apparues depuis deux ans environ qui regroupe des bases de données qui proposent des alternatives au SGBD relationnels. Ce n’est pas un remplacement des systèmes de gestion de bases de données existants, mais chacun de ces systèmes a un atout qui le rend intéressant dans certains contextes.

Ces bases sont toutes différentes mais dans l’ensemble elles proposent des solutions qui répondent à des problématiques de gestion de gros volumes, de disponibilité, de souplesse et d’élasticité. Il s’agit d’un écosystème riche et complexe qui sont déjà présent **en production**.

### Origines

La croissance des entreprises **Google** et **Amazon** a finalement généré d’énormes besoins que les systèmes de base de données classiques n’arrivent plus à traiter : une performance extraordinaire pour des volumes de données monstrueux, disponibilité 24 /24, résilience et scalabilité horizontale.

Ces deux sociétés avaient des besoins radicalement différents ce qui illustre bien la diversité du NoSQL :

**Google** étant un moteur de recherche mondial, avait le besoin de stocker toutes les applications web de la planète et de faire tourner de puissants batch d’indexation. Il a donc développé **Map/Reduce**, basé sur [BigTable](http://fr.wikipedia.org/wiki/BigTable "Description BigTable"). Leur système permet de couvrir des besoins énormes de lecture ainsi que l’agrégation de gros volumes des données.

Dans la même période, **Amazon**, la boutique en ligne mondiale, était arrivé au limite de la scalabilité qu’un système classique pouvait le fournir.  Amazon a besoin d’un stockage totalement disponible en écriture particulièrement dans le processus d’achat : l’utilisateur a besoin d’une disponibilité totale lors de la commande, et du paiement. Une fois le paiement réalisé, on est plus à la seconde prêt et on peut se permettre de décaler tout ce qui est reporting etc.  Pour couvrir leur besoin, Amazon a développé **Dynamo** : un système qui permet moins de 40 minutes d’indisponibilité par/an, ainsi que d’obtenir un débit et une disponibilité plus importante en écriture.

Finalement des entreprises comme Facebook, LinkedIn ou Twitter sont arrivées à la même conclusion.

Une importante **offre Open Source** apparaît : MongoDB, Voldemort, Cassandra etc. Chaque solution offre une **stratégie de stockage différente**.

Et **Oracle** ? Oracle travaille sur des solutions Data Grid, avec lequel on obtient des caractéristiques similaires pour un prix beaucoup plus élevé.

Passons à regarder un extrait de l’offre opensource existant.

### Types de bases NoSQL

**\- Bases graphe**

Leur modèle de représentation des données repose sur la notion de noeuds et de relation entre noeuds et de propriétés qui leur sont attachées. Ce sont des modèles très répandus dans le traitement des données de réseaux sociaux (l’utilisateur, ses amis, ses messages). Elles sont aussi en phase avec les outils du web sémantique (RDF, SparlQL).

Le principal représentant est **[Neo4J](http://neo4j.org/)**.

**\- Clé valeur**

Ce sont des hashmaps distribuées. Ce modèle est très simple et les implémentations sont très nombreuses. On trouve principalement **[Voldemort](http://project-voldemort.com/)** crée par LinkedIn et **[Riak](https://wiki.basho.com/display/RIAK/Riak)**

**\- Bases colonne**

Ce sont aussi des sortes de hashmap. Ce modèle ressemble un peu à une table relationnelle à première vue, mais une ligne peut avoir un nombre quelconque de “colonnes” qui sont en fait représentées par une série de couples clé-valeur. Elles permettent d’avoir une représentation plus flexible des données attachées à une entité. La base la plus connue dans cette catégorie est **[Cassandra](http://cassandra.apache.org/)**

**\- Bases document**

Ce sont encore des hashmaps où la valeur associée à une clé est un document soit XML soit JSON. Leur intérêt est de pouvoir retrouver avec une seule clé tout un ensemble d’informations structurées de manière hiérarchique : un utilisateur, ses statuts, ses messages. L’équivalent en relationnel impliquerait beaucoup de jointures. On trouve principalement **[MongoDB](http://www.mongodb.org/)** et **[CouchDB](http://couchdb.apache.org/)**

Indépendamment de la stratégie de stockage de la base, un langage commun de requêtes – un équivalent SQL – n’existe pas encore. La programmation est encore assez lourde, et il n’existe pas encore d’outils équivalents aux ORM. N’oublions pas que c’est une technologie émergente, et MongoDB par exemple permet de faire quelque chose ressemblant à un ORM, mais Cassandra est loin encore de là.

Au delà des modèles de données spécialisés pour optimiser certains types d’opérations, ces bases partagent des caractéristiques d’architecture. NoSQL est un changement de paradigme :

- Table de hachage distribué
- Relâchement d’ACID

### Qu’est-ce que c’est la “Table de hachage distribuée” ?

Elles utilisent en général la distribution des requêtes et des données sur plusieurs instances. Des mécanismes de hachage répartissent ces données sur un ensemble d’instances satisfaisant pour garantir la disponibilité. Ce type d’architecture leur donne de bonnes caractéristiques de scalabilité.

![Consistent Hashing](/assets/2010/09/2010-09-21-paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere/5009497888_8e4bfed0b9.jpg "Consistent Hashing")

### Transactions ACID : Comment se passent-elles avec NoSQL ?

**(C)onsistance**

_” The consistency property ensures that the database remains in a consistent state; more precisely, it says that any transaction will take the database from one consistent state to another consistent state.”_

Les bases NoSql appliquent généralement un principe d’eventual consistency (cohérence in-fine) qui relaxe une partie des règles. Dans ce modèle, les données sont redondantes, elles sont écrites sur plusieurs instances et lues sur plusieurs instances. Il appartient au développeur de définir pour chaque type d’usage le degré de fiabilité qu’il attend. De la même manière que les développeurs sur base de données relationnelles ont appris à régler le niveau d’isolation, ils vont devoir apprendre à travailler avec la redondance.

Pour assurer la consistance des données, on va partir d’une formule “magique” :

- **N =** Nombre de répliquas que l’on veut sur notre cluster
- **R =** Nombre de réponses en lecture à attendre
- **W =** Nombre de confirmation d’écriture qu’on va attendre

Il faut simplement que **R + W > N** : un recouvrement entre le nombre total d’instances en lecture et en écriture.

Afin d’illustrer la formule graphiquement :

##### Cas 1 :  R+W < N

![N = 4, W = 1, R = 2](/assets/2010/09/2010-09-21-paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere/5008774791_a5e458a54d.jpg "N = 4, W = 1, R = 2")

Raté !

La consistance n’est pas assurée !

##### Cas 2 :  R+W = N

![N = 4, W = 2, R = 2](/assets/2010/09/2010-09-21-paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere/5009379480_cc718ac5ec.jpg "N = 4, W = 2, R = 2")

Raté !

La consistance n’est pas assurée !

##### Cas 3 :  R+W > N

![N = 4, W = 2, R = 3](/assets/2010/09/2010-09-21-paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere/5009379546_8aee9c881f.jpg "N = 4, W = 2, R = 3")

On a gagné ! ![:)](/assets/2010/09/2010-09-21-paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere/icon_smile.gif)

La durabilité est assurée au moins sur l’instance 2 !

En partant de la formule de base à respecter, on jouera avec les coefficients pour trouver le meilleur compromis adapté à notre système.

Lors de la ronde questions/réponses, deux questions intéressantes ont été évoquées à ce sujet :

**_Si les répliquas sont des entités physiques, et les valeurs R et W sont configurés par programmation… Comment est-il possible d’ajouter des répliquas dynamiquement ?_**

**Réponse :** Toutes les solutions NoSQL ne sont capables d’ajouter des répliquas dynamiquement; mais Cassandra par exemple dispose d’une configuration qui s’appelle “Quorum” : plutôt que de définir R et W, le client peut indiquer qu’il veut le quorum soit atteint (la moitié des instances +1)

**_Que se passe-t-il si on a deux écritures à la suite et les données ne sont pas cohérentes ?_**

**Réponse :** La plupart des bases NoSql implémentent une gestion de la concurrence basée sur un timestamp. Lors de la lecture seule la donnée la plus récente est conservée. Voldemort implémente aussi un système intéressant nommé _[Vector Clock](http://en.wikipedia.org/wiki/Vector_clock)_.

**(D)urabilité**

_“Durability is the ability of the DBMS to recover the committed transaction updates against any kind of system failure (hardware or software)”_

Elles peuvent également avoir une interprétation différente de la durabilité. Pour une base de données relationnelle, la donnée persiste quand elle est écrite dans le journal sur disque. Pour les bases NoSql la situation varie. Certaines bases  appliquent les mêmes règles, d’autres vont se baser sur des journaux mémoire, d’autres encore travaillent essentiellement en mémoire comme Redis.

**(A)Tomicite et (I)solation**

_“Atomicity requires that database modifications must follow an “all or nothing” rule”_

_“Isolation refers to the requirement that other operations cannot access data that has been modified during a transaction that has not yet completed.”_

L’atomicité et l’isolation sont des concepts difficiles à transposer lorsqu’ils impliquent des relations entre données qui sont distribuées sur des instances dont le nombre est variable et qui pourraient éventuellement ne plus pouvoir communiquer.

 

### Points positifs/négatifs

Les caractéristiques techniques que ces bases ont choisi d’implémenter leur donnent un avantage sur les aspect suivants :

- Gérer plus de volume, les données peuvent être déployées sur plusieurs instances ;
- Avoir une meilleure disponibilité en écriture, essentiellement en se passant du transactionnel qui crée des points de contention ;
- Une meilleure tolérance aux pannes partielles (les partitionnements réseaux), la redondance des données fait qu’il existe statistiquement la donnée sur la branche qui reste accessible, l’écriture reste possible sur les nœuds accessibles et la resynchronisation se fera plus tard ;
- L’élasticité, sur la plupart des systèmes le nombre d’instances peut varier dynamiquement et la base sait se rééquilibrer sur les nœuds ;
- Conserver des bonnes performances sur de très gros volumes ;
- Permettent une modélisation plus souple (en particulier le mode colonne qui permet par exemple d’utiliser une variable comme nom de colonne) ou plus immédiatement utilisable (graphes, document JSON) ;
- La flexibilité de la modélisation permet aussi de gérer plus facilement les évolutions de structures de données.

La contrepartie est un coût de développement et des impacts structurels au sein des équipes de production :

- Les API sont très simples, souvent très basiques et limitées à un PUT, GET, DELETE ;
- Le code client doit prendre en charge des éléments cachés par les couches SQL liés à l’organisation des données et la gestion de la redondance ;
- Il n’existe pas d’outils équivalents aux ORM qui rendent transparente la base de données ;
- Il n’existe pas un langage commun (similaire à SQL), tout est dépendant de la solution choisie. Mais des ‘langages’ communs par famille de base de données pourrait apparaître ;
- Dans la mesure où on ne peut pas faire de jointure après coup, tout repose sur une bonne organisation des données et un travail important sur les clés ;
- Pour les productions aussi le NoSql est un changement de paradigme : il demande des compétences différentes de celles des DBA. Ce sont souvent des outils qui tournent dans des JVM et nécessitent une bonne compréhension de la  distribution ;
- La sécurité sur les bases NoSql est un sujet qui n’est pas vraiment traité pour l’instant. Il n’y a pas d’accès restreint par exemple.

### Conclusion

Au delà du buzz, NoSQL est une technologie émergente à surveiller. Cherche-t-elle à remplacer les systèmes classiques ? NoSQL challenge 40 années de stockage de données, mais la réponse est non.

On va de plus en plus vers la souplesse, la disponibilité totale des applications, l’élasticité, et le stockage de données devient de plus en plus importante. Est ce que les applications que l’on réalise au quotidien en auront besoin ? Pour le moment pas vraiment, mais Michael constate que la possibilité crée le besoin, et que des demandes auparavant inimaginables voient le jour.

**A retenir :** NoSQL est déjà en production et la performance est excellente. Or vous ne devriez pas choisir NoSQL uniquement pour la performance pure sur une instance, mais plutôt pour le besoin de distribution de données et de disponibilité.

[Retour d’expérience : CMS on top of NoSQL par Steven Noels](http://jduchess.org/duchess-france/blog/paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels "Retour d'expérience :CSM on top of NoSQL par Steven Noels")
