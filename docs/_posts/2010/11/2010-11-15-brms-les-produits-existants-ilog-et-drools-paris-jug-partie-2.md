---
layout: "post"
author: 
  - "Katia"
title: "BRMS – Les produits existants : ILOG et Drools. Paris JUG (Partie 2)"
date: "2010-11-15"
categories: 
  - "les-conferences"
tags: 
  - "brms"
  - "drools"
  - "ilog"
  - "jrules"
  - "moteurs-de-regles"
  - "paris-jug"
---

| Après la dégustation de spécialités mauriciennes et le résultat du jeu concours lancé par Ippon, retour aux choses sérieuses avec la présentation de deux BRMS présents sur le marché : ILOG et Drools. |

## Enabling agile business and IT collaboration using the ILOG BRMS

Daniel Selamn, architecte du produit chez IBM Websphere est venu nous présenter Ilog, l’ancien JRules. Convaincu que dans un monde qui change vite, le SI doit être capable d’évoluer très vite, Daniel est venu nous parler de ce qu’il appelle une **“Change Oriented Architecture”**.

![Daniel Selamn](/assets/2010/11/2010-11-15-brms-les-produits-existants-ilog-et-drools-paris-jug-partie-2/5163246945_2a56d92217.jpg)

Daniel Salamn - Photo : José Paumard

### Différents types de changement

De la même façon qu’on a externalisé les données dans des bases, on cherche maintenant à externaliser la logique métier dans un dépôt externe. Néanmoins les changements dans une application peuvent être de types très différents : il peut s’agir d’un refactoring de code, de modèle, de règles métiers, de GUI, etc … Chacun de ces changement impliquera un processus et aura un impact différents sur l’application, les tests et la validation ne seront pas les mêmes pour tous.

### Changement et données

Un processus de validation du changement a besoin de méta-donnée : quel est le numéro de version ? est-ce validé ? est-ce déployé ? Ces méta-données vont aussi refléter l’aspect humain du changement : qui a demandé ce changement ? qui l’a fait ? qui l’a validé ? De plus même lorsqu’une nouvelle version est disponible et déployée, les précédentes doivent toujours fonctionner. Tout ceci rentre en compte dans le processus de traçabilité, processus relativement coûteux d’où l’intérêt d’externaliser les règles. C’est ce que Daniel appelle le “time-travel” : la possibilité de simuler à tout moment un résultat avec un ancien jeu de règles.

### L’humain face au changement

Les audits quant à eux coûtent cher aussi, néanmoins avant tout changement il faut s’assurer que les conditions nécessaires sont réunies : le code doit être prêt avant que l’utilisateur ne s’en serve, ce qui demande une coordination dans l’équipe. De plus il ne faut pas perdre de vue que le travail réalisé doit rester compréhensible par des humains, c’est à dire des personnes dont le raisonnement, contrairement à celui d’une machine, ne peut pas changer toutes les semaines voir tous les jours ou toutes les heures.

### Le rôle de l’IT

Les développeurs et l’architecte doivent mettre en place le _container for change_, ce qui nécessite :

- une réelle compréhension du business
- des outils compréhensibles par tout le monde
- des connaissances approfondies certes, mais aussi diversifiées
- de bien connaître la problématique de gouvernance : pourquoi a-t’on fait ces changements ?
- d’avoir réussi à faire intégrer au management que l’intérêt de payer plus au départ est d’avoir une pérennité sur le long terme
- d’avoir correctement listé les types de changements nécessaires afin de limiter le _“over-engineering”_

### Change cycle with Ilog BRMS

Pour le développement du langage usuel qui sera utilisé par le métier, Ilog offre un environnement eclipse : le Rule Studio. Le RuleTeamServer quant à lui, est un environnement basé sur le web pour les utilisateurs métiers offrant à la fois la possibilité d’éditer les règles dans le repository, de les versionner, commenter etc … Les modifications sont clairement repérables et traçables. Les règles sont ensuite déployées dans un serveur qui sera appelé par l’application finale pour les exécuter : le Rule Execution Server. Celui ci permet d’obtenir des statistiques, de rechercher une transaction individuelle, d’exporter les données, bref de faire du Business Intelligence.

