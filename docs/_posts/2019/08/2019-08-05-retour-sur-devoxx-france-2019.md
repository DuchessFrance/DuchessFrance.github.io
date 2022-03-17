---
layout: "post"
author: 
  - "marina"
title: "Retour sur Devoxx France 2019"
date: "2019-08-05"
categories: 
  - "les-conferences"
  - "speakeuses"
tags: 
  - "conferences"
  - "devoxx"
  - "devoxx-france"
  - "devoxxfr"
coverImage: "devoxxParis2019.jpg"
---

| Du 17 au 19 avril avait lieu la 8ème édition de Devoxx France. |

Difficile de faire un choix tant le programme était riche et varié. On s'y est mises à deux et ça nous a pris un peu de temps pour vous rendre compte de ce qu'on a vu, aimé... et moins aimé. Avec en plus une section spéciale Duchess, parce que nous on trouve que c'était vraiment les meilleures mais on manque peut-être d'objectivité ;o)

![Devoxx Paris 2019](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/devoxxParis2019.jpg)

## Les incontournables

Les conférences à voir en priorité sur la [chaîne youtube de Devoxx](https://www.youtube.com/channel/UCsVPQfo5RZErDL41LoWvk0A/feed).

### [Le Web, ses frameworks et ses standards : déconstruire pour mieux (re?)construire](https://www.youtube.com/watch?v=uFxVH5mFAKg&list=PLTbQvx84FrARfJQtnw7AXIw1bARCSjXEI&index=164) par [Hubert Sablonnière](https://twitter.com/hsablonniere)

![Hubert Sablonnière Devoxx scène](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/hubertDevoxx2019scene-1024x768.jpg)

Hubert Sablonnière est un artiste. Il nous a offert une conférence digne d'une représentation théâtrale ! Et pour autant, sans compromis sur le fond.

Il part des problèmes que rencontrent les développeurs et les utilisateurs pour retracer l'évolution du web et comprendre comment nous nous sommes retrouvés avec autant d'outils pour faire du front. Puis, via un comparatif des différentes solutions qu'offrent Angular, React ou Vue, nous donne des pistes pour savoir choisir les outils en fonction du besoin. Regardez sans attendre, c'est une mine d'info.

### [Comment se faire hacker bien comme il faut !](https://www.youtube.com/watch?v=Aa6yeVHs2fI&list=PLTbQvx84FrARfJQtnw7AXIw1bARCSjXEI&index=82) par [Julien Topçu](https://twitter.com/julientopcu)

![Julien Topçu Devoxx 2019](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/julientopcuDevoxx2019.jpg)

Excellent : la prévention par l’exemple. Julien Topçu nous présente les erreurs les plus fréquentes que nous faisons quand nous développons et qui portent atteinte à la sécurité de nos applications, démonstrations à l’appui. C’est très drôle et même si certains ne voudront pas le reconnaître, on a tous appris des choses ! Le tout ponctué d’exemples dans l'actualité récente. Cultivons notre jardin avec Candide et Plangloss (oui, il y a un peu de Voltaire dans cette conf).

Voici la liste (non exhaustive des points abordés) : 

- Injection SQL : chiffrement des mots de passe, login et RGPD,
- XML external entity (pas de mot de passe dans la conf!!)
- Csrf cross-site request forgery (Pré flight request Options)
- Cors: Cross origin resource sharing
- Csrf token : secret partagé à utiliser sur les requêtes de modification de données
- Xss : cross site scripting ou Injection de script dans un champ.
- Insecure deserialization : Spring data REST
- Attention à vos dépendances : [OWASP Dependency Track Project](https://www.owasp.org/index.php/OWASP_Dependency_Track_Project)

### [The Boring Architecture, ou comment construire une licorne sur un monolith](https://www.youtube.com/watch?v=ui_FlkhtxRE) par [Michel Domenjoud](https://cfp.devoxx.fr/2019/speaker/michel_domenjoud) et [Nicolas De Nayer](https://twitter.com/@NicolasDeNayer)

Cette présentation est un REX sur la façon de travailler chez doctolib. Ils nous donnent leurs recettes pour réussir à absorber la montée en charge sur leur application tout en intégrant de nouvelles fonctionnalitées. Ils nous expliquent aussi que l’intégration ou le changement de technologie n’est réalisé que lorsque qu’il n’y a plus d’autre choix. Environ 50 développeurs, organisés en 9 feature teams (docteurs, patients …) et l’application est encore sous forme de monolith.

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/monolith.jpg)

Voici quelques un de leurs principes : 

- Autonomie : Il n’y a que des dev full Stack. Si une techno n’est pas maîtrisée par la majorité des devs alors elle est abandonnée. Les devs sont responsable d’une story de A à Z (le dev fait les tests en prod après livraison)
- Combattre la complexité : En cas de problème, on cherche à optimiser ce qu'on a déjà avant de changer d'outils. Si il le faut, ils font intervenir des experts (exemple : migration postgress/elasticSearch repoussée d’un an grâce à des optimisations de configuration).
- Feedback : Plusieurs points sont abordés : la code review, les tests automatisés, et le monitoring. Ils insistent sur l’importance pour eux d’avoir des tests automatisés. Il n’y a pas de QA faite à la main (plus de 10000 tests d’intégration). La mise en place des tests fait partie du développement des fonctionnalités. Concernant le monitoring, ils ont mis en place un outil, [New relic](https://newrelic.fr), permettant d’avoir la répartition du temps par requête de façon très fine. Les résultats sont analysés tous les jours et ils comparent/regardent les dégradations par rapport à 7 jours.
- Court vs long terme : Concernant la road map : besoin dans moins de 3 mois alors on traite. Entre 3 et 6 mois on y pense. A plus de 6 mois .. c’est non.

### [Synchronisation bi-directionnelle d'un legacy et d'une architecture micro-services](https://www.youtube.com/watch?v=ur0Z9uOKul8) par [Brice Leporini](https://cfp.devoxx.fr/2019/speaker/brice_leporini)

Cette présentation est un REX sur la mise en place d’une synchronisation bi-directionnelle entre un legacy et une architecture micro-services.

Le contexte est assez compliqué. La nouvelle stack est en micro-services (pour pouvoir profiter de leurs avantages). Le legacy est un monolith, plutôt vieux, que l’on ne peut pas modifier. Comme on migre au fil de l’eau, il faut pouvoir faire cohabiter les micro-services et le legacy sans perdre de données.

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/leporini.jpg)

Brice explique les principes et les choix technologiques qu’ils ont retenus pour réaliser cela. En voici quelques uns :

- Event sourcing : utilisation de business event (microservice vers legacy) et de validation event (legacy vers microservice) 
- Communication asynchrone entre le microservice et le legacy.
- Event store (côté microservice) : stockage des events pour calculer l’état de la donnée.
- Change data capture (debezium) : récupération des modifications réellement faites par le legacy sur sa base de données. 
- Application du pattern CQRS : ségrégation entre lecture et écriture.

La présentation contient des schémas et des diagrammes pour expliquer les échanges de données et le rôle de chaque brique technique. Brice explique aussi la stratégie utilisée pour passer en production petit à petit et sans stress.  

## Les un peu moins incontournables mais sacrément intéressantes

### [Comment concevoir une API RESTful ?](https://www.youtube.com/watch?v=vyHpbR6jScI) par [Guillaume Chervet](https://cfp.devoxx.fr/2019/speaker/guillaume_chervet)

Guillaume a monté un cours pour apprendre REST aux étudiants. Il s’est rendu compte, qu’il y avait très peu de ressource complète sur le sujet. Dans sa présentation, il revient sur les basics différence REST/SOAP, conception, règle de nommage, pagination, sécurité, gestion des caches .... 

### [Back to Basics : Ne perdez plus votre Temps avec les Dates](https://www.youtube.com/watch?v=_ApiF_7MzM0) par [Frédéric Camblor](https://cfp.devoxx.fr/2019/speaker/frederic_camblor)

En tant que développeur, on est tous tombé un jour sur un bug lié aux dates. Frédéric a pris l'habitude de noter dans un petit carnet tous les bugs qu’il a rencontré liés aux dates. Dans ce talk , il en présente la compilation et il revient sur les concepts de base : timezone, offset … Il vous expliquera aussi comment on gère en informatique, les changements d’heure (été/hiver), les [secondes intercalaires](https://fr.wikipedia.org/wiki/Seconde_intercalaire) ...  

## Les BOF

Le format Bird Of a Feather c'est une conversation informelle en petit groupe autour d'un intérêt commun. Ils ne sont pas filmés mais on en fait un petit compte-rendu pour vous encourager à y participer si vous en avez l'occasion.

## Speaker Dojo

![Bof speakers](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/bofspeaker3-1024x768.jpg)

Quelques speakers confirmés, [Hubert Sablonnière](https://twitter.com/hsablonniere), [Aurélie Vache](https://twitter.com/aurelievache), [Jean-François Garreau](https://twitter.com/jefbinomed), [Philippe Antoine](https://twitter.com/philippeantoine) et [Sébastien Blanc](https://twitter.com/sebi2706), nous ont concocté une réflexion sur ce qui peut contribuer à rendre un talk bon ou mauvais. A partir d'une présentation où s'accumulaient les choses à ne pas faire (à mourir de rire), on a essayé de définir tous ensemble les points clé d'une bonne présentation. En fonction de l'expérience de speaker des uns et/ou d'attendee des autres.

### Duchess France

Au bof Duchess, nous avons eu droit à un coaching de Claudia Garcia pour se préparer à la prise de parole en public. Des conseils pratiques très intéressants que certaines ont pu mettre en oeuvre dès le lendemain ! Et surtout la joie de rencontrer des Duchess en vrai plutôt que sur le slack !

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/bofDuchess.jpg)

Claudia nous explique que Parler en public est pour la majorité des gens quelque chose qui fait peur (voir très très peur). Donc pas de panique, voici quelques unes de ses astuces et surtout, il faut s'entraîner.

La posture est importante. Il faut choisir une posture dans laquelle on est à l’aise et qui correspond à notre personnalité. Pour certains ça sera debout, pour d’autres assis derrière un bureau. Attention, il faut toujours avoir des bons appuis, donc pas de pieds joints quand on est debout et quand on est assis, on pense bien à mettre les pieds au sol (faites le test).

Il ne faut pas oublier qu’on fait une présentation pour des personnes. C'est important de se connecter avec eux : par le regard (essayer de regarder tout le monde), en posant des questions. Il faut aussi insuffler de l’énergie dans sa présentation. Là encore, il y a plusieurs style : dynamique en parlant beaucoup ou très calme et posé. Si vous vous amusez (have fun) pendant la présentation, l’auditoire le ressentira.

La respiration ventrale est aussi très importante. Entraînez vous à respirer (souvenez-vous de vos cours préparatoire à l’accouchement).  

Elle insiste sur le fait que nous sommes des êtres miroirs. Si la personne qui parle est mal à l’aise, l’auditoire le ressent et souffre avec elle. Il est donc important d’avoir un ressenti positif pendant la présentation. Pour cela, elle nous conseille la technique de l’ancrage. Se remémorer en détail et selon plusieurs sens (son, odorat..) une situation où l’on était bien. 

Pour terminer, c’est juste une présentation. Si vous échouez ou que vous n’êtes pas parfait, ce n’est pas la fin du monde. Entraînez-vous et recommencez.  

## Les Duchess à l'oeuvre

### [TensorFlow 1.x n'est plus, Vive TensorFlow 2.0](https://www.youtube.com/watch?v=8yHVPR4thCE&list=PLTbQvx84FrARfJQtnw7AXIw1bARCSjXEI&index=26) par [Alexia Audevart](https://twitter.com/aaudevart)

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/alexiaDevoxx2019-1024x768.jpg)

