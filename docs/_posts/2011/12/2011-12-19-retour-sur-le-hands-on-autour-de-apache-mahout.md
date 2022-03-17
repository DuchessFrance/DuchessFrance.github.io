---
layout: "post"
author: 
  - "Dahlia"
title: "Retour sur le Hands On autour de Apache Mahout"
date: "2011-12-19"
categories: 
  - "les-mains-dans-le-code"
tags: 
  - "la-marmite"
  - "mahout"
---

| ### Ma toute première marmite. |

J’avais prévenu tout le monde pour ma première, mari et collègues : ce soir, c’est soirée entre filles. On code.

Je ne vous raconte pas la surprise en trouvant au 8ème étage des locaux de So@t, une salle remplie de garçons : “- Euh, les Duchess, c’est bien là ?”

Oui, c’était bien là. 23 garçons et 4 filles – quand même – tous réunis pour découvrir **Apache Mahout** (dire _maoute_), une librairie Open Source Java. Parce que les soirées code des Duchess sont ouvertes à tout le monde et c’est tant mieux.

Donc je m’installe au premier rang, pour prendre une des dernières places restantes et refais avec celui qui sera mon binôme de la soirée l’inventaire des tâches préparatoires (Inquiétude soudaine, n’ai-je rien oublié ? Il faut dire que je suis un peu venue les mains dans les poches, sans même préparer le sujet !) :

- installer _Play! Framework_
- _télécharger Git_.

Ouf, c’était bon, très facile d’ailleurs.

La soirée commence. Le principe : une présentation avant de passer au concret avec un petit exercice de codage à réaliser.

### Michaël Figuière et Jean-Baptiste Lemée nous font découvrir la librairie Apache Mahout.

Quelle chance ! Je suis tombée sur un sujet passionnant : **le [Machine Learning](http://en.wikipedia.org/wiki/Machine_learning).** Pour rappel, ce sous-domaine de l’ [**Intelligence Artificielle**](http://fr.wikipedia.org/wiki/Intelligence_artificielle), étudie les machines capables “d’apprendre”, c’est-à-dire qui adaptent leur comportement en fonction des données reçues.

La librairie Apache Mahout est donc un ensemble d’implémentations d’algorithmes permettant de rajouter des fonctionnalités intelligentes aux applications à partir des données issues du comportement des utilisateurs.

On rencontre déjà sur le web des applications utilisant des algorithmes de Machine Learning :

- sur Amazon, les recommandations des articles achetés par d’autres utilisateurs “similaires” (par un algorithme de Recommandation),
- les filtres de mails capables d’identifier les spams en entrée grâce à une classification déjà existante (algorithme de classification automatique des documents),
- ou encore Google News regroupant les news similaires et attribution de tags (algorithme de Clustering).

Le machine Learning est un bon complément aux moteurs de Recherche puisqu’il peut être utilisé pour améliorer l’affichage des résultats d’une recherche utilisateur. (Tiens ça, j’ai déjà entendu parler dans un sujet connexe, le Web Sémantique, par Nuxeo. Cette fonctionnalité de filtre de recherche est en effet intéressante pour un ECM (_[Enterprise Content Management](http://fr.wikipedia.org/wiki/Gestion_de_contenu))_.)

Bref, Apache Mahout, propose justement de mettre en oeuvre ce type de fonctionnalités et ce de manière très aisée.

### Alors, c’est parti pour la pratique!

Nous devons réaliser un moteur de recherche de recettes de cuisine. Plus précisément, l’application propose des recettes de cuisine proches des goûts de l’utilisateur, si, si, ça marche !

En quelques lignes de code (5 précisément), et un ajustement empirique du paramétrage, j’obtiens sur mon écran une suggestion de recettes (éclair au chocolat, fondant au chocolat, salade au fenouil…) rentrées dans la base par mon voisin (lui aussi aime le chocolat). Tout cela après avoir défini les recettes que j’aime…dont quelques unes à base de chocolat.

Alors, comment fonctionne le moteur de recommandations ?

1) Vous spécifiez le datamodel (l’ensemble des données à prendre en compte en entrée) :

`DataModel dataModel =`

2) vous définissez le type de “similarité” :

`UserSimilarity userSimilarity =`

3) vous calculez le “voisinage”, un ensemble d’utilisateurs proches selon la règle de similarité définie au point 2 :

`UserNeighborhood userNeighborhood =`

4) Votre moteur est prêt, vous pouvez l’utiliser pour récupérer des items à recommander à l’utilisateur.

Ici, c’est l’algorithme de Recommandation “User-based” qui a été mis en oeuvre. Au lieu du critère des utilisateurs similaires, il est possible de retrouver les items qui ont des points en commun : c’est l’algo Item-based. L’application ayant reconnu que j’avais des points communs avec mon binôme m’a proposé ses items. Tout un programme !

Bien sûr, agilité et bonnes pratiques obligent, nous avons réalisé la fonctionnalité après avoir fait fonctionner le test unitaire !

Vous voyez, c’était vraiment très simple et rapide, même en comptant les pauses pour déguster les sushis. (et boissons de toutes sortes, de quoi sustenter tous les amateurs de marmite à volonté. Bravo pour l’organisation. ) Bon, je ne vous cache pas, la méthode de choix des implémentations restait pifométrique à ce stade :  `LogLikelihoodSimilarity` et pourquoi pas `TanimotoCoefficientSimilarity` ? `NearestNUserNeighborhood` plutôt que `ThresholdUserNeighborhood`, etc… On peut encore s’améliorer.

Quelle soirée sympa et intéressante.

J’ai hâte d’être à la prochaine marmite avec les Duchess. Hé les filles, vous venez la prochaine fois ?

[http://mahout.apache.org/](http://mahout.apache.org/)
