---
layout: "post"
author: 
  - "acrepet"
title: "Interview de David Gageot, l'homme qui valait 3 milliards de lignes de code"
date: "2012-12-10"
---

| Le 18 décembre novembre prochain, le [Lyon JUG](http://www.lyonjug.org/) invite [David Gageot](http://blog.javabien.net/) pour un talk intitulé "Du legacy au Cloud". David passera la veille à l'[Alpes JUG](http://www.alpesjug.org/) et le lendemain au [Lava JUG](http://www.lavajug.org/xwiki/bin/view/Main/WebHome)! La session est très orientée "live coding". Une partie de la team du Lyon JUG a assisté à cette session de David au [Jug Summer Camp](Jug Summer Camp) en septembre dernier, et nous avions tous été bluffés! Une session à ne pas râter! |

[![David Gageot](https://lh3.googleusercontent.com/-dpNJ7NFOpzs/AAAAAAAAAAI/AAAAAAAAAg8/zs4GxqiYnJ4/s250-c-k/photo.jpg?height=180&width=180)](http://blog.javabien.net/)

Pour vous donner tout de suite un avant-goût de la soirée, allons poser quelques questions à David.

_Cet interview a été préparé par la team "élargie" du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/cedric_exbrayat), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler) et [Cyril LACOTE](http://twitter.com/clacote)_.__

**Agnès : David Gageot en trois mots (au moins)?**

**David** : Développeur Indépendant Heureux

**Agnès : Peux-tu nous expliquer un peu ton parcours pro ? Notamment ces dernières années. Tu es passé du statut d’indep, à celui de salarié chez un éditeur, puis de nouveau indep.**

**David** : J'ai commencé ma carrière chez un éditeur de logiciels, Adesoft. Je devais porter une application C++/MFC vers du Java/Swing en développant au passage la version "Pro Intranet". Pleins de mots qui n'ont plus de sens en 2012 ! Ensuite, j'ai passé quelques années dans le conseil chez Valtech, principalement en tant que leader technique / coach Agile. Un peu essoufflé par les SSII, je suis revenu à l'édition de soft chez Algodeal. La finance est vraiment un milieu passionnant pour les développeurs et puis j'ai eu l'opportunité d'y monter une très belle équipe. C'est ensuite que je me suis lancé en indépendant. Depuis longtemps, je voulais essayer. Je voyais tous ces "indeps" sur Paris qui semblaient heureux. Et bien c'est vrai, cette liberté rend heureux ! Choisir ces clients, choisir son rythme de travail, renforcer son réseau, assister à plus de conférences. Tous cela est un sacré luxe. Et pourtant, après un peu moins d'un an d'indépendance, j'ai rejoint SonarSource, en tant que salarié, pour travailler sur Sonar. Mes proches ont été étonnés de ce revirement soudain. Moi, cela me semblait naturel. Le statut d'indépendant donne goût au changement. Et puis le projet était intéressant, l'équipe super sympa. Le parfait Idylle quoi ! Sauf qu'au bout de six mois, la liberté de l'indépendance me manquait vraiment trop. Et c'est comme ça que je suis redevenu indep. Cette fois-ci pour longtemps je pense. Je suis un "Professional Geek" !

**Agnès : On sait que tu t’intéresses beaucoup aux stratégies de tests, récemment [le mouvement NoMock](http://antoniogoncalves.org/2012/11/27/launching-the-nomock-movement/) a été lancé. Qu’en penses-tu?**

**David** : C'est un mouvement lancé par une personne ([Antonio Goncalves](http://antoniogoncalves.org/)) qui ne sait pas utiliser les mocks ! J'ai dis à Antonio, que j'allais lancer un mouvement LearnToMock en représailles.

Plus sérieusement, je suis pour tous les mouvements qui poussent à écrire des tests. Notre profession est assez nulle sur ce point. Après, que l'on fasse du mock, du TDD, de l'[Arquillian](http://www.jboss.org/arquillian.html), du boite blanche, boite noire, tout me va. Maintenant, si on me demande ma façon d'écrire des tests : les tests "boite noire" sont nécessaires mais trop longs, il faut y mettre un pincée de mocks/fakes pour les accélérer. Les tests unitaires sont nécessaires mais sans mocks ils sont trops fragiles, on passe notre temps à les refactorer. Quant à Arquillian, c'est un joli framework pour rendre Java EE facile à tester. Mais le plus simple c'est encore de ne pas faire de Java EE. Non ?

**Agnès : Tu proposes depuis peu les Brown Bag Lunch. Peux-tu nous en dire plus?**

**David** : L'idée d'organiser des BBL m'est venue en 2006. Mes collègues de Valtech US en organisaient régulièrement. L'idée est de faire une présentation dans une société, pendant le repas du midi, ensuite, une discussion permet de confronter les points de vues. Depuis 2006, je n'ai pas réussi à trouver le temps d'en organiser. Mais ça c'était avant ! J'ai annoncé mes BBL il y a quelques semaines et déjà huit sociétés souhaitent partager leurs repas avec moi. Je suis super content !

**Agnès : Si JavaEE ne te fait pas rêver, quelle est ta killer tech stack pour faire du web en Java aujourd’hui?**

**David** : Dans le cadre de [CodeStory](http://code-story.net/), nous présentons une stack light pour faire du web en java. En général, il s'agit de Jersey (JAX-RS) tournant sur le HttpServer de Java 6. Parfais, le HttpServer est même suffisant. Plus mainstream, on peut faire tourner Jersey au dessus d'un Jetty embarqué, configuré sans web.xml, directement à partir de Guice. Tous ces types de configurations sont lancés à partir d'un simple main() et sont donc déployables sur n'importe quel serveur ou sur le cloud avec [Heroku](http://www.heroku.com/) ou [CloudBees](http://www.cloudbees.com/). On a donc une stack super-light qui tourne partout et qui se démarre en un dixième de second.

Ça c'est pour la partie serveur pur, pour la partie cliente, un savant mélange de Coffeescript, de Less et de templates Mustache. L'intérêt de ces trois technos est qu'elles peuvent être exécutées soit coté serveur, soit coté client. Selon les besoins. Même si on change d'avis en cours de route. Et pour tester tout ça, j'utilise Zombie.js.

Je dois aussi au plus vite jeter un sérieux coup d'oeil à [AngularJs](http://angularjs.org/) et en particulier à [Testacular](http://vojtajina.github.com/testacular/) qui permettent du test en continu (pratique qui m'est très chère) et du déploiement en continu dans le navigateur sur un simple 'save'.

**Cyril : Quel est aujourd’hui ton moteur dans ce métier de développeur, qu’est-ce qui t’y plait?**

**David** : Apprendre, toujours apprendre. De nouveaux langages, de nouveaux outils, de nouveaux métiers. Rarement des gros frameworks... J'aime composer les outils, trouver des synergies. J'aime faire ça avec des collègues ou des potes. J'aime aussi transmettre mes connaissance et apprendre encore plus en retour.

**Alexis : Quel bilan tires-tu de l’expérience [CodeStory](http://code-story.net/) ? Est-ce qu’il y aura une suite ?**

**David** : Bien sûr il y aura une suite. Code Story avant et pendant Devoxx France reste dans la tête de beaucoup de monde un super événement. En belgique, les résultats ont été plus mitigés mais nous en ressortons plein d'idées pour nous améliorer. Nous sommes encore en train de réfléchir à la forme que prendra cette suite. Peut-être allons nous organiser un nouveau concours d'ici à Devoxx France 2013. Et puis il semblerait qu'Eric et Sébastian soient prêts à remettre leur titre en jeux !

**Cyril : Quel est ton secret pour être un homme aussi complet (beau, cultivé, et drôle)?**

**David** : Ça c'est une question venant de quelqu'un qui me connait parfaitement ! Comment je fais ? Je prends des bains de lait d'ânesse et je code avec des concombres enduits d'huile d'amande douce sur le visage. Ça c'est pour la beauté. Pour la culture, j'essaye d'être le plus curieux possible, ça aide. En ce qui concerne la drôlitude, j'ai un humour très particulier qui m'aide beaucoup à vaincre ma timidité.

_Merci à Anne-Laure Rigaudon pour sa relecture._

**ET Merci David!**

**Les inscriptions pour la session de David au [Lyon JUG](http://www.lyonjug.org) le 18 décembre sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/du-legacy-au-cloud) pour vous inscrire! A noter que Dabvid va faire un petit tour en Rhône-Alpes, à l'[Alpes JUG](http://www.alpesjug.org/) le 17/12 et au [Lava JUG](http://www.lavajug.org/xwiki/bin/view/Main/WebHome) le 19/12.**