Alexia fait une présentation très complète de TensorFlow : son histoire, ce qui a guidé les développeurs dans les choix d'évolutions de l'outil et le gros morceau, les nouveautés de TensorFlow 2.0.

### [Dessiner en CSS, c'est facile](https://www.youtube.com/watch?v=P1zkbJbYzJ0&list=PLTbQvx84FrARfJQtnw7AXIw1bARCSjXEI&index=12) par [Cécile Hui Bon Hoa](https://twitter.com/cecilehbh)

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/cecileDevoxx2019-1024x768.jpg)

Wouaouh ! Cécile dessine sous nos yeux l'image animée d'une platine disque avec du CSS, il y a même l'oscillation du bras. Avec au fur et à mesure les explications des propriétés et fonctionnalités CSS utilisées.

### [Docker, Kubernetes & Istio : Tips, tricks & tools](https://www.youtube.com/watch?v=jkbHEMaYsB0&list=PLTbQvx84FrARfJQtnw7AXIw1bARCSjXEI&index=147) par [Aurélie Vache](https://twitter.com/aurelievache) et [Kevin Davin](https://twitter.com/davinkevin)

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/aurelieDevoxx2019.jpg)

Des conseils pour construire vos images, les bonnes pratiques, des propositions d'outils, des aides au débogage, il y a de tout dans ce talk. Et [ces slides](https://t.co/mZXxD0tvFt), magnifique !

