---
layout: "post"
author: 
  - "edijoux"
title: "Soirée Framework purement web (12/10)"
date: "2010-10-07"
categories: 
  - "les-conferences"
tags: 
  - "paris-jug"
  - "web"
---

| Pour le mois d’Octobre, le ParisJug propose une session Framework purement web. Que nous réserve donc cette soirée ? Nous avons demandé à deux des speakers de nous en parler. |

Nos 2 speakers :

- **Nicolas Martignole :** auteur de l’incontournable blog [Le Touilleur Express](http://www.touilleur-express.fr/), il s’intéresse depuis un moment déjà à Play! Framework et en a profité pour réaliser un [site d’emploi original pour les geeks fait par un geek](http://express-board.fr/) ;
- **Guillaume Bort** : développeur lead du projet [Play! Framework](http://www.playframework.org/) et CTO du cabinet de conseil [Zenexity](http://www.zenexity.fr/) où il apporte à ses clients son expertise sur les architectures web.

**Ellène : Qu’est ce qu’un framework purement web ?**

**_Nicolas_** **_:_** _C’est un socle technique qui permet de réaliser une application de A à Z : du chargement des données à la présentation, de l’extraction des paramètres HTTP à la partie contrôleur. Pas besoin d’utiliser différents frameworks, c’est un couteau Suisse qui permet de réaliser une application web complète. Un framework purement Web c’est aussi une architecture qui suit le standard d’architecture du Web. Le web a été conçu autour de la notion d’URI, sans état. L’approche REST, des URLs bookmarkables, le fait que gérer le bouton Back soit normal et pas un exploit, tout ceci pour moi traduit le fait que Play! est un framework purement Web._

_**Guillaume** : La majorité des frameworks de présentation Java existants permet de créer des “Applications Java” qui s’exécutent au final dans un navigateur Web. Les applications sont souvent des “applications lourdes” affichées dans Internet Explorer. Sans prendre en compte toutes les particularités de l’architecture Web. Dans leur philosophie, la chose la plus importante est le “service” Java, et HTTP ou HTML ne sont considérés que comme un middleware technique qui permet d’afficher l’application. Au contraire, les frameworks Web tels que Play, se concentrent sur la partie Web, le protocole HTTP, la négociation de type de contenu, la navigation hyper-media, de l’application. A ce titre Play est beaucoup plus proche de Django, Symfony ou RubyOnRails. A la différence qu’il utilise Java comme langage de programmation._

**Ellène : Quels sont les avantages de ce type de framework ?**

_**Nicolas** : Avec une approche sans session, il faut voir la partie serveur comme une machine sans état. Ce type de framework permet une montée en charge plus linéaire. Le serveur n’a pas à stocker plusieurs sessions. D’autre part, chaque requête peut être servie par un serveur différent. Enfin je trouve que c’est plus simple à programmer. Nous n’avons pas à résoudre des problèmes de gestion de conversation ou de flow par exemple._

_**Guillaume** : Ces frameworks focalisés sur le Web donnent directement accès à tous les avantages inhérents à l’architecture Web : stateless, déconnecté, cacheable, fortement distribués. Play permet à des développeurs Web sachant programmer en Java de créer des applications Web à l’état de l’art sans faire de compromis. Le développeur a totalement la main sur la partie vue de son application, la version de HTML, le poids des pages, la dégradation des fonctionnalités suivant les navigateurs._

**Ellène : Qui peut être concerné par ces frameworks ?**

_**Nicolas** : Tout le monde. Pour faire des applications simples comme des applications compliquées. Lorsque le problème métier est compliqué, il est plus pratique d’utiliser une approche simple, mais qui donne de meilleurs résultats. Play! Framework, c’est une approche Java avec la possibilité d’utiliser des librairies Java. La prise en main est très rapide. Potentiellement, n’importe quel développeur Java qui a un besoin Web, ou qui utilise son navigateur pour afficher le cœur de son application est concerné._

_**Guillaume** : Toute application qui s’exécute aujourd’hui dans un navigateur a intérêt à se rapprocher au maximum de la bonne architecture Web. Comme la majorité des applications aujourd’hui, y compris d’entreprise, sont des applications Web, ce genre de framework s’adresse à tout le monde ! Simplement avant d’utiliser un framework tel que Play, un développeur doit être à l’aise avec l’architecture du web : le concept de requête/réponse, la séparation entre client et serveur, la notion d’hyper-media. Ces concepts sont cependant simples à appréhender._

**Ellène : Quels sont les notions et outils allez vous présenter durant cette soirée ?**

_**Nicolas** : Personnellement je parlerai de la possibilité d’utiliser une approche orientée DDD avec Play! Je parlerai aussi de puissance, simplicité, bonheur de pouvoir programmer rapidement. Côté outil je pense que je parlerai d’IDEA IntelliJ, Chrome, Firebug et Git._

_**Guillaume** : Pour ma part je vais réaliser en live une petite application complète qui consommera un Web service mis à disposition sur internet, et intègrera une base de donnée. Tout le code que je vais écrire sera totalement compréhensible par n’importe quel développeur, même débutant. J’utiliserai simplement une console, Play, un navigateur Web et un éditeur de texte._

Intéressant non ? Alors n’oubliez pas de vous inscrire ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) , elles ouvriront bientôt. Soyez prêt !

Un grand merci à Nicolas Martignole et Guillaume Bort de nous avoir consacré un peu de leur temps pour répondre à nos questions ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif) .
