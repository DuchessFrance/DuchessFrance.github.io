---
layout: "post"
author: 
  - "acrepet"
title: "Un petit tour dans Atmosphere, Comet et les WebSockets"
date: "2012-06-14"
categories: 
  - "les-conferences"
tags: 
  - "atmosphere"
  - "comet"
  - "lyon-jug"
  - "websockets"
---

| ![Jeanfrançois Arcand](/assets/2012/06/2012-06-14-un-petit-tour-dans-atmosphere-comet-et-les-websockets/jug-jfarcand.png)[Jeanfrançois Arcand](http://twitter.com/jfarcand "Twitter jfarcand") est invité par le Lyon JUG le 19 juin prochain pour une soirée dédiée à la création d'applications Web temps réel en utilisant le projet [**Atmosphere**](https://github.com/Atmosphere/atmosphere) sur lequel travaille [Jeanfrançois](http://twitter.com/jfarcand "Twitter jfarcand"). Une soirée où on parlera donc des techniques **Comet** et du protocole **WebSocket.** Comme à son habitude, [Agnès Crépet](http://twitter.com/agnes_crepet) et ses camarades du [Lyon JUG](http://www.lyonjug.org), [Alexis Hassler](http://twitter.com/AlexisHassler) et [Cédric Exbrayat](http://twitter.com/cedric_exbrayat), sont allés à sa rencontre pour lui poser quelques questions en amont de cette soirée. |

**Agnès : Peux-tu te présenter? Quel est ton parcours professionnel et ta mission actuelle chez [Wordnik](http://www.wordnik.com/)?**

**Jeanfrançois:** Je m'appelle Jeanfrancois Arcand, Québécois de souche. Je travaille dans le domaine depuis 1993. J'ai commencé ma carrière comme mathématicien, travaillant en intelligence Artificielle pour le groupe Roger Communications. En 1997, j'ai immigré en Bretagne, sur Lannion, pour travailler pendant 2 ans pour France Telecom. Je suis ensuite retourné au Québec et reparti pour habiter en Californie et travailler pour Sun Microsystem. J'ai passé 10 ans chez Sun Microsystem, travaillant sur [Tomcat](http://tomcat.apache.org/), [Grizzly](http://grizzly.java.net/) et [GlassFish](http://glassfish.java.net/fr/). Ensuite un court passage chez [Ning](http://www.ning.com) et [Sonatype](http://www.sonatype.com/ ) et, depuis septembre 2011 chez Wordnik. Chez Wordnik je travaille 50% sur le projet [Atmosphere](https://github.com/Atmosphere/atmosphere) et le reste sur l'architecture "temps réel" de [Wordnik](http://www.wordnik.com/). Par exemple, le site du [Wall Street Journal](http://WSJ.com) utilise la technologie de [Wordnik](http://www.wordnik.com/) (basé sur [Atmosphere](https://github.com/Atmosphere/atmosphere)) et sert 40 millions de requêtes par jour.

 

**Agnès : Tu as travaillé sur [Grizzly](http://grizzly.java.net/), embarqué dans [Glassfish](http://glassfish.java.net/fr/), et qui est un des premiers frameworks NIO. Une extension de NIO, NIO2 (Asynchronous I/O), est proposée dans la version de Java SE 7. Quel intérêt représente pour toi cette évolution, notamment par rapport à son utilisation avec [Grizzly](http://grizzly.java.net/)?**

**Jeanfrançois:** NIO.1 était très mal foutue d'où le grand nombre de framework qui ont tous essayé de rendre NIO plus facile à utiliser. NIO.2 est vraiment là pour réparer cette erreur. Jadis chez Sun NIO.2 m’intéressait, mais maintenant j'aime utiliser un framework plus haut niveau (comme Netty), ce qui me permet de me concentrer sur l'utilisateur et moins le "bas niveau".

 

**Agnès & Cédric :** **Tu vas nous parler lors de ta prochaine session au LyonJUG de Comet et de WebSocket. Y a t-il toujours un intérêt à faire du Comet alors que les Websockets existent?**

**Jeanfrançois:** Encore plus! Actuellement, environs 40% des fureteurs\* utilisent WebSockets (basé sur mes observation sur le site du [Wall Street Journal](http://WSJ.com) ). C'est donc important de continuer à développer les techniques long-polling, Server Side Events et streaming (Comet) afin de pouvoir supporter des fureteurs\* tels qu'Internet Explorer 6/7/8/9, qui sont malheureusement très utilisés :-). Le support WebSockets est également inexistant sur plusieurs serveurs et donc la technique Comet est encore très primée et d'actualité.

 

**Agnès & Cédric : Quand on se lance dans l’aventure du développement d’application Websocket en Java, on peut vite rencontrer des difficultés. Il n’y a pas de standardisation (pas d’API standard) à l’heure actuelle, il faut donc choisir une solution et les implémentations vont être bien différentes en fonction de l’outil choisi (Play! qui utilise les ws natives de netty, [Vert.X](https://github.com/purplefox/vert.x) qui se base sur [sockjs](https://github.com/sockjs/sockjs-client) par exemple). Lors de ta session au LyonJUG, tu vas nous parler du projet [Atmosphere](https://github.com/Atmosphere/atmosphere). Peux-tu nous présenter ce framework et son intérêt vis-à-vis de l’écriture de la partie serveur d’application WebSockets / Comet?**

**Jeanfrançois:** [Atmosphere](https://github.com/Atmosphere/atmosphere) permet l'écriture d'applications asynchrones et "cache" les différentes API WebSockets et Comet à son utilisateur. [Atmosphere](https://github.com/Atmosphere/atmosphere) offre une solution portable et unifié, et ce, coté client (Javascript) et coté server (java). Donc, une application peut dès maintenant être redigée et utilisée partout. Si le client ou serveur supporte les WebSockets, ils seront utilisés. [Atmosphere](https://github.com/Atmosphere/atmosphere) supporte aussi une autre spécification HTML5: les "Server Side Events", qui peuvent également être utilisés comme transport lorsque les WebSockets ne sont pas disponibles. La beauté d'[Atmosphere](https://github.com/Atmosphere/atmosphere) est donc de présenter des "API" unifiées et assure, par le fait même, la portabilité des applications. [Atmosphere](https://github.com/Atmosphere/atmosphere) est également "embarqué" par la majorité des "frameworks" actuel comme RichFaces, Vlaadin, Wicket, GWT, etc. [Atmosphere](https://github.com/Atmosphere/atmosphere) supporte aussi les protocoles Socket.IO, Bayeux/Cometd ainsi que SwaggerSocket.

 

**Agnès : [Atmosphere](https://github.com/Atmosphere/atmosphere) se positionne t-il principalement côté serveur? De quelles solutions disposons nous côté client pour développer des applications WebSockets sans être adhérent à une solution spécifique (Grizzly, Netty, …)?**

**Jeanfrançois:** Non, [Atmosphere](https://github.com/Atmosphere/atmosphere) se positionne fortement coté client. Wicket, GWT, RichFaces, Primefaces, Socket.IO (coté client), JQuery-Socket ainsi que [atmosphere.js](https://github.com/Atmosphere/atmosphere/wiki/jQuery.atmosphere.js-API) sont tous des clients qui fonctionnent avec [Atmosphere](https://github.com/Atmosphere/atmosphere).La librairie [atmosphere.js](https://github.com/Atmosphere/atmosphere/wiki/jQuery.atmosphere.js-API) permet une utilisation transparente des WebSockets et est en mesure de négocier, avec le coté serveur, le meilleur transport à utiliser. Par exemple, une application qui tourne sur Tomcat 7 (qui supporte les WebSockets) et qui utilise [atmosphere.js](https://github.com/Atmosphere/atmosphere/wiki/jQuery.atmosphere.js-API) fonctionnera sur tout les fureteurs\* populaires. Les WebSockets seront utilisés par Chrome et Firefox, mais long-polling sera utilisé par Internet Explorer...de façon transparente. Donc le coté client du framework [Atmosphere](https://github.com/Atmosphere/atmosphere) est très important.

 

**Alexis: Comment se positionne [Atmosphere](https://github.com/Atmosphere/atmosphere) par rapport à des technos comme Netty, Grizzly ou le mode async de Servlet 3, d’un coté, comme [Vert.X](https://github.com/purplefox/vert.x) d’un autre coté ou comme le mode asynchrone de JAX-RS 2 ? (concurrent, complémentaire, rien à voir,...?)**

**Jeanfrançois:** [Atmosphere](https://github.com/Atmosphere/atmosphere) fonctionne avec Netty (le projet NettoSphere) et pourrait également fonctionner avec Grizzly. Le mode Async permis par Servlet 3.0 est aussi supporté, lorsque disponible, par [Atmosphere](https://github.com/Atmosphere/atmosphere). [Atmosphere](https://github.com/Atmosphere/atmosphere) "auto-détecte" le meilleur moyen de fournir de l'asynchrone basé sur le serveur utilisé. [Atmosphere](https://github.com/Atmosphere/atmosphere) est un concurrent de [Vert.X](https://github.com/purplefox/vert.x) car il permet de faire la même chose (et en mieux, et portable).

JAX RS 2 est une standardisation du module "Atmosphere Jersey" (très primé) et ne fonctionnera que sur les serveurs Java EE 7. La spécification s’inspire d'[Atmosphere](https://github.com/Atmosphere/atmosphere), ce qui est positif pour [Atmosphere](https://github.com/Atmosphere/atmosphere)! Par contre, [Atmosphere](https://github.com/Atmosphere/atmosphere) fonctionne partout et support EE 4/5/6 de façon transparente.

 

**Alexis: Atmosphere s’intègre avec des clients non-HTTP (JMS, JGroups,...). Quels types d’architectures utilisent cette intégration.**

**Jeanfrançois:** JMS, JGroups, Redis ainsi que Hazelcast permettent la mise en production "nuage" d'une application [Atmosphere](https://github.com/Atmosphere/atmosphere). Ces types d'architectures permettent la communication entre les serveurs utilisés par [Atmosphere](https://github.com/Atmosphere/atmosphere), et ce, d'une façon transparente. Il est donc possible de faire fonctionner [Atmosphere](https://github.com/Atmosphere/atmosphere) dans un nuage (cluster) et d'utiliser, de manière transparente, une technologie "nuage" de son choix.

 

**Merci Jeanfrançois**! [Rendez-vous donc au Lyon JUG le 19 juin prochain](http://www.lyonjug.org/evenements/websocket)! Vous pouvez- également aller consulter [le blog de Jeanfrancois](http://jfarcand.wordpress.com/).

Merci à Anne-Laure Rigaudon, l'autre Duchess lyonnaise, pour sa relecture toujours précieuse!

_\* fureteur = navigateur_
