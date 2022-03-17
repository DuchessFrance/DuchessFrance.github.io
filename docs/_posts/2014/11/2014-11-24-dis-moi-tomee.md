---
layout: "post"
author: 
  - "acrepet"
title: "Dis-moi TomEE..."
date: "2014-11-24"
categories: 
  - "les-conferences"
---

| [![Jean-Louis Monteiro](/assets/2014/11/2014-11-24-dis-moi-tomee/Jean-Louis.jpg)](https://twitter.com/jlouismonteiro)[![Romain Manni-Bucau](/assets/2014/11/2014-11-24-dis-moi-tomee/Romain.jpg)](https://twitter.com/rmannibucau) |

**Deux membres sur de l'équipe [Tomitribe](http://www.tomitribe.com), [Jean-Louis Monteiro](https://twitter.com/jlouismonteiro) et [Romain Manni-Bucau](https://twitter.com/rmannibucau), nous font le plaisir de nous rendre visite au Lyon JUG jeudi 27 novembre. Ils ont même accepté de répondre à quelques questions...** _Cet interview a été préparé conjointement par la team élargie du Lyon JUG: [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat) et [Cyril LACOTE](http://twitter.com/clacote)._

 

**JUG Team : Jean-Louis et Romain, pouvez-vous vous présenter? Quels sont vos parcours et vos activités pro du moment?**

**Romain**: J'ai commencé par travailler en 2010 dans une SSII. Durant ce poste, j'ai eu la chance de pouvoir commencer à côtoyer la communauté Apache avant de l'intégrer en 2011 via le projet OpenEJB (TomEE aujourd'hui). Depuis je continue d'être fidèle à cette communauté en contribuant autant que possible aux projets de la stack "EE" actuelle et future d'Apache mais aussi des projets autour du monitoring (Sirona) voir externe à Apache comme CukeSpace (intégration Cucumber pour Arquillian).

Aujourd'hui je travaillle pour [Tomitribe](http://www.tomitribe.com), société qui s'est créée pour soutenir TomEE et l'Open Source il y a un peu plus d'un an.

**Jean-Louis**: J'ai été diplômé il y a un peu plus de 11 ans. J'ai attaqué avec mon premier job sur Paris dans un laboratoire de l'INSERM, en techno microsoft purement. Un an et demi plus tard, je suis rentré comme software engineer dans un grand groupe, une grande SSII. Un peu particulier comme SSII car on faisait que de la régie. C'était du build to run. Après un premier portail web, j'ai intégré une équipe grand projet ou j'ai pu jouer avec pas mal de techno de l'époque bien sûre. J'ai ensuite évolué vers une équipe transverse pour du conseil, architecture, benchmark et autre. Après quelques années et cette équipe grossissant, mon chef étant amener à piloter un scope plus grand, m'a demandé de la diriger, ce que j'ai accepté. J'ai également beaucoup appris en terme de management et de vision un peu plus large. J'ai neanmoins souhaité revenir sur la filière technique dite d'expertise.

Puis j'ai finalement reçu cette proposition de David Blevins que je connaissais depuis 2006 dans l'open source, pour rejoindre Tomitribe, et qui m'a beaucoup appris et apporté. Tomitribe a un projet ambitieux et excitant. Evidemment, la structure commence et donc il faut être assez polyvalent : fini les cloisonnement entre équipe réseau, système, devops, etc. Ici, il faut se retrousser les manches et savoir tout faire. J'adore également les challenges et donc c'est la raison pour laquelle je m'éclate

 

**JUG Team : Vous allez nous parler de TomEE. En quoi la philosophie de cette solution se distingue des produits JBoss/Oracle/IBM?**

**Romain**: JBoss, Oracle, IBM...construisent des serveurs d'application. TomEE ne fait qu'ajouter à Tomcat ce qu'il lui manque pour en faire un serveur d'application. Cela signifie que fondamentalement on n'invente pas un autre serveur et qu'on tient à rester simple. On est aussi très attaché à l’écosystème autour du serveur et c'est pour cela qu'on fournit parmi les solutions de testing les plus avancées et des plugins maven très complets.

