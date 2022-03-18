---
layout: "post"
author: 
  - "acrepet"
title: "Parlons Groovy avec Guillaume Laforge"
date: "2012-05-10"
categories: 
  - "les-conferences"
tags: 
  - "groovy"
  - "lyon-jug"
---

| ![Guillaume Laforge](https://secure.gravatar.com/avatar/137d3908243acfc30e126615d59d4e6d?s=120&d=mm&r=pg)[Guillaume Laforge](https://twitter.com/glaforge) est invité par le Lyon JUG le 15 mai prochain pour une soirée dédiée au langage dynamique [Groovy](http://groovy.codehaus.org/ "http://groovy.codehaus.org/"). Agnès Crépet et ses camarades du Lyon JUG sont allés à sa rencontre pour lui poser quelques questions en amont de cette soiréé. |

[Guillaume Laforge](https://twitter.com/glaforge) est à la tête de l’équipe de développement [Groovy](http://groovy.codehaus.org/ "http://groovy.codehaus.org/") chez **SpringSource, une division de VMware**. Guillaume est à la fois **Project Manager officiel de Groovy** et **Spec Lead de la  JSR-241** qui standardise le langage Groovy. Il a initié la création du framework  [Grails](http://grails.org/ "http://grails.org/") et a fondé le projet [Gaelyk](http://gaelyk.appspot.com/ "http://gaelyk.appspot.com/"), un framework léger pour développer des applications en Groovy pour **Google App Engine**. Il est aussi régulièrement speaker sur des sujets comme Groovy, Grails, Gaelyk, les Domain-Specific Languages à des conférences comme JavaOne, GR8Conf, SpringOne2GX, QCon ou encore Devoxx. Il est également le co-auteur de [Groovy in Action](http://www.manning.com/koenig/ "http://www.manning.com/koenig/") avec Dierk König et Paul King, deux committers célèbres sur Groovy. Guillaume est aussi un membre fondateur du podcast français [LesCastCodeurs](http://lescastcodeurs.com/ "http://lescastcodeurs.com/").

**Agnès : Peux-tu te présenter? Quelles sont tes activités chez SpringSource ?**

**Guillaume :** Je m'appelle Guillaume Laforge. Chez SpringSource, je dirige et développe le projet Groovy, qui est un langage Accessoirement, je fais parti des Cast Codeurs ! Et je suis le fier détenteur d'un superbe mug des duchesses que j'ai eu l'honneur de recevoir lors de l'enregistrement live des Cast Codeurs à Devoxx :-)

**Agnès : Peux-tu nous raconter si ce n’est pas trop indiscret ton histoire d’amour avec Groovy ?**

**Guillaume :** En 2003, je travaillais chez un petit éditeur logiciel qui faisait une sorte de générateur d'applications à partir d'un méta-modèle de données.

On pouvait définir des widgets graphiques pour différents types de données, et je cherchais une solution pour pouvoir définir et scripter ce genre de widgets pour personnaliser les applications pour les clients.

A l'époque, il n'y avait pas grand choix pour ce genre de besoins, et le project Groovy venait juste de se lancer.

Du coup, j'ai commencé à y jeter un coup d'œil, mais à l'époque, c'était très buggué. Du coup, j'ai commencé à contribuer à des patches pour corriger les problèmes que je rencontrais, et au bout d'un moment, le chef de projet d'alors en a eu marre d'appliquer les patches et m'a donné les droits de commit. Puis plus tard, il a quitté le projet, et j'ai repris les rennes du projet.

Et depuis, je travaille sur Groovy.

**Cédric : As tu une idée des chiffres de l’adoption de Groovy ? Est ce en constante progression ?**

**Guillaume :** C'est toujours difficile d'avoir un nombre d'utilisateurs d'un projet Open Source.

Les chiffres que je regarde de temps en temps sont le nombre de téléchargements de la distribution, et aussi le nombre de téléchargements à partir de Maven Central. Pour la distribution par exemple, à l'époque de la sortie de la 1.7, on avait eu pas loin de 400 000 téléchargements ou plus récemment sur les statistiques de Maven Central, on était aux alentours de 100 000 téléchargements par mois. Donc en combinant distributions et artifacts Maven, j'imagine qu'il y a sans doute un demi-million d'utilisateurs, ou quelque chose comme ça. Difficile à dire.

En tout cas, oui, les chiffres ont tendance à progresser. Les statistiques sur Maven Central montrent un bon doublement sur un an des téléchargements par exemple.

**Agnès : Puisque nous sommes entre nous, peux-tu nous dévoiler tes histoires d’adultères langagières ? Quels sont notamment les autres langages dynamiques que tu as manipulé ? Et où en es-tu avec notre ami Java (amour platonique? histoire ancienne? le support des langages dynamiques est-il pour toi un sursis ou un sursaut?)**

**Guillaume :** Je dois dire que malgré ma relation passionnelle avec Groovy, je reviens toujours voir maman Java :-)

J'aime beaucoup ce langage. J'ai fait mes premières armes avec, et quoi qu'on en dise, c'est un langage que je trouve agréable à utiliser.

J'ai eu l'occasion de jouer avec d'autres langages, comme Python, Ruby ou PHP, et j'ai regardé un peu ce qui se faisait ailleurs comme chez Scala et les nouveaux langages comme Kotlin et Ceylon.

**Agnès : Tu vas nous parler des nouveautés de Groovy 2.0 lors de ta session au Lyon JUG? Quel est ton top 3 des nouvelles features ? Peux-tu notamment, même si ce n’est pas dans ton top 3, nous parler du static type checking ?**

**Guillaume :** Il y a en fait 4 grands thèmes dans Groovy 2.0, que j'aurai le plaisir d'aborder lors de la session au Lyon JUG :

Le support de JDK 7 avec Project Coin et Invoke Dynamic, la modularisation de Groovy, le static type checking et la compilation statique.

L'idée du static type checking, c'est surtout en réaction de l'utilisation qui est faite de Groovy. Souvent les développeurs Java utilisent Groovy comme un Java scripté (compilable / exécutable à la volée), voire un meilleur Java (pour rendre le code plus concis et lisible), et s'attendent à ce que le compilateur Groovy donne le même genre d'erreur que le compilateur Java. Mais ce qui est une erreur pour le compilateur Java, n'en est pas forcément une en Groovy, en ce sens qu’au runtime, certaines variables ou méthodes peuvent très bien être disponibles du fait que Groovy est un langage dynamique. Du coup, groovy ne râle pas forcément quand il y a une typo dans un nom de variable ou le nom d'une méthode. Mais quand on utilise Groovy "comme du Java" dans son application, on aimerait que le compilateur se plaigne lorsque l'on fait ce genre de bêtise... et c'est maintenant le cas avec le static type checking.

Cela va également plus loin que cela, car avec le static type checking, le compilateur va râler pour des erreurs de type de retour d'une méthode, pour des assignements de types pas compatibles, etc, grâce à de l'inférence de type.

Tout le monde n'a pas besoin des fonctionnalités dynamiques de Groovy, et le static type checking répond à ce besoin.

Mais pour aller plus loin, on s'est dit qu'également les utilisateurs seraient intéressés par avoir aussi le même niveau de performance que Java. Et donc, on a travaillé aussi sur la compilation statique, pour que le bytecode généré par Groovy soi grosso modo le même que celui de javac, afin d'avoir le même niveau de performances que Java lui même.

**Agnès : Tu es à l’origine du Gaelyk project, peux-tu nous présenter ce projet ?**

**Guillaume :** Oui, c'est moi qui ai lancé le projet Gaelyk !

C'est un petit framework tout léger pour développer des applications Groovy pour Google App Engine, en simplifiant l'utilisation du SDK de Google.

Au départ, ça a commencé simplement par une sorte de proof of concept : Google nous avait contactés un peu avant la sortie de Google App Engine Java pour montrer que d'autres langages alternatifs tournaient également sur la plateforme. Nous avons travaillé ensemble pour que cela fonctionne bien, et j'ai été invité à présenter ça à la conférence Google I/O. Pour ma démo, j'ai fait une intégration de Groovy et d'App Engine, et les gens m'ont demandé si c'était disponible et open source... Ce n'était que pour une démo... et puis finalement c'est devenu un vrai projet, avec maintenant une communauté, des contributeurs, etc.

Gaelyk est assez simple à utiliser : on écrit des scripts Groovy qui jouent le rôle de contrôleurs, et des pages qui ressemblent un peu à du JSP mais en Groovy, pour les vues. Dans l'un comme l'autre, on a à disposition des variables pour accéder aux services du SDK, et tout un tas de méthodes décoratrices pour simplifier l'usage du SDK.

**Alexis : Grails a longtemps été considéré comme le RoR de Java. Ce statut lui est contesté par Play, qui semble l'avoir dépassé en popularité. Où en est Grails ? Est-ce que le développement Web reste un domaine de prédilection de Groovy ? Quels sont ses autres domaines ?**

C'est intéressant cette impression que Play ait dépassé Grails en popularité. Il y a une différence entre "hype" et utilisation réelle. Et il faut aussi penser à l'aspect "cocorico" qui fait qu'on n'est beaucoup plus exposé en France au marketing de Play qu'à celui de Grails. De ma petite fenêtre plus globale mais certainement biaisée, je n'ai pas encore l'impression que Play ait dépassé Grails en quoi que ce soit, en fait :-)

Cela étant dit, Grails a sorti sa version 2.0 il n'y a pas très longtemps (y compris quelques petits correctifs depuis).

Il y a eu pas mal de nouveautés, comme des améliorations du mode interactif et de la console, un agent pour le reloading des changements à chaud, de nouveaux rapports de tests plus sympas, de même qu'une version html-5-ifiée du scaffolding, des pages d'erreurs plus pratiques à lire, le support asynchrone, l'intégration de la gestion des resources statiques, des améliorations de performances, des améliorations aussi sur l'accès aux datastores (pas seulement relationnels mais aussi tout ce qui est NoSQL), et j'en passe.

Ce qui est intéressant aussi par rapport à Play, c’est que cette version majeure est toujours compatible avec les anciennes versions, et du coup, les gens peuvent très facilement migrer vers cette nouvelle version.

Grails 2.0 est vraiment très mature et performant.

Sinon concernant l'utilisation de Groovy, effectivement il y a une très grande utilisation de Groovy au niveau Web avec Grails, mais aussi pour le build avec Gradle, pour les applications swing avec Griffon, pour le test avec Spock, etc. Groovy est utilisé dans pas mal de scénarios et cas d'utilisation, et en particulier aussi en dehors de tous ces frameworks pour faire des Domain-Specific Languages, de la configuration / customisation d'application, etc.

**Agnès : Utilises-tu d’autres langages tournant sur la VM comme Scala ou Clojure ? T’intéresses-tu aux petits nouveaux Ceylon ou Kotlin et que peuvent-ils, selon toi, apporter à la plateforme ?**

**Alexis : Est-ce qu'ils peuvent “nuire” à Groovy ? Est-ce que tu as envie de voir certaines de leurs fonctionnalités dans Groovy ?**

**Guillaume :** Je joue ponctuellement avec d'autres langages, anciens comme nouveaux, mais essentiellement sur la JVM. J'aime bien regarder ce que les autres font de temps en temps, pour voir s'il y a de bonnes idées qui pourraient être adaptées à Groovy.

Dans les nouveaux venus, j'ai une petite préférence pour Kotlin, qui semble plus proche de mes aspirations (sans parler du fait que certaines features sont tout droit sorties d'idées déjà présentes dans Groovy). J'apprécie Ceylon aussi, mais je le trouve un peu trop verbeux, et trop explicite, alors que j'aimerais qu'un langage fasse plus confiance aux développeurs qui les utilisent. J'aime bien l'élégance de Clojure, même si je n'arrive pas à me faire aux parenthèses et à l'ordre des arguments et méthode. J'ai plus de mal avec Scala, car je trouve que le langage est assez dur à lire et à écrire, même si j'aime bien certaines choses, comme par exemple le pattern matching que j'aimerais bien avoir dans Groovy un jour.