### [Micro Frontend : le casse tête des micro services étendu au FrontEnd !](https://www.youtube.com/watch?v=f6_99ExOvWs&list=PLTbQvx84FrARfJQtnw7AXIw1bARCSjXEI&index=149) par [Audrey Neveu](https://twitter.com/@Audrey_Neveu)

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/audreyDevoxx2019-1024x768.jpg)

Retour d'expérience d'Audrey sur le passage d'un front en micro services de l'intention de départ à la solution conservée en passant par toutes les expérimentations et les avantages/inconvénients de chacune.

### [Clean code : Le nommage](https://www.youtube.com/watch?v=lyDZEqZNM1c) par [Avomo Michelle](https://cfp.devoxx.fr/2019/speaker/avomo_michelle)

Michelle refactore en live du code tout en donnant des conseils sur le nommage pour rendre le code plus lisible.

## Le petit coup de gueule

Ce n'est pas spécifique à Devoxx France, dans tous les évènements du genre, il y a toujours des gens qui partent avant la fin d'un talk. Pour ne pas rater le suivant ou pour se ruer sur la nourriture (on en reparle), quel ingratitude pour les speakers ! Le minimum de respect c'est d'attendre et de remercier en applaudissant, même si on a moyennement aimé le talk. Ça paraît évident de saluer l'effort de la personne qui a fait tout ce travail de préparation et qui s'expose à notre jugement en se mettant ainsi sur le devant de la scène, non ?

