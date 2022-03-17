---
layout: "post"
author: 
  - "acrepet"
title: "Java EE 7 et pourquoi pas du JavaScript sur le serveur!"
date: "2014-03-13"
categories: 
  - "les-conferences"
---

| Le 18 mars prochain, [David Delabassee](http://delabassee.com/blog) d'[Oracle](http://www.oracle.com/) est invité par le [Lyon JUG](http://www.lyonjug.org/evenements/javaee-7) pour une session sur Java EE 7. La team du Lyon JUG lui a posé quelques questions, beaucoup autour de Java EE bien sûr, notamment sur le projet [Avatar](https://avatar.java.net/) pour du JavaScript côté serveur... avec la JVM! La suite la semaine prochaine à Lyon où David nous parlera plus en détail de Java EE 7 mais également d'Avatar! |

![](/assets/2014/03/2014-03-13-java-ee-7-et-pourquoi-pas-du-javascript-sur-le-serveur/delabassee.png)

_Cet interview a été préparé conjointement par : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote), [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat) et [Emmanuel Hugonnet](https://twitter.com/ehsavoie)_

![](/assets/2014/03/2014-03-13-java-ee-7-et-pourquoi-pas-du-javascript-sur-le-serveur/trans.gif "More...")

**JUG Team : Peux-tu te présenter, ainsi que tes missions chez Oracle ? ?**

**David**: Je travaille sur la plateforme Java depuis quasiment le début (bientôt 20 ans!). Avant Oracle, j’ai passé une dizaine d’années chez Sun où j’ai travaillé sur Java, de l’embarqué (Personal Java et J2ME à l’époque) mais aussi Java côté serveur et ce, dans des domaines très variés, passant entre autre de la TV Interactive au monde bancaire.

Ces derniers temps, je me focalise uniquement sur Java sur le serveur, Java EE mais aussi des projets tels qu’Avatar.

J’habite en Belgique à la frontière, à quelques KMs de Lille. Je suis un « Franco-Belge », c’est à dire qu’en France, je parle mal le français avec plein anglicismes et en Belgique, je parle mal le flamand avec tout autant anglicismes mais aussi des termes francophones!

**JUG Team : Tu vas nous parler des différentes API de JavaEE7 ? Quel est pour toi le "killer feature" de JEE7 ?**

**David**: A mon sens, il n’y en pas un seul « Killer Feature ». Si je dois faire un Top 3, je mentionnerais l’API WebSocket (JSR 356), les différents améliorations transversales apportées par CDI (ex. l’annotation @transactional), et enfin les simplifications de l’API JMS 2. Mais c’est très restrictif, il y a beaucoup plus que ça dans Java EE 7!

PS: à propos, c'est Java EE et pas JEE. C’est comme McDo (et pas MDo ;-) )

**JUG Team : Où en est-on de son adoption ?**

**David**: A ce jour, il y a 3 Application Servers certifiés conforme avec la spec. Java EE 7 et ce n’est que le début. La prochaine étape importante sera la disponibilité des Applications Servers commerciales (open source ou pas) supportant Java EE 7.

De manière générale, il y a vraiment un engouement pour Java EE 7. Un simple fait, c’est la première fois que nous avons autant de livres publiés sur Java EE 7, plus de 20 à peine quelques mois après la finalisation de la spécification!

**JUG Team : Pourquoi la JSR 107 (JCache) n’en fait-elle finalement pas partie?**

**David**: Simplement parce que cette spécification n'était pas prête.

Un peu avant la finalisation de la spécification Java EE 7, il est apparu évident que JCache ne serait pas finalisé à temps. Il y avait alors 2 possibilités : retarder tout le train Java EE et attendre que JCache soit finalisé. Ou laisser partir le train comme initialement prévu et JCache prendrait alors le prochain train. C’est cette dernière option qui a été retenue, Java EE 7 a été lancé mi juin 2013. Avec le recul, ce fut le bon choix car, JCache, est à ce jour (le 11 mars 2014) en phase de "final ballot". La spécification est donc quasiment finalisée… mais pas encore tout a fait. Et nous sommes près de 9 mois plus tard, Java EE 7 n’aurait donc été disponible qu’en mars-avril 2014 !

**JUG Team : Quel IDE utilises-tu et conseilles-tu ?**

**David**: Pour des raisons évidentes, je navigue entre NetBeans, Eclipse et JDeveloper. C’est un peu comme les claviers, je suis souvent en Azerty mais je dois parfois utiliser des claviers Qwerty. Passer de l’un à l’autre requiert toujours un effort, et certains claviers sont moins évidents. Je dirais que NetBeans est un Azerty, les autres des Qwerty.

Je ne m’aventure pas à conseiller un IDE, c’est trop risqué! C’est vraiment un choix personnel souvent lié à des habitudes.

**JUG Team : Peux-tu nous parler un peu plus d’[Avatar](https://avatar.java.net/), quelles volontés derrière ce projet? On comprend qu’on veut simplifier la vie du développeur Java pour l’écriture de code en JavaScript. Est-ce que JavaScript est l’avenir de Java EE ?**

**David**: Pas vraiment, Java EE ne peut ignorer JavaScript mais de là à dire que JS est l’avenir de Java EE, il y a de la marge!

L’idée d’Avatar est d’offrir une alternative, une solution qui repose sur un modèle différent, celui de Node.js. Node.js repose sur un modèle évènementiel non bloquant. Avatar aussi, la différence fondamentale est que Node.js utilise le moteur V8 de Chrome, Avatar utilise la JVM. La JVM nous offre certains avantages. Par exemple, il n’y a pas de mutli-threading dans Node.js, il n’y a qu’une seule et même boucle d’événements (l’event loop en bon français). La montée en charge impose de lancer plusieurs processus Node.js. C’est plus simple avec Avatar, nous pouvons avoir plusieurs event-loops dans une même JVM et donc tirer un meilleur parti des cœurs présents dans la machine. Je parlerai de ça plus en détail au JUG.

**JUG Team : Le projet Avatar fait penser à Vert.x et à du JEE7 polyglotte. Le futur est il dans des piles polyglottes ?**

**David**: A mon avis, le futur passe notamment mais pas uniquement par l’utilisation d’autres langages que Java. En effet, depuis pas mal de temps, la plateforme Java s’est ouverte en ce sens : l’introduction du JSR 233 dans Java SE 6, l’ajout du nouveau ByetCode Invokedynamic dans Java SE 7. Nashorn, le nouveau moteur JavaScript de Java SE 8 ne fait que continuer (et confirmer) cette tendance.

**JUG Team : On lit dans la doc d’Avatar sur l’écriture des vues : “All you really need to know to use Avatar view models is how to copy and modify example code.” Crois-tu vraiment à cela? On pourrait vraiment écrire des vues en faisant simplement du copier-coller?**

**David**: Oui , c’est possible mais je crois que l’intérêt d’Avatar réside principalement du côté serveur. Avatar dispose d’une couche client pour les utilisateurs n’ayant pas fait de choix tranché sur ce point. Mais on constate souvent que les utilisateurs ont déjà choisi leur framework client, dans ce cas Avatar s’intègre avec celui-ci.

**JUG Team : Vous interviewez la communauté pour définir le contenu de Java EE, qu’en est-il des retours du dernier sondage réalisé en février sur Java EE 8 ?

Qu’est-ce qu’on peut attendre de Java EE 8? Du cloud ? + de CDI ?**

**David**: Il est encore trop tôt pour parler du contenu de Java EE 8.

Nous avons effectué 2 sondages pour demander à la communauté quels sont les manques, quelles devraient être les améliorations à apporter à Java EE.

Actuellement, nous sommes sur la troisième (et dernière) partie du sondage où nous demandons à la communauté de donner un avis sur les priorités des différents éléments ressortant des 2 premières parties du sondage. Il est en effet impossible de tout faire en une seule release. Ce dernier sondage sera clôturé le 24 mars, tout le monde est encouragé à y participer car tous les avis comptent (cf. [http://glassfish.org/survey](http://glassfish.org/survey)).

Maintenant pour Java EE 8 tout est encore à discuter au sein du groupe d’experts Java EE mais sans rien dévoiler, il est clair que CDI va, dans Java EE, jouer un rôle de plus en plus important. Il y a aussi quelques JSRs qui sont évidents pour Java EE 8, JSON-B en est un, JCache en est un autre. Il est aussi assez logique que Java EE 8 adresse certains points concernant le Cloud. Mais encore une fois, ce sera à l’Expert Group de Java EE 8 de décider de cela, les sondages donnent des pistes importantes pour démarrer leurs discussions.

En conclusion, donnez votre avis via [http://glassfish.org/survey](http://glassfish.org/survey) !

**Merci David!**   **Merci à Anne-Laure Rigaudon pour sa relecture!**  

**Les inscriptions pour la session de David sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/javaee-7)!**
