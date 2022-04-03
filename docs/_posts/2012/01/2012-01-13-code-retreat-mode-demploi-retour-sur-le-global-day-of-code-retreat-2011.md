---
layout: "post"
author: 
  - "Isabelle"
title: "Code Retreat : Mode d’emploi (retour sur le Global Day of Code Retreat 2011)"
date: "2012-01-13"
categories: 
  - "les-conferences"
tags: 
  - "code-retreat"
---

| ![Duchess au Global Day of Code Retreat](/assets/2012/01/2012-01-13-code-retreat-mode-demploi-retour-sur-le-global-day-of-code-retreat-2011/DuchessCodeRetreatGrand.jpg)Le 3 Décembre 2011 a eu lieu le [Global Day of Code Retreat](http://globalday.coderetreat.org/) où plus de 2200 développeurs se sont retrouvés le temps d’une journée dans [plus de 90 villes du monde](http://coderetreat.ning.com/events/event/listByDate?date=2011-12-3) , simplement, pour écrire du beau code… |

En France, seulement trois Code Retreat ont été organisés à l’occasion de cette journée:  
\- [un à Paris dans les locaux de Xébia](http://coderetreat.ning.com/events/code-retreat-paris-france)  
\- [un à Bordeaux dans les locaux d’Arpinum](http://coderetreat.ning.com/events/global-day-of-codertreat-bordeaux-france)  
\- [et un à Toulouse dans les locaux de DocDoku](http://coderetreat.ning.com/events/global-day-of-coderetreat-in-toulouse)

Connaissant déjà les [Coding Dojo](http://jduchess.org/duchess-france/blog/resolutions-2011-coding-dojo-code-retreat/), j’étais curieuse d’en savoir plus sur les bienfaits d’un Code Retreat que l’on m’avait décrit comme une journée de code composée de **5 ou 6 itérations de 45 minutes** ; chaque itération étant consacrée à **coder le même problème** dans le langage de son choix… et tout cela en prenant bien soin **à la fin de chaque itération d’effacer le code écrit et de changer de binôme !**  
Et c’est surtout ce point qui m’intriguait : effacer et recommencer à coder….mais pourquoi ?

C’est donc, avec une certaine curiosité, que j’ai rejoint dès 8h30 du matin les 15 autres participants de ce premier Code Retreat toulousain. Là, j’ai pu constater qu’un des premiers mérites du Code Retreat avait été de regrouper des habitués de plusieurs User Group toulousains : [Toulouse JUG](http://toulousejug.org/) ,  [Apéro WEB](http://www.aperoweb.fr/category/Toulouse) , et les agilistes de la [SigmaT](http://sigmat.fr/)

Après un café, [Antoine](http://twitter.com/avernois), notre animateur du jour (_**“facilitator”**_) nous a présenté le déroulement de la journée, mais surtout le problème à coder qui n’était autre que le jeu de la vie (Game of Life). Le **jeu de la vie** est un  automate cellulaire imaginé par John Horton **Conway** en 1970. L’_**univers**_ du jeu de la vie se déroule sur une grille à deux dimensions, théoriquement infinie. Chaque _**cellule**_ a 2 états possibles _**vivante**_ ou _**morte**_. À chaque étape, l’évolution d’une cellule est entièrement déterminée par l’état de ses voisines. Les règles suivantes nous ont été proposées :

- Si une cellule est vivante et a strictement moins de 2 voisines vivantes, elle mourra à l’étape suivante en raison d’une sous-population.
- Si une cellule est vivante et a strictement plus de 3 voisines vivantes, elle mourra à l’étape suivante en raison d’une sur-population.
- Si une cellule est vivante et a 2 ou 3 voisines vivantes, elle restera vivante à l’étape suivante.
- Si une cellule est morte et a exactement 3 voisines vivantes, elle naîtra et deviendra ainsi vivante à l’étape suivante.

Cette journée étant consacrée au code, il était donc fondamental de rappeler également [les 4 règles élémentaires requises pour écrire du code de qualité](http://c2.com/cgi/wiki?XpSimplicityRules) :

- Faire passer les tests, autrement dit pratiquer du TDD (Test Driven Developpment)
- Eviter la duplication de code (principe DRY  :  Don’t Repeat Yourself )
- Faire en sorte que le code soit clair, expressif, autrement dit qu’il révèle l’intention (noms de variables, de méthodes explicites…y compris pour les tests)
- Ecrire du “petit code”, autrement dit minimiser la longueur des classes et des méthodes.

Un des principes du Code Retreat est que chaque participant vienne avec un ordinateur portable sur lequel il a installé au moins un environnement de développement de son choix (comprenant bien sûr une libraire de tests unitaires…).  
Les itérations se déroulent ensuite en **pair-programming** (en binôme) où le _**ping pong**_ est encouragé :

- un membre du binôme écrit un test unitaire,
- l’autre membre doit écrire le code métier qui fait passer ce test,
- puis avant de repasser le clavier à son collègue, il écrit un nouveau test unitaire, que son collègue doit faire passer,
- et ainsi de suite…

La présentation terminée, il était grand temps de découvrir les langages du jour. La plupart des participants étaient venus avec un environnement Java, mais il était également possible de développer en C++, Python, C#, Php et même Javascript.  
Tout était dit. La première itération de code pouvait être lancée !  
Les binômes se sont rapidement formés au hasard et le marathon des six itérations a pu commencer…

_**Première itération :  Installation & Compréhension du  problème…**_  
Cette première itération sert en quelque sorte d’échauffement pour la suite de la journée.  
Après l’installation des binômes et le lancement des environnements de développement vient le temps de la réflexion et de l’analyse du problème donné. On commence alors à s’approprier les règles du jeu de la vie, à griffonner un diagramme d’états, puis le code peut enfin s’exprimer. Dans cette première itération, nous avons choisi d’implémenter l’_**univers**_ du jeu de la vie de manière très simple (tableaux à deux dimensions) afin de s’intéresser au plus vite aux règles métier. Aucune consigne n’avait été donnée pour cette itération, à part le respect du ping pong. Mais 45 minutes passent très vite (trop vite) et c’est vraiment lorsqu’on commence à être un peu  productif, à rentrer dans le vif du sujet, que l’on doit s’arrêter. Et oui, c’est déjà fini…  Au bout de ces premières 45 minutes, l’application est loin d’être terminée et le code écrit pas vraiment optimisé.  
Je dirais que cette première itération sert de défrichage et permet de se mettre dans l’ambiance de la journée.  
Chaque itération est ensuite suivie d’une rétrospective de 15 minutes animée par le “facilitator”.  
A la fin de la rétrospective, Il faut respecter **une des règles d’or du Code Retreat : effacer le code produit au cours de l’itération**. Cela est un peu déroutant la première fois. Donc ce n’est pas sans quelques réticences que nous avons supprimé notre code, mais c’est la règle !

_**Deuxième itération :  Vers une conception Objet mieux pensée …**_  
Chaque itération donne l’occasion de coder avec une nouvelle personne, les binômes devant être recomposés à chaque fois. Il est même possible de changer de langage d’une itération à l’autre …  
Avant chaque itération, une [nouvelle consigne est donnée par l’animateur](http://coderetreat.org/facilitating/structure-of-a-coderetreat) afin d’encourager une création différente à chaque fois. La première rétrospective avait montré que la plupart des binômes était partie sur un tableau pour implémenter rapidement l’univers du jeu de la vie. Dans cette deuxième itération, la consigne donnée était donc de penser plus Objet en terme d’Univers et de Cellule…  
Dès cette deuxième itération, j’ai pu constaté que l’écriture du code était beaucoup plus fluide, moins hésitante, plus rapide. Le code produit à l’itération précédente était naturellement repensé et optimisé pour la nouvelle itération. Le fait d’effacer le code permettrait-il alors vraiment d’écrire du code différent et plus performant d’itération en itération ?  
La consigne étant l’Objet, notre binôme a cependant beaucoup discuté  lors de cette itération sur la manière de prendre en compte le caractère extensible du problème (cellules à _n_ facettes, univers à _n_ dimensions) pour finalement convenir avec l’animateur que nous resterons par la suite seulement dans un espace à deux dimensions. Avons-nous perdu notre temps ? Je ne pense pas car nous avons pu mener une réflexion commune. Et cela fait également partie de la magie du Code Retreat de pouvoir s’adapter immédiatement à son binôme, de pouvoir partager ses points de vue, ses bonnes pratiques de code et ses astuces de programmation.  
A la fin de cette deuxième  rétrospective, il n’a pas fallu déroger à la règle de base du Code Retreat qui consiste à supprimer définitivement le code, et cette fois-ci c’est même avec un certain plaisir que chaque binôme a effacé son code !

_**Troisième itération :  No For, No if …**_  
La consigne de la troisième itération était de n’écrire  ni boucle, ni test : **“No for, No if”** devait désormais être notre devise. Je n’avais jamais envisagé avant d’écrire un programme Java sans for, ni if (ni while, ni switch) et je dois dire que cette consigne nous a laissés perplexes pendant un certain temps : pas vraiment évident de respecter une telle consigne …  
Certains binômes ont essayé de contourner la contrainte en dissimulant dans leurs instructions des tests via des opérateurs binaires et ternaire (&&, ||,?), d’autres ont évoqué le [pattern Visiteur](http://fr.wikipedia.org/wiki/Visiteur_(motif_de_conception) "pattern Visiteur").  
La notion de récursivité est également venue naturellement à l’esprit dès lors que les boucles n’étaient pas permises. Mais classiquement, qu’est-ce qui stoppe une récurrence ? Une condition d’arrêt que l’on écrit généralement avec un if !…Et hop, il est encore nécessaire de pousser la réflexion un peu plus loin. Ce test conditionnel peut alors être évité en faisant appel à des notions de polymorphisme. [Vincent](http://twitter.com/VincentFERRIES) propose dans son retour [un exemple de code pour illustrer cette solution.](http://blog.genigraph.fr/2012/01/03/code-retreat-de-toulouse-le-03-decembre-2011/)  
Personnellement, c’est l’itération de la journée que j’ai préférée. Ecrire un code sans structure de contrôle est une contrainte qui ne me serait jamais venue à l’esprit…et pourtant au final, on constate que c’est un excellent exercice pédagogique !

A la fin de la troisième itération, il était déjà plus de midi : l’heure de la pause déjeuner.  
_**Le repas fait intégralement partie du concept du Code Retreat**_ : c’est un moment convivial d’échanges entre les participants. Il est donc  important de prendre une vraie pause repas d’environ une heure et demie. Le repas est généralement offert par le sponsor de l’événement. Merci [DocDoku](http://www.docdoku.com/) !

_**Quatrième itération :  Tell don’t ask, no primitive obsession …**_  
La consigne de la quatrième itération était de respecter le principe [_**Tell don’t ask**_](http://pragprog.com/articles/tell-dont-ask). Ce **principe de connaissance minimale** consiste _à demander directement_ à un objet ce qu’il doit faire, _plutôt que de l’interroger_ sur son état interne afin de prendre des décisions qui mènent à des actions de sa part… Autrement dit, _**les getters/setters devaient cette fois-ci être bannis de notre code**_, et les méthodes judicieusement choisies et nommées en fonction de nos besoins.  
Le principe **Tell don’t ask** imposé dans cette itération devait également nous amener à repenser notre code en évitant toute _**“primitive obsession”**_ c’est-à-dire que nous devions _**éviter d’utiliser des types primitifs**_ comme attributs (autant que possible).  
Durant cette itération nous nous sommes donc plus particulièrement intéressés aux cellules, à leurs coordonnées, et à la notion de voisinage ? La Cellule doit-elle connaître ses coordonnées ?  La Cellule doit-elle connaître ses voisins ? Ne serait-il pas plus judicieux que l’Univers gère lui-même la notion de voisinage ? etc …  
De nombreuses questions qui  devaient nous amener à écrire un nouveau code “tout objet”, vraiment très différent de celui de la première itération.

_**Cinquième itération :  Itération sans parole …**_  
La cinquième itération fut une itération qui se déroula sans bruit, puisque la consigne consistait à interdire aux membres d’un même binôme de parler entre eux. Seuls les tests, écrits de manière expressive, devaient permettre de révéler les intentions de l’un et de l’autre. Sans discussion préalable possible, cette itération, bien plus que les précédentes, demandait de porter une attention particulière à _**l’expressivité du code** _ pour que chacun puisse comprendre l’attente de l’autre. Il fut  indispensable de  nommer les méthodes de manière très significative, ce qui nous amena bien souvent à écrire de véritables phrases pour nommer les méthodes des classes de test .  
Cette itération fut une itération assez difficile à mener. En effet, arrivés à la cinquième itération de la journée, chacun a avancé dans sa vision du problème en menant au cours de la journée ses propres réflexions avec des binômes différents. Et bien que les contraintes de chaque itération soient communes, les choix de conception et d’implémentation sont parfois bien différents. Ce fut le cas pour cette itération où avec mon binôme nous avions deux approches différentes, ce qui compliqua la tâche mais nous incita doublement à écrire des tests expressifs afin d’essayer de trouver une solution commune.

_**Sixième itération :  A La Carte …**_  
La sixième et dernière itération était une itération “à la carte” destinée à se faire plaisir où chaque binôme pouvait choisir une consigne parmi les propositions suivantes :

1. **_Désaccord_**  ou  écrire du code pour aller dans le sens inverse du test à vérifier…
2. _**Pire code**_ possible
3. _**Sans la Souris**_ … pour les spécialistes des raccourcis claviers (1)…
4. _**Des méthodes de 3 lignes maximum.**_

(1) Une discussion a depuis été lancée sur la [mailing list du Toulouse JUG](https://groups.google.com/forum/#!topic/toulouse-jug/SpOWtYPxJa0) !

**_Rétrospective finale_**  
Lors de la rétrospective finale chaque participant a dû répondre aux 3 questions suivantes :

1. Qu’est-ce que j’ai **appris** aujourd’hui ?
2. Qu’est-ce qui m’a **surpris** aujourd’hui ?
3. Qu’est-ce que je vais mettre en application dès **Lundi** ?

Les expériences des participants étaient diverses, mais chacun s’est accordé pour dire :

- que la journée avait été très riche en échanges et en partage de bonnes pratiques,
- que les six itérations avaient chacune conduite à la production d’un code bien différent,
- et que dès lundi les tests bien écrits allaient être (re)mis à l’honneur dans les équipes de développement !

La journée s’est terminée par l’annonce de la [création d’une communauté Software Craftsmanship sur Toulouse](http://antoine.vernois.net/dotclear/index.php?post/2012/01/09/Software-Craftsmanship-%C3%A0-Toulouse) qui, espérons-le, proposera très prochainement d’autres Code Retreat !

_**Liens :**_  
[http://globalday.coderetreat.org/](http://globalday.coderetreat.org/)  
[http://jduchess.org/duchess-france/blog/resolutions-2011-coding-dojo-code-retreat/](http://jduchess.org/duchess-france/blog/resolutions-2011-coding-dojo-code-retreat/)  
[http://coderetreat.com/gol.html](http://coderetreat.com/gol.html)  
[http://c2.com/cgi/wiki?XpSimplicityRules](http://c2.com/cgi/wiki?XpSimplicityRules)  
[http://coderetreat.org/facilitating/structure-of-a-coderetreat](http://coderetreat.org/facilitating/structure-of-a-coderetreat)  
[http://coderetreat.ning.com/profiles/blogs/how-a-coderetreat-works](http://coderetreat.ning.com/profiles/blogs/how-a-coderetreat-works)  
[http://pragprog.com/articles/tell-dont-ask](http://pragprog.com/articles/tell-dont-ask)  
[https://groups.google.com/forum/#!topic/toulouse-jug/SpOWtYPxJa0](https://groups.google.com/forum/#!topic/toulouse-jug/SpOWtYPxJa0)  
[http://antoine.vernois.net/dotclear/index.php?post/2012/01/09/Software-Craftsmanship-%C3%A0-Toulouse](http://antoine.vernois.net/dotclear/index.php?post/2012/01/09/Software-Craftsmanship-%C3%A0-Toulouse)

_**Autres retours sur le Global Day of Code Retreat :**_  
[http://blog.genigraph.fr/2012/01/03/code-retreat-de-toulouse-le-03-decembre-2011/](http://blog.genigraph.fr/2012/01/03/code-retreat-de-toulouse-le-03-decembre-2011/)  
[http://blog.r0ly.fr/?p=67](http://blog.r0ly.fr/?p=67)

_**Des Photos du Code Retreat toulousain**_  
[https://plus.google.com/photos/116856815308605996307/albums/5682276859165947169](https://plus.google.com/photos/116856815308605996307/albums/5682276859165947169)