Concernant la nourriture, pareil, ça n'est pas spécifique à cet événement-ci, il y a systématiquement des gens qui prennent plus que leur part. Parce que, la bienveillance, c'est aussi laisser à manger à tout le monde !

## Ce qu'on retient des keynotes

Le sujet des keynotes était le bien-être au travail.

Avec notamment :

- [La bienveillance en entreprise](https://www.youtube.com/watch?v=p0X_m7_ExRY), [Olivier Lajous](https://cfp.devoxx.fr/2019/speaker/olivier_lajous) nous raconte la [parabole des porcs-épics](https://www.schopenhauer.fr/fragments/porcs-epics.html) de Shopenhauer,
- [L'accessibilité](https://www.youtube.com/watch?v=fhu7ZBfRw4A) par [Valerie Haccart](https://cfp.devoxx.fr/2019/speaker/valerie_haccart) (Çà troll sur la réalisation du site Devoxx France :) ) ,
- Le [burn-out](https://www.youtube.com/watch?v=TiRoge93H0o) par [Jérôme Petazzoni](https://cfp.devoxx.fr/2019/speaker/jerome_petazzoni)

Et on a eu le plaisir de retrouver Katia Aresti, encore une duchess, parmi les maîtres et maîtresses de cérémonie :

![](/assets/2019/08/2019-08-05-retour-sur-devoxx-france-2019/katiaDevoxx2019.jpg)

## Ressources et livres

- The manager path : A Guide for Tech Leaders Navigating Growth and Change Paperback, Camille Fournier
- Domain driven design, Eric J. Evans
- Bullshit jobs, David Graeber
- [60 principes pratiques fondamentaux, illustrés et applicables quotidiennement de la petite à la grande entreprise du développeur au CTO en passant par le tech-lead et l'architecte](https://getnobullshit.com/)
- [Clean Code : Nommage](https://www.soat.fr/publications/clean-code-nommage) par Michelle Avomo et Dorian Bussi
- et bien sur la [chaîne youtube de Devoxx](https://www.youtube.com/channel/UCsVPQfo5RZErDL41LoWvk0A/feed).