**Jean-Louis**: Comme l'a dit Romain l'approche est différente. Le Gartner avait publié il y a 2 ou 3 ans des stats disant que Tomcat représente plus de 60% des serveurs dans les entreprises. 5 à 7 % pour les websphere, jboss et weblogic par exemple et le reste, pour du nodejs, jetty ou autre.

Cela montre qu'avec la lourdeur de J2EE (à l'époque), les entreprises se sont tournées vers des alternatives plus légères basées sur Tomcat, car il est léger, simple et facile à utiliser en dev mais aussi en prod. Il est également devenu très fiable.

Avec TomEE, on ne souhaite pas proposer un nouveau serveur d'appli dont les entreprises ne veulent pas, sinon elles auraient pris les websphere, jboss et autres.

Ce qu'on veut, c'est proposer aux autres utilisant Tomcat, de pouvoir revenir vers une plateforme standard qui a vraiment beaucoup évoluée vers la simplicité, en conservant leurs habitudes, outillage et tout ce qu'ils ont pu mettre en place en terme d'architecture (pilotage, monitoring, etc).

Aujourd'hui, ils font un app server de projets en projets en mettant des jars dans le web-inf/lib avec beaucoup de limitation par rapport à ce qu'on peut faire avec TomEE, et surtout sans pouvoir tester, maintenir, faire évoluer ni capitaliser.

 

**JUG Team : La fondation Apache avait déjà un serveur d’application, Geronimo. Pourquoi en faire un autre plutôt que d’y contribuer ?**

**Romain**: En fait la ligne n'est pas si franche. Geronimo est un gros projet avec des sous-projets et intègre une partie commune à Apache qu'on réutilise (comme les jars des API EE ou XBean pour le scanning par exemple) mais Geronimo réutilise aussi du code TomEE comme la partie EJB. Le serveur en lui-même reprend les caractéristiques dont je parlais dans la question précédente pour IBM par exemple dont il a été le serveur "gratuit" pendant longtemps. En d'autre termes pour Geronimo, Tomcat est une librairie alors que pour TomEE reste Tomcat. L'approche est donc fondamentalement différente. D'autre part les communautés aussi: TomEE a une communauté incroyablement dynamique alors que Geronimo n'a longtemps été poussé que par IBM.

**Jean-Louis**: Et je dirais qu'IBM s'en dégage. Pas de release depuis plus d'une an et demi, et plus aucune activité presque. En gros, IBM ne propose plus de Websphere CE qui est Geronimo, mais propose à présent plutôt des licences devs gratuite en monoposte pour les devs (à condition d'avoir la machine avec assez d'espace disque et de ram - lol je trolle là).

 

**JUG Team : Quand avez-vous prévu de brancher TomEE sur JavaEE 7? A priori cela semble prévu pour la version TomEE 2.0…**

**Romain**: La branche 1.7.x existe depuis quelque semaines et depuis notre master cible EE 7. On a déjà JSON-P, JBatch, JSF 2.2, WebSocket, JAXRS 2, une grosse partie de CDI 1.1 etc... Une milestone (JavaEE "6.5") est prévu pour début de l'année prochaine.

**Jean-Louis**: On a clairement un souci chez Apache : ce sont les TCKs (ensemble des tests fournit par Oracle pour vérifier la compatibilité EE) avec un litige qui oppose Oracle et Apache d'où le délai pour avoir les TCKs et savoir où on en est par rapport à la cible. Mais comme dit Romain, on prévoit des milestones à venir.

 

**JUG Team : Comment se passe une release TomEE ? Je suppose que vous dépendez des releases de Tomcat. De quels autres projets dépendez-vous ?**

**Romain**: Oui et non. Il y a plusieurs cas. Soit on veut releaser et on a des dépendances snapshots. Auquel cas si tout va bien on demande une release à notre dépendance (Apache spirit :)) soit on ne peut pas avoir la release pour diverses raisons et on "fork" le temps de notre release la version dont on a besoin. Cependant ce n'est qu'une partie du travail car il faut en plus s'assurer que nos tests passent - ce qui prend déjà quelques heures - aussi vérifier les TCKs. Pour ce travail le cloud est le bienvenu.

