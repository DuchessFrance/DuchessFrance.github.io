---
layout: "post"
author: 
  - "acrepet"
title: "Les nouveautés de Spring 4.1 et Spring Boot"
date: "2014-09-10"
categories: 
  - "coup-de-coeur"
tags: 
  - "spring"
  - "spring-boot"
---

| [![Brian Clozel](http://www.lyonjug.org/_/rsrc/1409741856242/speakers/brian_clozel.jpeg?height=140&width=140)](http://www.twitter.com/brianclozel)[![Sébastien Deleuze](http://www.lyonjug.org/_/rsrc/1409741916839/speakers/seb_deleuze.jpg?height=140&width=140)](https://twitter.com/sdeleuze) |

**Deux développeurs sur le projet [Spring Framework](http://projects.spring.io/spring-framework/), [Brian Clozel](http://www.twitter.com/brianclozel) et [Sébastien Deleuze](https://twitter.com/sdeleuze), nous font le plaisir de répondre à quelques questions sur les nouveautés de Spring 4.1 et Spring Boot, leur vie de dev chez Pivotal, etc. Pour les lyonnais vous aurez la chance de pouvoir assister à [leur session](http://www.lyonjug.org/evenements/spring-41-et-spring-boot) le 23/09 au Lyon JUG!**

 

_Cet interview a été préparé conjointement par la team élargie du Lyon JUG: [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat) et [Cyril LACOTE](http://twitter.com/clacote)._

 

**JUG Team : Pouvez-vous vous présenter? Sur quels projets travaillez-vous chez Pivotal en ce moment ?**

**Brian**: Bonjour, je m’appelle Brian Clozel et je suis membre de l’équipe Spring Framework chez Pivotal. Côté Framework, je travaille essentiellement sur les aspects Web et Messaging. Je suis aussi project lead de l’application de référence [Sagan](https://github.com/spring-io/sagan), que nous utilisons en production sur CloudFoundry pour notre site [https://spring.io](https://spring.io). Vous pouvez me joindre sur Twitter [@brianclozel](http://www.twitter.com/brianclozel) pour discuter!

**Sébastien**: Bonjour, moi c’est Sébastien Deleuze ([@sdeleuze](https://twitter.com/sdeleuze) sur Twitter). Je travaille également sur le projet Spring Framework, notamment les fonctionnalités utiles pour les développeurs d’applications RIA (Websocket, webservices REST).

 

**JUG Team : Comment vous vivez le travail en remote et le fait de bosser pour une boite américaine avec des collègues qui sont à plusieurs milliers de kms de vous ?**

**Brian**: le teletravail peut vraiment être intimidant au premier abord, surtout lorsque les plus proches collègues sont à l’étranger. Mais j’y ai trouvé très rapidement beaucoup d’avantages - je maîtrise mon temps et mon environnement, ce qui me rend vraiment productif; c’est aussi un immense avantage pour la vie de famille. Une fois les outils (hipchat, mail, skype) et les fuseaux horaires maîtrisés, tout roule! Je fréquente aussi un espace de coworking lyonnais, [La Cordée](http://www.la-cordee.net/), ce qui permet d’avoir des “collègues” de métiers très différents.

**Sébastien**: C’est le point qui m’a le plus questionné avant de me lancer chez Pivotal. Je travaillais dans une société de service sur Lyon depuis plus de 7 ans, où je côtoyais tous les jours des collègues super sympas, j’ai donc un peu hésité avant de sauter le pas. Je n’y trouve que des avantages et j’aurais du mal à faire machine arrière. Comme Brian, je vais régulièrement à La Cordée où l’ambiance est excellente : des profils très différents, beaucoup d’indépendants, des soirées organisées régulièrement. On a même droit à un goûter ponctué de parties de Uno ;-) Par contre, je pense que ça ne peut marcher qu’avec des gens ayant une certaine expérience, je ne suis pas sûr que ça aurait aussi bien fonctionné si j’avais commencé directement à la sortie de l’INSA ...

 

**JUG Team : C'est chaud d'être dev chez pivotal ? Comment vos commits sont validés ? Sont-ils toujours audités ? Comment se passent les prises de décisions sur les sujets techniques ?**

**Brian**: C’est vraiment intimidant d’arriver dans une équipe aussi pointue techniquement, où chacun n’hésite pas à exposer ses opinions les plus tranchées. Côté code, nous faisons très souvent des peers reviews et la décision finale revient au lead du module en question. Chacun tente de convaincre les autres, mais le process est très ouvert et nous suivons [les mêmes règles que nos contributeurs](https://github.com/spring-projects/spring-framework/blob/master/CONTRIBUTING.md).

Juergen explique ça en détail dans [l’interview](http://www.infoq.com/interviews/Juergen-Hoeller-QConNY-2014-Interview) qu’il a donné lors de la conférence QCon 2014.

**Sébastien**: Tous les membres de l’équipe sont très costauds, encore plus que ce que je pouvais m’imaginer, mais en même temps ils sont très humbles et portés par le souhait de prendre les meilleures décisions techniques possibles pour le projet. Les discussions sont nombreuses et intenses, mais je n’ai pas le souvenir d’une seule décision avec laquelle je n’ai pas été en accord. La meilleure décision s’impose souvent d’elle même. Les codes reviews sont systématiques, les [“polish”](https://twitter.com/phillip_webb/status/505022938156785664) très fréquents … La liberté qui m’est laissée concernant les sujets sur lesquels je travaille est réellement très importante !

 

**JUG Team : On a longtemps reproché à Spring d’être trop complexe, que démarrer un dev avec Spring était couteux, compliqué, etc (configuration XML verbeuse, gestion des dépendances complexe, des classes d'abstraction technique obscures, etc.). Depuis Spring 3.1 et encore plus depuis Spring 4.0, la donne a fortement changé, le code de Spring est plus simple, on peut utiliser l'approche Java Config et bannir le XML... Pouvez-vous nous présenter brièvement ces grands axes de simplification dans spring-core ?**

**Sébastien**: je pense que la chose la plus importante à comprendre, c’est que développer une application Spring en 2014, c’est la développer avec Spring Boot qui lui même intègre Spring Framework mais en mode convention over configuration. Il n’y a aucune contre indication, Spring Boot est pertinent pour les petits projets en mode demo comme pour les énormes applications d’entreprise qui devront être maintenues pendant 10 ans.

En combinant la pertinence des choix fait par défaut dans Spring Boot avec les dernières fonctionnalités apportées par Spring Framework 4.1, on arrive à un équilibre entre puissance et simplicité qui me parait très intéressant.

L’approche JavaConfig ainsi que les annotations @Profile, permettent de mettre en place très rapidement et simplement la configuration de l’application. Mais JavaConfig, ce n’est pas simplement déclarer des beans en Java, c’est également bénéficier d’API de configuration extrêmement pratiques, comme celles disponibles en utilisant les annotations [@EnableWebMvc](http://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle/#mvc-config-enable) ou [@EnableWebSocket](http://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle/#websocket-server-handler). Spring Framework 4.1 apporte par exemple la possibilité de configurer facilement via cette API la gestion des ressources statiques, la résolution des vues ou encore les redirections d’URL.

Je pense qu’une des raisons pour lesquelles la simplicité des dernières versions de Spring n’est pas encore largement perçue, c’est la documentation de référence. Elle est complète mais elle a grossi au fur à et mesure des versions. C’est un des chantiers majeurs pour le futur, attendez-vous donc à d’importantes améliorations sur le sujet, dans la lignée de ce que nous avons déjà fait avec les [guides Spring](https://spring.io/guides).

 

**JUG Team : Ce qui est étonnant dans l'évolution de spring, c'est que vous vous efforcez de tout simplifier depuis plusieurs releases mais qu'en parallèle vous maintenez encore de vieilles versions 3.x qui ont plusieurs années... Ce choix tranche radicalement en comparaison des stratégies de maintenance d'autres frameworks. Pouvez-vous nous en dire plus sur ce choix et ce qu'il vous coûte...**

**Brian**: Je pense que le succès de Spring vient en partie de sa politique de maintenance et de mises à jour. Nous mettons tout en oeuvre pour que la montée de versions Spring dans une application soit la plus simple possible. Avec Spring 4.0, nous souhaitons accompagner tous les développeurs (des “early adopters” aux développeurs d’applications “legacy”) vers Java 8 et le futur tel que nous le voyons. C’est garder cet équilibre entre nouvelles fonctionnalités et retrocompatibilité qui nous demande le plus d’efforts.

 

**JUG Team : Spring Boot, dont la première release est sortie en avril dernier, est une des réponses qui va dans le sens de la simplification. Pouvez-vous nous présenter le projet en quelques mots et avez-vous une idée de son taux d’utilisation dans la communauté des développeurs aujourd’hui ?**

**Sébastien**: Spring Boot permet de développer rapidement des applications, en proposant une approche orientée convention plutôt que configuration.

Il inclut :

\- Des starters qui sont des dépendances spécialisées pour un usage donné

\- Des endpoints automatiques orientés dev (/beans, /env, mapping) ou devops (/health)

\- Une configuration par défaut ultra pertinente, et tout est personnalisable

\- Un mécanisme d’activation de beans conditionnels (par exemple présence d’une classe dans le classpath) très utile

\- [Un guide de référence très complet](http://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/)

\- Une configuration par défaut d’un certain nombre de paramètres via application.properties ou application.yml

\- L’intégration par défaut de Spring Loaded qui permet la prise en compte de certaines modifications sans avoir à redémarrer le serveur

Pour le mode de déploiement, vous avez le choix entre un classique WAR ou un JAR exécutable basé sur un conteneur de servlet embarqué.Le mode de déploiement en JAR exécutable offre 4 avantages majeurs :

\- Meilleur contrôle de la version et de la configuration avancée de Tomcat

\- Lancement via une simple commande java -jar opensnap.jar grâce à Spring Boot (toute les dépendances sont incluses dans le JAR)

\- Démarrage ultra rapide de votre application

\- Adapté à un déploiement en mode Cloud, seule une JVM est alors nécesssaire pour lancer votre application

Développer une application avec Spring Boot, c'est bénéficier d'une quantité hallucinante de bonnes pratiques, à essayer d'urgence !!!

**Brian**: Côté utilisation, nous avons de très bons retours de la communauté. C’est difficile d’avoir des chiffres très précis, mais stats maven central nous disent qu’il y a une bonne part de projets Spring 4 qui sont développés avec Boot, et la courbe monte chaque mois… Pour Sagan, je ne vois pas du tout revenir en arrière et sortir de Boot; ça m’obligerait à rajouter beaucoup de configuration et surtout je perdrais beaucoup de fonctionnalités “ops”.

 

**JUG Team : Spring Boot ne touche pas que le dev ou le déploiement des applications mais il apporte aussi tout un tas de fonctionnalités sympas au niveau monitoring et gestion des métriques avec le module ActuAtor. Pouvez-vous nous en parler ?**

**Brian**: Ces fonctionnalités sont vraiment utiles pour le site [spring.io](http://spring.io/); nous utilisons [la technique du “continuous delivery”](https://spring.io/blog/2014/04/04/project-sagan-zero-downtime-deployments) et ces endpoints me permettent de gérer efficacement l’application en production. Vous pouvez jeter un oeil aux endpoints publics de l’application comme [/info](https://spring.io/info) ou [/health](https://spring.io/health). Aussi, l’intégration du remote shell “CRaSH” est un vrai plus.

 

**JUG Team : Quand on lit des articles sur Spring Boot, il est souvent présenté comme une bonne solution pour développer des applications respectant une approche micro-services, pourquoi donc ?**

**Brian**: Spring Boot fait beaucoup pour simplifier la vie des développeurs dans la configuration et la maintenance et permet de se concentrer sur le métier de l’application.

L’application devient un JAR exécutable avec un app server intégré, ce qui est vraiment l’approche privilégiée pour les déploiements micro-services (et dans le cloud!). Autre avantage, l’application démarre super rapidement; c’est très important pour le déploiement et la résilience des services.

 

**JUG Team : Vous allez nous parler de Spring 4 qui a apporté un paquet de nouveautés. Un des grands apports plutôt sympa est notamment le support des WebSockets… Quelles sont les autres nouvelles fonctionnalités qui vous semblent les plus utiles ?**

**Brian**: - Ce n’est peut-être pas assez mis en avant, mais Spring 4 cherche vraiment à accompagner les développeurs vers Java 8 (nous sommes des utilisateurs de la première heure!); c’est un premier pas important en terme de compatibilité et de support qui permettra des fonctionnalités bien plus ambitieuses dans les prochaines versions…

\- Les... Websockets! Plus sérieusement, nous n’avons pas seulement rajouté un support Websockets, mais vraiment introduit un virage “messaging” dans le développement des applications Spring. Sans l’aspect messaging, utiliser les Websockets revient un peu à développer une application web directement avec l’API Servlet...

\- l’intégration du nouveau [Markup Template Engine de Groovy](http://docs.groovy-lang.org/docs/next/html/documentation/template-engines.html#_the_markuptemplateengine) dans Spring 4.1 fera plaisir aux amateurs de Groovy et de templating “DRY” à la [Haml](http://haml.info/)

\- Avec [le resource handling dans Spring 4.1](https://spring.io/blog/2014/07/24/spring-framework-4-1-handling-static-web-resources), nous aidons (enfin!) les développeurs à intégrer leur application Spring avec leur application client dans leur technologie préférée (AngularJS, Dart, etc). Une façon simple mais puissante de gérer les ressources statiques.

**Sébastien**: Spring 4.1 intègre également des améliorations très concrètes pour les développeurs d’applications exposant des API REST. Je pense notamment au support des [JSONView](http://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle/#mvc-ann-jsonview), qui permet d’adapter contextuellement les champs qui sont sérialisés. Et grâce au nouveau support de l’extension Jackson XML, ça marche aussi en XML !

**JUG Team : Dans JavaEE 8, il est prévu d’ajouter une spécification MVC. Que pensez-vous de cette initiative ?**

**Brian**: Très bonne question! Comme je le disais tout à l’heure, tous les membres des équipes Spring ont des opinions bien tranchées. Nous allons discuter du sujet très bientôt (probablement pendant [SpringOne2GX](http://springone2gx.com/)) et décider ensemble d’une orientation à suivre. Avant d’avoir une opinion sur le sujet, je cherche déjà à bien comprendre comment cette JSR s’inscrit dans les initiatives Web de JavaEE et comment la communauté JavaEE voit cette nouvelle spec.

**Sébastien**: Pas mieux ;-)

**Merci Brian et Sébastien!**

**Merci à Anne-Laure Rigaudon pour sa relecture!** **Les inscriptions pour les sessions de Brian et Sébastien sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/spring-41-et-spring-boot)!**
