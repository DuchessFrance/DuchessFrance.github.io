---
layout: "post"
author: 
  - "Katia"
title: "Vos premières API réactives avec Vert.x et Infinispan"
date: "2017-12-20"
categories: 
  - "tech"
  - "tutoriel"
tags: 
  - "big-data"
  - "developer"
  - "infinispan"
  - "push"
  - "reactive"
  - "rest"
  - "vert-x"
coverImage: "firstStepsInfinispanVertx.jpg"
---

| Mardi 12 décembre le [Paris JUG](https://www.parisjug.org/xwiki/wiki/oldversion/view/Meeting/20171212) a eu lieu. La dernière soirée de l'année a été consacrée à [Eclipse Vert.x](http://vertx.io/). J'en profite donc pour vous présenter un tutoriel sur la manière de créer des API (REST et Push) avec Vert.x en utilisant également Infinispan pour persister des données en mémoire. |

> _Tout le code est disponible sur [GitHub](https://github.com/infinispan-demos/vertx-api). Le backend est écrit en Java et utilise Maven, donc toutes les dépendences peuvent être trouvées dans le pom.xml. La - très simple - application front est en React._

## Vert.x ?

[Vert.x](http://vertx.io/) est un framework événementiel et non bloquant qui permet d'écrire des applications réactives dans la JVM. Il est basé sur le [Pattern Reactor](http://vertx.io/docs/vertx-core/java/#_reactor_and_multi_reactor), comme Node JS. La différence est que Vert.x implémente un Multi-Reactor Pattern, ce qui lui permet, contrairement à NodeJS, d'utiliser tous les cœurs d'une machine pour créer des applications et des services fortement concurrents et performants. C'est un framework qui n'impose pas beaucoup de restrictions et intègre la plupart des frameworks les plus utilisés. Pour les plus curieux, vous pouvez découvrir de nombreux [exemples de code](https://github.com/vert-x3/vertx-examples).

![](/assets/2017/12/2017-12-20-vos-premieres-api-reactives-vert-x-infinispan/Vert.x_Logo.svg_-300x131.png)

\[caption id="attachment\_9984" align="aligncenter" width="300"\]![](/assets/2017/12/2017-12-20-vos-premieres-api-reactives-vert-x-infinispan/ReactiveVertx-300x225.jpg) Julien Viet, lead du projet Vert.x\[/caption\]

## Infinispan ?

Infinispan est un cache distribué et in-memory datagrid. Le projet est sous licence Apache 2.0. Infinispan permet d'écrire et lire une grande volumétrie des données distribuées, de réaliser des opérations transactionnelles en mémoire en gardant une bonne performance et bien plus encore. Il est très souvent utilisé comme cache de niveau 2 d'hibernate. Infinispan peut être embarqué en tant que librairie dans vos applications, mais aussi être utilisé en mode client/serveur, qui est le mode qu'on utilisera par la suite.

Parmi les nombreux cas d'utilisation, Infinispan peut être utilisé comme Cluster Manager pour d'autres frameworks (comme fait Zookeeper), en particulier pour créer des [clusters d'applications Vert.x.](https://github.com/vert-x3/vertx-infinispan)

 

![](/assets/2017/12/2017-12-20-vos-premieres-api-reactives-vert-x-infinispan/infinispan9_pixelsizes_600-300x73.gif)

##  ![](/assets/2017/12/2017-12-20-vos-premieres-api-reactives-vert-x-infinispan/ClusteredVertx-300x225.jpg)

## Créer notre première API REST

On va commencer par créer un endpoint '/' qui affichera un message de bienvenue.

En Vert.x cela est fait avec des **verticles**. Un verticle est une unité de déploiement qui traite des évènements arrivant depuis une boucle d'événements (Event Loop). Les Event Loops sont fortement utilisées dans la programmation asynchrone. Pour plus d'explication sur ce ce concept, vous pouvez regardez cette vidéo de [Devoxx](https://www.youtube.com/watch?v=qL5BGHPXrac) ou directement dans la documentation du projet.

On a besoin d'implémenter la méthode start, créer un router et lui dire de traiter les requests dans l'URL '/'. Finalement on va créer un serveur HTTP.

La chose la plus importante qu'il faut retenir est la suivante : [vous ne pouvez pas bloquer la boucle d'événements](http://vertx.io/docs/vertx-core/java/#golden_rule). On verra par la suite comment appeler des API-s bloquantes. Si on bloque la boucle, on risque de ne plus être en mesure de répondre aux requêtes.

 

<script src="https://gist.github.com/karesti/007a43ef7b22a141a7c1945d42a3539a.js"></script>

On exécute la méthode main, puis en allant sur notre navigateur à l'adresse http://localhost:8081/, le message d'accueil est affiché !

### Utiliser Infinispan pour stocker des données

On va créer notre première API Rest. L'objectif sera de poster des prénoms et les lire par id. On va utiliser le cache par défaut d'Infinispan et le protocole [Hotrod](http://infinispan.org/hotrod-clients/), qui est la manière recommandée de le faire (mais on peut aussi utiliser REST ou memcache si l'on veut).

#### Démarrer un serveur Infinispan en local

On va faire tourner un serveur Infinispan en local. Vous devez télécharger le serveur [d'ici](http://infinispan.org/download/), dézipper le fichier, puis dans le dossier principal, exécuter ./bin/standalone.sh.

> _Si tu utilises docker sous linux, tu peux facilement utiliser l'image du serveur Infinispan disponible. Si tu travailles sur ton mac, à l'heure actuelle il existe un problème connu avec docker pour mac et la possibilité d'accéder aux IP internes de manière externe. De ce fait, le plus simple pour ces exemples est de télécharger le serveur Infinispan et de le faire tourner en mode standalone._

Le protocole hotrod écoute en localhost:11222.

#### Connecter le client avec Infinispan

Le code que l'on a besoin d'écrire pour se connecter avec le cache par défaut d'Infinispan :

 

<script src="https://gist.github.com/karesti/2f4e3deadb9509907c228ab22739bed3.js"></script>

Ce code est bloquant aujourd'hui. Comme j'ai déjà dit, nous ne pouvons pas bloquer l'event loop, si on appelle l'API depuis la méthode start directement, l'event loop sera bloqué. Le code bloquant doit être appelé à l'aide de la méthode vertx.executeBlocking, en lui passant a "**handler"**. Le code est exécuté dans un worker thread pool, et la réponse renvoyé en asynchrone. Voir plus sur la méthode [ici](http://vertx.io/docs/vertx-core/java/#blocking_code).

Une méthode non bloquante pour arrêter le client Infinispan existe; donc cela ne pose pas de souci de l'appeler directement depuis la méthode stop.

On va créer une classe abstraite CacheAccessVerticle qui initialisera le manager et le cache par défaut. Une fois que tout sera correctement initialisé, on va logger un message et appeler la méthode abstraite initSuccess.

 

<script src="https://gist.github.com/karesti/b1a6a956ca80423bea7e544d6de7a862.js"></script>

 

### Une API REST pour créer des prénoms

On va créer 3 endpoints :

- GET /api qui affiche le nom de l'API
- POST /api/cutenames qui crée un nouveau prénom
- GET /api/cutenames/id qui affiche le prénom par son identifiant unique

CuteNamesRestAPI verticle peut maintenant hériter de la classe CacheAccessVerticle et implémenter la méthode initSuccess à la place de la méthode start.

 

<script src="https://gist.github.com/karesti/24ec30f3a14602bfab96aa504b983187.js"></script>

 

#### POST

Notre but ici est de pouvoir créer un prénom :

curl -X POST \\  \-H "Content-Type: application/json" \\ \-d '{"name":"Oihana"}' "http://localhost:8081/api/cutenames"

> _Pour les personnes non familiarisées avec les prénoms basques, Oihana veut dire forêt (équivalent du prénom Sylvie) et c'est un prénom super mignon. Ceux qui me connaissent pourront confirmer que je suis absolument objective en affirmant cela._

Pour pouvoir lire le contenu du body, on a besoin d'ajouter un **"body handler"**, sinon le corps du message ne sera pas disponible depuis le code Java. Cela se fait en appelant la méthode router.route().handler(BodyHandler.create()).

Le **"handler"** qui s'occupera de traiter la requête **'/api/cutenames'** est du type **RoutingContext**. Pour créer un nouveau prénom, on va appeler la méthode putAsync depuis **defaultCache**. Si tout se passe bien, le status code sera 201 (created), mais si la requête n'est pas correcte, on enverra 400 (bad request).

 

<script src="https://gist.github.com/karesti/9ee09609478c8277a75619dc331570a0.js"></script>

#### GET by id

Afin de lire une entité - prénom - par son identifiant, on va configurer un endpoint avec une valeur paramétré : id. Depuis le route handler, on va appeler la méthode d'Infinispan getAsync.

 

<script src="https://gist.github.com/karesti/6a8564ed3e32af91104968ac6659035d.js"></script>

Si on exécute la méthode  main, on peut maintenant poster et lire des prénoms avec curl !

curl -X POST -H "Content-Type: application/json" \\  -d '{"id":"42", "name":"Oihana"}' \\  "http://localhost:8081/api/cutenames" 

**Cute name added** 

 curl -X GET -H "Content-Type: application/json" \\ "http://localhost:8081/api/cutenames/42" **{"name":"Oihana"}**

## PUSH API

On a vu que la création d'une API REST qui fait du CRUD (Create, Read, Update et Delete) est assez simple. Si aujourd'hui on utilise en masse des API REST, on a de plus en plus le besoin de faire du push de serveur vers le client au lieu des appels classiques "request/response" ou du "polling". Dans l'exemple suivant, on va créer un verticle qui sera notifié à chaque fois qu'un nouveau prénom sera créé en Infinispan, et il va pusher la valeur vers le navigateur.

Pour ce faire, nous allons utiliser deux fonctionnalités :

- Les listeners d'Infinispan
- Le pont entre le [Event Bus de Vert.x](http://vertx.io/docs/vertx-core/java/#event_bus) et le navigateur en utilisant le support de [SockJS](https://github.com/sockjs) (Event Bridge)

[Les listeners d'Infinispan](http://infinispan.org/docs/stable/user_guide/user_guide.html#_Listeners_and_notifications_section) permettent aux clients d'être notifiés quand quelque chose se passe dans le cache.

[L'Event Bridge](http://vertx.io/docs/vertx-web/java/#_sockjs_event_bus_bridge) (pont) entre le [Event Bus](http://vertx.io/docs/vertx-core/java/#event_bus) et le navigateur est une fonctionnalité qui permet de connecter le back-end avec le front-end très simplement. Aujourd'hui cela se fait grâce au support de Sock.js. Sock.js est une librairie javascript qui émule des websockets, mais peut être utilisée avec des navigateurs qui ne les supportent pas.

 

### Création de l'Event Bridge

Vert.x est un framework reactive; cela veut aussi dire qu'il supporte et propose une API [RxJava](https://github.com/ReactiveX/RxJava) très sympa.

La première chose que l'on doit faire est de créer un SocketJSHandler. Ce type de "handler" a une méthode appelée bridge. Dans cette méthode, on va configurer des options avec l'object BridgeOptions. On veut que le serveur et le client puissent communiquer via le pont qu'on va créer; bien évidement on ne veut pas que le navigateur puisse lire toutes les données qui transitent dans l'event bus. Rassurez-vous : cela n'arrivera pas. On va configurer une adresse, **'cute-names'**, et on va donner la permission de lire et d'écrire à cette adresse.

Ensuite, on va configurer une nouvelle route : /eventbus/\*. Les requêtes arrivant à cette route seront traitées par le SocketJSHandler.

Pour finir, on a besoin de créer un serveur HTTP comme on a fait dans l'exemple REST, mais au lieu d'appeler la méthode listen, on va appeler **rxListen** et aussi **subscribe**.

 

<script src="https://gist.github.com/karesti/5b21818ea33da0f21374d446e76480a6.js"></script>

 

### Notifications et publication des données

Utiliser des listeners d'Infinispan est très simple. D'abord, on va créer une classe qui portera l'annotation @ClientListener.

Notre objectif est d'être notifiés quand un nouveau prénom sera rajouté. On va implementer une méthode qui portera l'annotation @ClientCacheEntryCreated. La signature de la méthode doit avoir un paramètre du type ClientCacheEntryCreatedEvent<String>. Ce paramètre est un événement qui nous donnera l'identifiant (key) d'une l'entrée qui vient d'être créée.

Pour que le listener fonctionne, il doit être rajouté à la configuration d'un cache, dans notre cas le cache par défaut. On va aussi implementer la méthode protected  addConfigToCache qui sera appelé juste après l'initialisation du defaultCache dans la classe abstraite CacheAccessVerticle. On permet ainsi de rajouter de la configuration aux verticles héritant de cette classe.

Enfin, pour notifier le front-end, on va publier un message dans l'event bus de Vert.x. Le message contient la valeur du nouveau prénom. A l'aide de la méthode getAsync on va retrouver la valeur et on va ensuite la publier dans l'adresse **cute-names**.

 

<script src="https://gist.github.com/karesti/3ce5a0b5c01f034e87b703b40fda39b5.js"></script>

Maintenant on peut démarrer les deux verticles. Dans les logs, on peut vérifier comment le verticle est bien notifié quand on rajoute un nouveau prénom.

 

<script src="https://gist.github.com/karesti/c082a2335fb9e94d42805bf8432894e8.js"></script>

 

### Code client

On va créer une application "Hello Workd" client en React. La communauté React est assez énorme, donc des nombreux articles existent pour créer une application avec le minimum. J'ai personnellement suivi [celui-là](https://medium.com/@kayodeniyi/simplest-react-app-setup-a74277b99e43).

L'application client démarre avec la commande npm start . Vous pouvez la voir en exécution depuis http://localhost:9000/.

En partant de ce hello world, maintenant on va afficher un nouveau prénom à chaque fois qu'il sera rajouté. On a besoin de connecter le front-end avec le back-end. Pour ce faire, on va utiliser la librairie [vertx3-eventbus-client](https://www.npmjs.com/package/vertx3-eventbus-client). Cette librairie est ećrit sur la librairie SocketJS.

On va créer un object EventBus qui ouvrira une connexion vers **http://localhost:8082/eventbus** et on va enregistrer a "handler" dans l'adresse **'cute-names'**. A chaque fois qu'un nouveau prénom sera rajouté, le "handler" dans le client sera appelé et dans le contenu du body on trouvera la valeur. Pour l'afficher, il suffit de mettre à jour l'état du composant et le rendu changera.

<script src="https://gist.github.com/karesti/970327a590e5deec20ae2510c555e3f2.js"></script>

## Conclusion

Dans cet article nous avons appris à créer des API REST et PUSH avec Vert.x utilisant Infinispan. La prise en main de Vert.x est assez rapide, la communauté est large et très reactive aux question et changements. Concernant Infinispan, je travaille sur ce projet donc je vous laisse juger par vous même ! Des retours sur ces exemples du code sont plus que bienvenus.

En Janvier ou Février, on organise une soirée [Openshift](https://www.openshift.com/). Je reviendrai avant la date avec un tutoriel sur comment déployer les exemples ici développées sur la plateforme.

 

L'article a été originairement publié en anglais, en deux fois, dans le [blog du projet Infinispan](http://blog.infinispan.org/2017/12/first-steps-with-vertx-and-infinispan-rest-api.html).
