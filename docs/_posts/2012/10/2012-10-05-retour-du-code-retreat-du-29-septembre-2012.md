---
layout: "post"
author: 
  - "Ludwine"
title: "Retour du Code Retreat du 29 Septembre 2012"
date: "2012-10-05"
categories: 
  - "developper"
  - "les-communautes"
tags: 
  - "code-retreat"
---

| Samedi 29 Septembre 2012, 8:30 AM, un groupe de personnes se réunit devant le 156 boulevard Haussman. Non, il ne s'agit pas d'une réunion clandestine :). Toutes ces personnes sont là pour participer à une journée de [**code retreat**](http://coderetreat.org/ "Code Retreat"). |

**Le principe du code retreat**

Ouvert à tous et toutes, le code retreat a été conçu par les développeurs pour les développeurs. Basés sur les principes des Coding Dojo, un code retreat dure quant à lui une journée entière. C'est un événement lors duquel le pair-programming, le design de code, le "beau" code sont mis en avant. Un code retreat peut aussi être l'occasion de découvrir d'autres langages, puisqu'aucune contrainte de langage n'est imposée. Lors de ce code retreat, nous avons codé en javascript, scala, erlang, ruby, haskell et smalltalk.

Un exercice de code est choisi par les animateurs, le plus connu étant ["Le Jeu de la Vie"](http://en.wikipedia.org/wiki/Conway's_Game_of_Life "Conway's game of life"). Tout au long de la journée, les participants en pair-programming codent l'exercice lors de plusieurs itérations de 45 minutes chacune. Chaque itération est suivie d'une rétrospective commune de 15 minutes et d'une petite pause de 5 minutes.

Après chaque itération, les participants sont encouragés à changer de binôme. De plus, le code produit lors de la précédente itération est supprimé afin de repartir à zéro à la nouvelle itération.

En général entre 5 et 7 itérations sont faites dans la journée, avant de terminer par une rétrospective globale.

**L'arrivée - les croissants**

Les organisateurs, [Jean-Laurent De Morlhon](https://twitter.com/morlhon) et [Laurent Bossavit](https://twitter.com/Morendil), nous ont accueilli dès 8h30 puis convié à un petit déjeuner très équilibré composé de croissants, pains au chocolats et autres viennoiseries bien nécessaires pour affronter cette matinée.

[![](/assets/2012/10/2012-10-05-retour-du-code-retreat-du-29-septembre-2012/Arrive.jpg "Arrive")](http://www.duchess-france.org/wp-content/uploads/2012/09/Arrive.jpg)

Après nous avoir expliqué les règles du jeu, [Jean-Laurent](https://twitter.com/morlhon) et [Laurent](https://twitter.com/Morendil), nous ont invité à  **"ouvrir notre esprit"**, autrement dit :

- Essayez des choses que vous n'osez pas faire dans le cadre du travail, mêmes si elles ne marchent pas au final. Explorez, tentez, et osez !
- Variez les binômes,
- Ne soyez pas timide et osez d'autres langages.

**Les premières itérations**

Voici les quelques règles de **Simple Design** que nous avons essayer de mettre en oeuvre lors des différentes itérations:

- Exécuter d'abord tous les tests et vérifier qu'ils passent,
- DRY - Don't Repeat Yourself,
- Reveal Intent : montrer ses intentions (nommage, 1 méthode = 1 fonctionnalité,...),
- Faire des méthodes et classes de petite taille.

[![](/assets/2012/10/2012-10-05-retour-du-code-retreat-du-29-septembre-2012/Binomes1.jpg "Binômes")](http://www.duchess-france.org/wp-content/uploads/2012/09/Binomes1.jpg)

**Pause déjeuner**

La pause déjeuner a été l'occasion de nous connaître un peu plus, de partager nos expériences dans nos missions, de revenir sur les algorithmes/solutions trouvés pour implémenter "Le Jeu de la Vie", ou encore de regarder des vidéos geek.

\[caption id="attachment\_2104" align="aligncenter" width="700"\][![](/assets/2012/10/2012-10-05-retour-du-code-retreat-du-29-septembre-2012/MANGERRETREAT.jpg "Pizzas et Pause Déjeuner Code Retreat 09/12")](http://www.duchess-france.org/wp-content/uploads/2012/09/MANGERRETREAT.jpg) Pizzas et Pause Déjeuner\[/caption\]

## **L'après-midi**

Pour les itérations de l'après-midi, [Laurent](https://twitter.com/Morendil) et [Jean-Laurent](https://twitter.com/morlhon) nous ont proposé de rajouter des contraintes : nous avons notamment essayé la technique TDD Ping-Pong à l'aide du plugin eclipse [PairHero](http://www.happyprog.com/pairhero/ "PairHero"), rendant au passage le binômage un peu plus ludique.

Quelques exemples de la programmation par contrainte :

- n'utiliser que des Objets ou que des Types Primitifs,
- interdiction d'utiliser la souris ou le touch-pad,
- interdiction de parler avec son binôme,
- pas de _if,_
- pas de _while/for,_
- pas de _return._

[![](/assets/2012/10/2012-10-05-retour-du-code-retreat-du-29-septembre-2012/Binomes2.jpg "Pair Programming People")](http://www.duchess-france.org/wp-content/uploads/2012/09/Binomes2.jpg)

Pour anecdote, un binôme a décidé s'imposer la contrainte de ne pas se parler durant la dernière itération. Le début a bien fonctionné, mais au bout d'un moment les désaccords sont apparus sur la marche à suivre sur un des algorithmes à coder ! Le silence a été brièvement brisé afin de repartir sur de bonnes bases. Au final, le binôme a presque fini l'exercice ! L'expérience s'est avérée être très drôle pour le binôme et surtout pour celui d'en face assistant à ce spectacle où aucun sourire ne transparaissait !!

La leçon à retenir: il faut bien entendu communiquer, mais il est également très important d'aller à l'essentiel.

**Rétrospective de la journée**

Pour conclure cette journée, chaque participant a répondu aux questions suivantes:

- Qu'avez-vous appris aujourd'hui ?
- Qu'est-ce qui vous a surpris aujourd'hui ?
- Qu'allez-vous appliquer dès lundi au travail ?

\[caption id="attachment\_2120" align="aligncenter" width="600"\][![](/assets/2012/10/2012-10-05-retour-du-code-retreat-du-29-septembre-2012/DayRetro.jpg "Rétrospective de la journée 29/09/12")](http://www.duchess-france.org/wp-content/uploads/2012/09/DayRetro.jpg) Rétrospective de la journée\[/caption\]

**Conclusions**

Un code retreat est un très bon moyen d'apprendre à coder proprement, de se confronter à d'autres approches, façon de penser via le pair-programming. C'est aussi l'occasion de tenter ce que l'on n'ose pas dans nos missions et d'essayer d'autres langages.

**N'hésitez pas à participer aux prochains [code retreat](http://coderetreat.org/ "Code Retreat"), quelques soient vos connaissances, votre expérience et vos langages de programmation !**

###### Merci à [Jean-Laurent De Morlhon](https://twitter.com/morlhon) et [Laurent Bossavit](https://twitter.com/Morendil)  pour l'organisation de la journée, et pour leurs remarques pertinentes. Merci aussi à [Xebia](http://blog.xebia.fr/) pour l'hébergement.
