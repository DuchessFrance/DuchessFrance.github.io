---
layout: "post"
author: 
  - "acrepet"
title: "Architecture stateful vs stateless"
date: "2011-11-16"
categories: 
  - "les-conferences"
tags: 
  - "cdi"
  - "ejb3"
  - "java-ee"
  - "lyon-jug"
  - "play"
---

| Le 22 novembre, le [Lyon JUG](http://www.lyonjug.org/) propose une soirée autour des architectures Stateful et Stateless. Deux équipes vont donc s’affronter sur le ring du [Lyon JUG](http://www.lyonjug.org/). Du côté Stateful, [Antoine Sabot-Durand](http://twitter.com/antoine_sd) nous fera une présentation intitulée “Stateful is Beautiful”, revenant aux sources de Java EE (CDI, EJB 3…), le tout articulé autour d’une démo! Et du côté Stateless, on retrouvera [Philippe Charrière](http://k33g.github.com/) et [Loïc Descotte](http://coffeebean.loicdescotte.com/), tous les deux co-auteurs de [l’ebook Play.Rules](http://3monkeys.github.com/play.rules) qui nous parleront donc des concepts des architectures Stateless à travers une démo basée sur [Play Framework!](http://www.playframework.org/). Pour vous mettre l’eau à la bouche, voici un interview des speakers : les mêmes questions ont été posées à chaque équipe (à part la dernière), et elles n’ont évidemment pas eu accès aux réponses de l’équipe adverse avant la diffusion de cet interview. |

[![@antoine_sd](http://www.lyonjug.org/_/rsrc/1320851509197/speakers/ASD%20223x165_4.JPG?width=150)Antoine Sabot-Durand ](http://twitter.com/antoine_sd) est consultant et architecte Java EE chez [Ippon Technologies](http://www.ippon.fr/). Il intervient sur toute sorte de missions : conceptions d’architecture applicative, audits d’applications existantes, formations. Il est également en charge de la capitalisation des savoir faire au sein de la société. Il a acquis une expertise sur Java EE et plus particulièrement sur EJB 3.X et CDI. Il est l’auteur de quelques articles ayant alimenté le débat sur les standards et les choix technologiques sur les développements Java comme “[Les rendez-vous manqués de Spring](http://blog.ippon.fr/2010/03/30/les-rendez-vous-manques-de-spring/)” ou plus récemment une suite d’article sur [Java EE 6](http://blog.ippon.fr/tag/java-ee/). Il est également membre de l’Expert Group CDI 1.1 et technical Leader sur le [module Seam Social du projet Open Source Seam 3](http://seamframework.org/Seam3/SocialModule). Vous pouvez suivre Antoine sur [Twitter](http://twitter.com/antoine_sd) ou [Google+](https://plus.google.com/u/0/101456034283911479056).

[![@antoine_sd](/assets/2011/11/2011-11-16-architecture-stateful-vs-stateless/k33g.org.min.png)Philippe Charrière](http://k33g.github.com/) s’est présenté lui-même comme suit : “Je suis “avant-vendeur” à Lyon chez [Steria](http://www.steria.com/). Avant d’être “ingénieur informaticien” j’ai commencé à coder sur une TI57 (beaucoup ne doivent pas savoir ce que c’est, normal j’ai 42 ans (ça c’est geek)) et depuis la passion du code ne m’a plus quitté. J’ai fait différents métiers en passant par technico-commercial, développeur cobol, responsable informatique, chef de projet, architecte .Net (désolé), directeur de projet, responsable technique, avant-vendeur… et ce n’est certainement pas fini. Mais je n’ai jamais lâché “le code”, plutôt multi-techno, ça m’aide à faire des propositions commerciales qui tiennent la route et à la livrer avec des prototypes quand je peux. @Home, c’est Javascript, Coffeescript, Play!Framework, et tout ce qui touche au mobile (grosse passion pour les jouets Apple, mais bidouille aussi Android)”. Vous pouvez consulter [le blog de Philippe](http://k33g.github.com/) ou le suivre sur [Twitter](https://twitter.com/k33g_org/) ou [Google+](https://plus.google.com/u/0/116392997992514180254).

[![Loïc Descotte](/assets/2011/11/2011-11-16-architecture-stateful-vs-stateless/main-thumb-791479-100-Ag0qorqM9hVNbgB9GL8isJ8wY7LvOqXa.jpeg)Loïc Descotte](http://coffeebean.loicdescotte.com/) s’est également présenté lui-même : “JUG Leader à Grenoble ([Alpes JUG](http://www.alpesjug.org/)) et développeur chez [Kelkoo](www.kelkoo.fr). Ce que j’aime particulièrement dans le métier/hobby de développeur c’est l’évolution permanente des technologies qui permet de découvrir sans cesse de nouvelles choses. Dès que j’ai un peu de temps j’essaie de parler un peu des frameworks que je teste sur mon blog [CoffeeBean](http://coffeebean.loicdescotte.com). J’ai découvert Play début 2010 grâce à une présentation de Guillaume Bort. J’ai tout de suite été séduit par la puissance, la simplicité de ce framework, qui contrairement a pas mal de ses concurrents côté Java (Wicket, JSF…) ne cherche pas à masquer les principes et le fonctionnement du Web.” Vous pouvez également le suivre sur [Twitter](http://fr.twitter.com/loic_d) ou [Google+](https://plus.google.com/u/0/117447657524839844765).

_Cet interview a été préparé conjointement par [Agnès CREPET](http://twitter.com/agnes_crepet) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat), deux membres de la team du [Lyon JUG](http://www.lyonjug.org/). Merci également à [Cyril Lacôte](http://twitter.com/clacote) de l’équipe du podcast [Cast-IT](http://www.cast-it.fr) pour son aide sur la relecture de cet interview._

**Agnès & Cédric : Pour introduire un peu les concepts d’une architecture avec ou sans état, comment définiriez-vous ce qu’est un état ?**  

**Loïc** (Equipe Stateless): Dans une application il existe (presque) toujours un état. Lorsqu’on parle d’architecture sans état il s’agit souvent d’un raccourci pour dire qu’il n’y a pas d’état au niveau middleware (sur le serveur d’application par exemple). Dans ce contexte, l’état est un ensemble de données relatives à une session utilisateur à un instant t. Ces données peuvent comprendre les informations relatives à l’authentification et aux droits de l’utilisateur, un historique des actions effectuées durant cette session (sélection de paramètres d’affichage, sélection de produits sur un site marchand…)

**Philippe** (Equipe Stateless): Globalement, je dis “comme Loic”. plus spécifiquement, j’aurais tendance à “déshumaniser” le concept et à rattacher l’état à une page plutôt qu’à l’utilisateur, voire même de manière plus abstraite à une ressource (ex: client lourd à la place de la page). Et cet état existe côté client et côté serveur, pas forcément en même temps selon si l’on est en stateful ou en stateless :

- en stateful : la page/client a un état, dont la représentation/(persistance ?) côté serveur est une session en mémoire quasiment au même moment
- en stateless : la page/client a un état, dont la représentaion côté serveur est finalement très furtive puisqu’elle peut n’exister qu’au moment où l’on interroge le serveur.

**Antoine** (Equipe Stateful): Un état est une information temporaire gérée au sein d’une application pour un utilisateur donné ou l’application dans sa globalité. Cette information permet de conserver de manière transitoire des données concernant l’utilisation actuelle de l’application ou un statut d’avancement dans un processus donné de celle-ci.

**Agnès & Cédric : Imaginez que vous atterrissiez sur une île déserte et que vous n’ayez la possibilité d’emmener avec vous qu’un seul framework Java de référence pour coder une application, lequel choisiriez-vous ?**  

**Loïc** (Equipe Stateless): Si on part du principe qu’il n’y a pas d’électricité sur une ile déserte, il va falloir faire le maximum de chose avec le temps de batterie qu’il nous restera sur notre laptop… Il nous faut donc un framework productif… ensuite je pense que vous vous doutez de la réponse ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)

**Philippe** (Equipe Stateless): perso, je préférerais partir avec un manuel de construction navale et une canne à pêche. Sinon je partirais avec SL4A sur android + moteur beanshell parce que j’aurais plus de batterie sur mon smartphone que Loic sur son netbook. (Bon, ok, je prendrais Play! aussi parce que je peux utiliser TextMate et que ça consomme moins de ressource)

**Antoine** (Equipe Stateful): Pour coder : Java EE 6, parce que c’est la solution permettant le plus de choix d’architecture : Stateful ou Stateless, webapp ou client lourd. Sinon la bibliographie Spring est plus volumineuse et avantageuse si on souhaite faire des feux de camp!

**Agnès & Cédric : Selon votre approche préférée (stateful/stateless), comment “suivre” et contrôler l’activité d’un client sur mon site? En prenant le fameux exemple d’un client faisant une commande sur un site marchand: comment puis-je lier entre elles les requêtes HTTP d’un même client? Comment je persiste son panier?**  

**Loïc** (Equipe Stateless): Si on prend l’exemple de Play, pour lier les requêtes HTTP d’un même client on dispose d’un objet d’accès à la session d’un utilisateur dans les contrôleurs. Cet objet est initialisé à l’aide un cookie sur le navigateur. Ce cookie est signé et crypté pour des raisons de sécurité. Si on veut stocker le contenu d’un panier dans la session utilisateur, on a plusieurs possibilités. La solution la plus pratique et qui sera bientôt la solution la plus standard est d’utiliser les API de stockage côté navigateur fournies par HTML5.

**Philippe** (Equipe Stateless): Facile! Comme Loïc. Bon je détaille un peu. Pour lier et persister : _localstorage_ (donc il faut faire du js) est une super solution, facile à mettre en oeuvre. Beaucoup l’associe à HTML5, mais en fait la notion de _localstorage_ existait avant, et il existe différents types de localstorage : [SQLite](http://www.sqlite.org/), local storage (key-value), DOM Storage, user-data (anciennes versions de navigateurs). Pour plus d’infos : voir cet article “[_5 Obscure Facts About HTML5 LocalStorage_](http://htmlui.com/blog/2011-08-23-5-obscure-facts-about-html5-localstorage.html)“. Pour les navigateurs plus vétustes, il y a aussi la possibilité d’utiliser les fonctionnalités de storage de flash, il est très facile de discuter en js avec actionscript (et inversement). Pour les inquiets du JS, il existe de très bonnes librairies qui encapsulent et abstraient tout ça, une des plus connues est [lawnchair.js](http://westcoastlogic.com/lawnchair/) de [Brian Leroux](https://twitter.com/brianleroux) (de chez [Nitobi](http://www.nitobi.com/) / [Adobe](http://www.adobe.com/) / [Phonegap](http://phonegap.com/)) et qui fournit tous les adapters nécessaires en fonction des navigateurs. Un des plug-ins lawnchair fait du clé-valeur avec la base SQLite embarquée qui est plus rapide que la version clé-valeur de base (ça s’utilise par contre de manière asynchrone avec des callbacks). C’est aussi intéressant de se coder la sienne au moins pour comprendre les concepts.

**Antoine** (Equipe Stateful): \[Pour lier les requêtes HTTP :\] en les stockant dans un contexte session ou mieux conversation. Pas de persistance explicite. Le panier reste en mémoire, il sera sérialisé en cas de besoin (charge importante). Si j’attends une durée de vie plus importante, je peux mettre un listener à la fin de la session pour le stocker explicitement.

**Agnès & Cédric : Comment je contrôle la conversation web de mon client : comment gérer par exemple le bouton back du navigateur?**  

**Loïc** (Equipe Stateless): Le problème du bouton back du navigateur se pose beaucoup moins avec un serveur stateless. Le principe d’architecture stateless est fortement lié à celui d’architecture RESTful : avec des URL bien définies, n’importe quelle étape de la navigation doit être bookmarkable. Si on revient sur une de ces étapes, le fait d’avoir un serveur stateless fera qu’on ne risque aucune incohérence d’état sur le serveur : la page s’affichera toujours correctement quel que soit le contexte. Si vous avez déjà utilisé des frameworks comme JSF vous savez que ce n’est pas toujours le cas quand vous devez tenir compte de l’état du serveur.

**Philippe** (Equipe Stateless): Pour le bouton back, cela peut se gérer côté client : toujours avec le localstorage, une solution peut être aussi de faire une application ‘monopage’ (webapp) et de jouer aussi avec les api de gestion de l’historique du navigateur , des hashtags (window.onhashchange), …

**Antoine** (Equipe Stateful): Plusieurs stratégies en fonction du contexte :

- Stocker l’état des vues précédentes pour gérer le back
- Demander à JSF de générer des URL Rest avec [prettyface](http://ocpsoft.com/prettyfaces/)
- interdire au navigateur de cacher une page pour forcer son rafraîchissement
- gérer correctement les erreurs d’incohérence entre l’état serveur et l’état client
- Faire mon rendu en ajax : le bouton back me fera sortir de l’application

**Agnès & Cédric : Est-ce possible de gérer plusieurs espaces de travail pour le client, à savoir plusieurs conversations avec la même application dans différents onglets de son navigateur?**  

**Loïc** (Equipe Stateless) : Je ne suis pas du tout expert sur cette question, le cookie de session étant partagé entre les différents onglet (du moins sous Firefox et Chrome), en principe on ne peut pas avoir plusieurs sessions en même temps avec ce procédé. Après avec Play tout est possible, on peut très bien se contenter de créer une session côté client, encore une fois avec local storage, et associer une session à une instance de page à l’aide de JavaScript.

**Philippe** (Equipe Stateless): avec le module Secure de base de Play, ça va pas le faire (perso j’utilise différents navigateurs, ou mode incognito) pour les raisons expliquées par Loic. Quelles solutions ? -> faire sa propre solution d’authentification et passer des infos dans la requête (bof) -> faire avec -> quand tu es connecté sous google tu ne peux l’être qu’avec un seul user -> on perd en souplesse, on gagne en sécurité.

**Loic** (Equipe Stateless): En dernier recours il existe aussi des plugins pour les navigateurs qui permettent d’avoir des sessions distinctes dans différents onglets via une manipulation des cookies (voir [exemple](http://www.logeekiel.com/2009/09/21/ouvrir-deux-session-facebook-gmail-ou-de-nimporte-quel-autre-site-sur-un-meme-navigateur)).

**Philippe** (Equipe Stateless): pour l’aspect “plusieurs espaces de travail” : le localstorage peut prendre plusieurs formes :

- accessible par l’ensemble des onglets du navigateur (ou par plusieurs instances du navigateurs), bon ok dans le cas de 2 navigateurs de marques différentes, faudra faire plus classique (on parle de localstorage)
- accessible uniquement sur la page en cours et uniquement pendant la session (on parle de sessionstorage)

**Antoine** (Equipe Stateful): Yep, CDI contient un scope conversation permettant de faire ça. [Apache CODI](https://cwiki.apache.org/EXTCDI/) l’étend en permettant de gérer des sous conversations (mise en pause d’une conversation, lancement d’une autre)

**Agnès & Cédric : Puis-je définir facilement un workflow obligeant mon client à enchaîner plusieurs écrans pour une conversation donnée (le paiement par exemple)?**  

**Loïc** (Equipe Stateless): Pour gérer un workflow de navigation, il y a tout ce qu’il faut aujourd’hui dans les librairies côté client pour faire ça. On peut enregistrer les différentes étapes et y revenir avec l’history API HTML5 par exemple.

**Antoine** (Equipe Stateful): Concernant le worklfow, actuellement il existe à ma connaissance trois solutions stateful gérant ce besoin :

- [Spring Webflow](http://www.springsource.org/webflow) mais bon c’est spring ![;-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)
- [Seam 2 pageflow](http://docs.jboss.org/seam/latest/reference/en-US/html/jbpm.html) mais pas compatible CDI
- [Oracle ADF task flow](http://docs.oracle.com/cd/E12839_01/web.1111/b31974/taskflows.htm) qui sera standardisé dans JSF 2.2 (sortie été 2012)

Si tout ça ne convient pas, on peut déjà faire deux ou trois trucs avec le fichier de navigation JSF, mais ce n’est pas vraiment une machine à état.

**Agnès & Cédric : Comment sont classiquement démarquées **vos transactions (base de données)** au sein de vos applications? Quelle est dans la majeure partie des cas la durée de vie de la transaction ?**  

**Loïc** (Equipe Stateless): La durée de vie de la transaction est liée à celle du cycle de la requête HTTP : si une erreur survient lors du traitement d’une requête, tout ce qui s’est passé entre la demande du client et l’envoi de la réponse est annulé (rollback). C’est un moyen de rendre atomique chaque traitement lié à une requête. Il n’y a pas besoin d’utiliser un pattern du type open session in view, avec ce procédé on accède à nos objets (et mêmes aux éléments à charger en “lazy”) durant tout le traitement de la requête, quelle que soit la couche dans laquelle on se trouve.

**Philippe** (Equipe Stateless): ben je crois que Loïc a répondu à la question!

**Antoine** (Equipe Stateful): Par défaut la durée de vie d’une transaction est liée à la requête HTTP. L’utilisation de l’extended persistence context permet de retarder la transaction après plusieurs écrans (un wizard).

**Agnès & Cédric : Comment une architecture (avec/sans) état, répond elle aux problématiques de scalabilité, et de reprise sur activité en cas de panne ?**  

**Philippe** (Equipe Stateless): Pas d’état conversationnel : le serveur ne conserve aucune information entre 2 requêtes différentes d’un même client, du coup la 1ère requête pourrait être traitée par un serveur A, la 2ème par un serveur B, etc. … Mon “identité” existe côté client uniquement, donc on pourrait même imaginer que le serveur soit coupé entre les 2 requêtes.  
\-> côté serveur : pas de mémoire utilisée pour les sessions -> pas de problème de synchronisation de sessions entre plusieurs serveurs.

**Loïc** (Equipe Stateless): Il est plus simple d’assurer la scalabilité avec une architecture sans état : rien n’est partagé entre les serveurs. Si on veut ajouter un serveur derrière notre loadbalancer pour monter en charge on évite ainsi tout le paramétrage lié aux sessions que l’on trouve avec les architectures stateful : mise en place d’un cache de session distribué, duplication de sessions ou encore affinité des utilisateurs à un seul serveur… Pour gérer les pannes c’est également plus simple, si on coupe un serveur, l’utilisateur pourra continuer sur un autre serveur sans qu’on ait à se demander comment il va récupérer l’état qu’il avait stocké sur le premier serveur.

**Antoine** (Equipe Stateful): En stateful, la scalabilité c’est le cluster, mais c’est un sujet très vaste et souvent regardé que du point de vue du serveur d’application et pas de la base de données. La tolérance de panne est également assurée par le cluster bien que l’architecture de l’application soit primordiale pour limiter la perte d’information lors du basculement. Le sujet de la résilience des applications est également vaste.

**Agnès & Cédric pour l’équipe “Stateless” : commençons par une question naïve : Quelle est la bonne pratique pour gérer la sécurité de l’application ? Où est stocké l’état si nécessaire ? Purement en base de données, purement côté client ?**  

**Philippe** (Equipe Stateless): Différentes solutions, [oauth](http://oauth.net/) (f… je ne sais pas le prononcer) [openid](http://openid.net/), … Play est fourni avec une “basic authentication”, il suffit de passer en mode SSL pour “renforcer” la mécanique. On peut aussi utiliser une “digest authentication” dans ce cas là, il faut se faire sa propre mécanique ou utiliser [openid](http://openid.net/).

**Loïc** (Equipe Stateless): L’état doit être stocké sur le client, cette information doit être de taille minimale (loggé ou pas + rôle de l’utilisateur). C’est ce qui se passe lorsque vous êtes loggés sur GMail par exemple. Ceci n’empêche pas le mécanisme d’authentification d’être robuste (ex : oAuth, https…). Pour rappel le cookie de session est signé et crypté.

**Agnès & Cédric pour l’équipe “Stateful” : Est-ce simple de tester une webapp stateful ?**  
**Antoine** (Equipe Stateful): Aujourd’hui oui grâce à [JBoss Arquillian](http://www.jboss.org/arquillian). J’en ferais une démo lors de ma prez

### **Merci Antoine, Loïc et Philippe!**

**Les inscriptions pour leur session au [Lyon JUG](http://www.lyonjug.org) le 22 novembre sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/architecture-stateful-vs-stateless).**