Plus d’informations sur Ilog [ici](https://www-01.ibm.com/software/fr/websphere/ilog/).

## Pushing the rule engine to its limits with Drools Planner

Cette quatrième partie de la soirée a été présenté par Geoffrey De Smet. Geoffrey a travaillé dans plusieurs projets opensource, notamment des plugins Maven, Spring Rich Client et d’autres projets JBoss. En 2007, son framework des méta-heuristiques – aujourd’hui connu sous le nom de Drools Planner – a été pris par JBoss.org et la communauté Drools. Depuis 2010 il travaille pour Red Hat à temps complet sur la plateforme Drools.

![Geoffrey De Smet](/assets/2010/11/2010-11-15-brms-les-produits-existants-ilog-et-drools-paris-jug-partie-2/5163247939_5ce48295a4.jpg "Geoffrey De Smet")

Geoffrey De Smet - Photo : José Paumard

La présentation a été vraiment riche en contenu, très intéressante et méritait bien une heure complète.

### Drools – plateforme

La plateforme de Drools est composée des modules suivantes :

- **Expert :** Le moteur des règles

- **Flow (jBPM 5) :** Le workflow bussiness associé à un processus

- **Fusion :** Complex Event Processing (CEP)

- **Guvnor :** Le BRMS (Business Rule Management System)

- **Planner :** Automated planner

Geoffrey est venu nous présenter le module **“Planner”**

### Qu’est-ce que c’est un problème de planning ?

Geoffrey, très passionné par son métier, nous a démontré par un exemple récent de sa vie quotidienne ce qu’est un problème de planning.

Qui n’a jamais été chez Ikea, ou n’a jamais déménagé ? On se retrouve avec plusieurs cartons de différentes tailles … mais on ne dispose que d’une seule voiture. On souhaite tout y mettre  afin de réaliser un seul voyage (ou le minimum de voyages possible), donc pour cela il faut économiser l’espace, ranger les boîtes dans un ordre précis et les placer dans la bonne position, ce qui n’est pas évident. On doit toujours passer pas mal de temps pour trouver le bon ordre… Et finalement on se demande si on avait bien choisi ou si une autre manière d’ordonner n’aurait pas été plus performante….

Ceci est connu comme étant un problème de **“Bin packaging”**. La réalité est que pour un problème déterminé, il n’existe pas une et une seule solution. Pis, si la solution n’existe pas, il n’est pas facile de prouver la non-existence de solution. Drools planner est là pour trouver la solution la plus optimale, ou nous montrer qu’aucune solution n’existe.

**Organisation des employeurs**

Imaginons le besoin d’organiser le travail des employés d’un hôpital, notamment les rotations des infirmières. Drools Planner est capable d’organiser tout cela en tenant compte des contraintes – qu’elles soient fortes ou faibles, tout en travaillant en parallèle avec Drools Expert (le moteurs de règles). Par exemple, une contrainte forte peut être qu’une infirmière ne peut travailler qu’un tour par jour (sinon elle sera trop fatiguée) :

// a nurse can only work one shift per day
rule "oneShiftPerDay"
   when
      $left : **EmployeeAssignment(**
              $employee : employee,
              $shiftDate : shiftDate,
              $leftId : id
      );
     $right : **EmployeeAssignment(**
             ** employee == $employee, shiftDate == $shiftDate,**
              id > $leftId);
     then
        // Lower the hard score with a weight ...
end

Et en même temps, des contraintes faibles vont venir s’ajouter : par exemple certaines infirmières préféreront ne pas travailler le mercredi et d’autres préféreront avoir leur week end. Or, la quantité de contraintes faibles est plus nombreuse que celle des contraintes fortes. Drools planner est capable de travailler avec beaucoup de contraintes de manière efficiente, ce qui améliore ne seulement le service offert, mais également l’optimisation des ressources.

**Admission des patients d’un hôpital**

Une autre problématique liée à la planification, en restant dans le domaine de la santé, est l’organisation de l’admission des patients dans un hôpital. Ainsi :

Quelques contraintes fortes:

- Deux patients ne peuvent pas occuper le même lit dans la même nuit
- Les hommes et les femmes occupent des chambres séparées
- Le patient a besoin d’équipement adapté

Quelques contraintes faibles :

- La spécialisation du département
- La spécialisation de la chambre
- Le patient demande un équipement particulier dans la chambre

Les données suivantes sont réelles. On dispose de 310 lits et de 2750 patients (admissions) – sans tenir compte ici ni des départements, ni du genre de la chambre, ni du nombre de nuits à planifier.

Combien existe-t-il de solutions possibles ? Moins que …

1. la quantité d’ouvrages du Louvre : 35 000 ?
2. le nombre d’humains sur terre : 7 000 000 000 ?
3. le minimums d’atomes observables dans l’univers : 10^80 ?
4. le nombre d’atomes dans l’univers dans lesquel chaque atome est un univers lui même  : (10^80)^80 = 10^6400 ?
5. plus ? ![:)](/assets/2010/11/2010-11-15-brms-les-produits-existants-ilog-et-drools-paris-jug-partie-2/icon_smile.gif)

La quantité de possibilités dans le cas décrit est d’un peu plus de **10^6851** !!!!!!!! **Et comment ? (ahh les maths …)**

- 1 patient, 310 possibilités
- 2 patients, 310×310 possibilités : 96 100
- 3 patients, 310 x 310 x 310 : 29 791 000
- 2750 patients : 310 ^ 2750 –> un peu plus de 10^6851

Drools planner à l’aide de Drools Expert nous permettra de trouver la bonne planification.

### Les algorithmes – les bons algorithmes vs le CPU

Geoffrey nous a expliqué ici que la recherche des résultats de planification avec les données décrites précédemment, et ce de façon performante n’est pas possible aujourd’hui avec les seules machines et leur hardware aussi puissant soit-il (c’est qui est appelé la force brute). Ainsi, si on réalise des algorithmes un tant soit peu intelligents, mais pas suffisamment, on n’y arrivera pas non plus.

Dans cette partie qui a été très rapidement expliquée, faute de temps, on retient que Drools Planner comprend des fonctionnalités pour réaliser des recherches et des algorithmes complexes et performants. On apprend que ces algorithmes de recherche ont aussi une nature stateful : les voies de recherche déjà explorées sont mémorisées, les branches qui ne sont pas liées à un changement particulier dans l’arbre de recherche ne sont pas explorées etc. Cette partie n’est pas facile, mais elle suppose un vrai challenge vis -à-vis de notre métier.

### Conclusions

Avec Drools planner on pourra résoudre des vrais problèmes de planification. On sera capable d’ajouter des contraintes facilement et de façon scalable, et rendre facile l’adaptation et/ou la combinaison des algorithmes de recherche.

Pour en savoir plus rendez-vous sur [http://www.jboss.org/drools/](http://www.jboss.org/drools/ "JBoss - Drools")

**Au prochain Paris JUG !!**

**![:-)](/assets/2010/11/2010-11-15-brms-les-produits-existants-ilog-et-drools-paris-jug-partie-2/icon_smile.gif)**