**Jean-Louis**: Yep, on vise le web profile ++. Cela correspond à une quizaine de specs avec un travail monstre en intégration. Les autres projets comme Tomcat, CXF, OpenJPA, OpenWebBeans, BVal ou autres, ne se soucient pas forcément des impacts dans TomEE. C'est sans doute quelque chose qu'on va essayer de travailler de plus près avec eux. Donc monter une version, n'est pas toujours sans douleur ou sans obligation de fixer derrière car on a cassé, d'ou une grande importance aux tests.

 

**JUG Team : Pour ce travail autour de JavaEE 7, comment effectuez-vous les choix d’implémentations? Par exemple pour JPA 2.1, quelle implémentation choisissez-vous (eclipselink, openJPA, Hibernate?) et comment arbitrez-vous ces choix? Est-ce que vous utilisez forcément des projets Apache ?**

**Romain**: Par défaut on choisit du Apache. Si Apache n'a pas de projet soit on le créé (BatchEE pour JBatch, Johnzon pour JSON-P...) soit on réutilise l'implémentation de référence si possible - en pratique c'est assez rare. Pour JPA la question n'est pas encore tranchée. Personnellement j'aimerais faire évoluer significativement OpenJPA mais ce sera surtout une question de temps je pense. Si ce n'est pas possible on prendra eclipselink car la licence d'hibernate nous empêche de le livrer légalement.

**Jean-Louis**: Après Apache Con EU la semaine dernière, les espoirs sont plutôt bons côté Apache OpenJPA, sinon on fera comme Romain le dit.

 

**JUG Team : Est-ce que Java EE et TomEE ont encore leur place dans un environnement basé sur des micro-services ? (ben oui, il faut un peu de buzz-word dans l’interview ;-) )**

**Romain**: Plus que jamais! Faire un projet avec une classe, 2 annotations JAXRS et le lancer en une commande c'est un des points forts de TomEE. Faire un micro-service avec TomEE est bien plus rapide qu'avec Tomcat car vous n'avez pas besoin de gérer de dépendance et de configurer un autre container ;).

**Jean-Louis**: Cela fait normalement partie de la démo que l'on fait, comme je l'ai fait à Apache Con la semaine dernière. C'est souvent spectaculaire pour les gens car en gros, on download (40Mo seulement) on unzip et on bosse. Pas la peine de télécharger (ou ajouter dans maven) tout un tas de librairies qui ne co-opèrent pas entre elles, ou d'aller sur stackoverflow pour configurer l'entity manager factory, le transaction manager ou cxf dans un application context. Lol, bah oui, faut aussi faire un peu de trolle :p

Pour les micro-service, +1 c'est un buzz word. Pour moi, c'est du bon sens d'architecture, après tu appelles ça micro-service, soa ou ce que tu veux :D

 

**JUG Team : Vous allez également aborder, Sirona, une solution de monitoring java. Qu’est-ce qui la distingue de produits également OSS comme javamelody ou moskito?**

**Romain**: Plusieurs constats sont à l'origine de Sirona: les solutions Java de monitoring ne sont soit pas complétes, soit compliquées à configurer, soit difficiles à étendre pour des besoins maison. D'autre part on n'avait pas chez Apache de solution de monitoring qu'on pouvait intégrer sans avoir à gérer du licensing. La principale force de Sirona est d'être designé (au sens de l'anglais) pour pouvoir marcher "out of the box" en mode embedded ou en mode distribué pour les déploiements plus compliqués. Il a également des points d'extensions un peu partout que ce soit pour récupérer des données ou les afficher dans \*sa\* GUI (évite le multi-tooling). Cependant il ne faut pas croire qu'on est en conflit avec les autres solutions. On parle régulièrement avec javamelody par exemple.

**Merci Romain et Jean-Louis!**

**Les inscriptions pour les sessions de Romain et Jean-Louis sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/tomee)!**