**Julien : Si tu pouvais changer une chose dans la JVM, ce serait quoi ?**

**Guillaume :** En fait, c'est une chose qui va justement évoluer et bientôt être une réalité : supprimer la PermGen.

Il y a beaucoup d'entreprises qui utilisent Groovy comme langage business, comme DSL, intégré à leur application.

Ils évaluent et exécutent des tonnes de script Groovy représentant des règles métier, de filtrage, ou autre, et lorsqu'ils réévaluent sans cesse du code Groovy, cela crée de nouvelles classes qui consomment de la PermGen.

Donc plus de PermGen dans JDK 8, ce sera un plus intéressant pour Groovy.

**Agnès : Tu es également membre fondateur (et grand humoriste!) du podcast les Cast Codeurs. Quel est selon toi l’intérêt de ce genre de diffusions médiatiques ? Qu’est-ce que cela t’apporte (statut de VIP parisien? bière à volonté? déversoir à blagues ? ;-)... ) et que penses-tu apporter à vos auditeurs ?**

Bien que je n'en écoute pas beaucoup, je trouve que les podcasts sont une source assez originale d'information, pour savoir ce qui se passe dans notre domaine, savoir ce qui est à la mode, connaître les petits potins, etc. Surtout, ce qui est pas mal, c'est que ça peut s'écouter n'importe où, et en particulier... dans les transports en commun : c'est important de pouvoir profiter de ce temps inutile que sont les transports en commun pour apprendre quelque chose de nouveau ou passer simplement un bon moment.

Sinon, personnellement, ce que ça m'apporte, c'est surtout l'aspect "sociabilisant". Comme je fais du télétravail, à part les conférences et la famille, je ne vois pas grand monde la journée, et du coup, ça m'aide à garder le contact, même virtuel, avec mes amis des Cast Codeurs. Faire des blagues tout seul devant son écran, ce n’est pas très marrant, alors c'est vrai que le podcast est aussi ma manière de m'exprimer et de me lâcher un peu ;-)

Au final, j'espère qu'on apporte à nos auditeurs un peu de news qu'ils n'ont pas forcément le temps de lire, et un bon moment en compagnie de cette petite troupe sympathique. Après... si en plus l'auditeur se marre grâce à mes jeux de mot, tant mieux :-)

**Merci Guillaume!** Rendez-vous donc au Lyon JUG le 15 mai prochain!
