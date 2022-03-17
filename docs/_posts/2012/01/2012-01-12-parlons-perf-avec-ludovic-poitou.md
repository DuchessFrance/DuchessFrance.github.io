---
layout: "post"
author: 
  - "acrepet"
title: "Parlons perf avec Ludovic Poitou!"
date: "2012-01-12"
categories: 
  - "les-conferences"
tags: 
  - "lyon-jug"
  - "performance"
---

| [![Blog de Ludovic Poitou](/assets/2012/01/2012-01-12-parlons-perf-avec-ludovic-poitou/ludo_poitou.png)](http://ludopoitou.wordpress.com/) Le [Lyon JUG](http://www.lyonjug.org/) accueille, le 17 janvier prochain, Ludovic Poitou pour un talk intitulé _Performance des serveurs en Java : l’expérience du projet [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java")_. Ludovic Poitou est chef de produit sur [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java"), un serveur d’annuaire LDAP écrit en Java, et directeur de [ForgeRock](http://forgerock.com/) France. Il a travaillé en tant qu’ingénieur de développement pendant 15 ans chez Sun Microsystems où il fut Architecte des produits d’annuaire et Community Manager du projet OpenDS, un service d’annuaire open source en Java. [Agnès Crépet](http://twitter.com/agnes_crepet) et [Alexis Hassler](http://twitter.com/AlexisHassler), tous deux membres de la team du [Lyon JUG](http://www.lyonjug.org/) ont posé quelques questions à Ludovic, pour vous mettre l’eau à la bouche avant sa session à Lyon ! |

**Agnès & Alexis: Peux-tu te présenter? Quel est ton parcours professionnel et quelles sont tes activités aujourd’hui au sein de [ForgeRock](http://forgerock.com/)?**

**Ludovic**: Bonjour, je m’appelle Ludovic Poitou et je suis chef de produit chez [ForgeRock](http://forgerock.com/). J’ai une formation universitaire : un Magistère en Informatique et Sciences de l’Ingénieur, obtenu à l’Université de Nice Sophia Antipolis (formation qui existe encore sous l’enseigne Polytech Sophia-Antipolis après s’être appelée ESSI). J’ai commencé ma carrière dans une startup dans le domaine des serveurs de messagerie et d’annuaires, E3X, rachetée par TéléSystèmes puis Sema (maintenant Atos). En 1995, j’ai été embauché comme développeur logiciel chez Sun au centre Recherche et Développement de Grenoble, où j’ai principalement travaillé sur les serveurs d’annuaire LDAP, aussi bien au niveau produit (Sun Directory Server) que standardisation à [l’IETF](http://www.ietf.org/), ou sur l’évangélisation de projets open sources comme OpenDS.  
Après 15 ans, et suite au rachat par Oracle, j’ai rejoint [ForgeRock](http://forgerock.com/) en tant que chef de produit pour les produits d’annuaire et le projet [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java"), et directeur du centre recherche et développement en France, basé à Grenoble.

**Agnès & Alexis: Tu vas aborder la problématique des performances en Java dans ta session pour le LyonJUG. Question simple pour commencer : imaginons que je me rende compte un matin que mon application que j’ai mise en production la semaine dernière s’exécute de plus en plus lentement sur son serveur Tomcat. Quels sont les outils que tu utilises pour mesurer les performances d’une application Java en production, et quels sont les métriques sur lesquels tu vas particulièrement te concentrer ? Au niveau de la JVM, Quels sont les règlages à faire en priorité dans ma JVM ?**

**Ludovic**: Tout d’abord, je vais parler de performances du serveur en Java, et pas des applications qui tournent dans un serveur d’application, tel que Tomcat. Mon expérience s’appuie sur le projet [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java"), qui est un serveur d’annuaire LDAP écrit en Java. Dans notre cas d’utilisation, nous avons deux critères principaux : le nombre d’opérations exécutées par secondes, et le temps de réponse. Pour mesurer cela, nous avons nos propres outils de charge LDAP qui produisent des statistiques en temps réel, mais aussi les statistiques du serveur lui-même.  
Et dès qu’il s’agit de commencer à regarder comment se comporte la JVM, nous utilisons les outils standards Java, en priorité le log du Garbage Collector, et JConsole.  
Donc, au niveau de la JVM, les premiers réglages sont définir la taille minimum et maximum de la JVM et activer le log du GC.

**Agnès & Alexis: Le garbage collector G1 est apparu assez récemment. Est-il vraiment mature, début 2012 ? Est-ce qu’il doit devenir le GC par défaut, remplaçant tous les autres ? En particulier, le CMS a-t-il encore un raison d’être ?**

**Ludovic**: Lorsque je travaillais encore chez Sun (avant Septembre 2010), nous étions en relation régulière avec l’équipe HotSpot et plus particulièrement Tony Printezis qui développait G1. Notre serveur d’annuaire avait été intégré dans une suite de tests automatiques de toutes les JVMs, et a énormément servi pour stresser G1, principalement avec des JVM de 16 à 64 GB. Nous avions d’ailleurs des versions de développement de la JVM pour nos propres tests, qui se révélaient prometteurs. Mais avec le rachat par Oracle et la réorganisation qui s’en ait suivi, j’ai l’impression que G1 a été mis de coté temporairement. Les quelques tests que nous avons fait avec les dernières mises à jour de Java 6 et avec Java 7 à sa sortie n’ont pas été probants.  
Par contre, nous avons vu une flopée de correctifs sur G1 apportés dans Java 7 update 2 et nous sommes encore en train de faire des tests pour voir si G1 peut être utilisé en production.  
Pour résumer, mature, probablement pas encore. Et donc CMS a encore des raisons d’être.

**Agnès & Alexis: Que penses-tu de la suppression annoncée du Perm Space (inspirée de JRockit et de la JVM d’IBM) dans les releases à venir de la JVM V7? Pourquoi était-il utile par le passé et plus maintenant ?**

**Ludovic**: Le PermGen Space est un espace mémoire de la JVM qui sert/servait à stocker les méta-données concernant les classes utilisateurs. Sa taille est devenu un problème récurrent avec tous les serveurs d’application qui chargent et déchargent les classes des applications. Personnellement, avec [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java"), nous ne nous en sommes jamais vraiment préoccupés.  
Ces méta-données sont toujours nécessaires, et donc elles ont été déplacées de la pile Java à la pile native. Cela permet de simplifier la tache du GC, mais va obliger les administrateurs à surveiller la taille du process natif pour éviter que la JVM swappe.

**Agnès & Alexis: Récemment au lyonJUG nous avons proposé une session “Architecture stateful vs stateless”. En terme de performances, penses-tu qu’une architecture stateless soit réellement plus scalable qu’une architecture stateful (notamment parce qu’on s’évite le problème de synchronisation de sessions entre plusieurs serveurs)?**

**Ludovic**: J’avoue ne pas avoir vraiment d’opinion sur le sujet, ni de réelle expérience. Le protocole LDAP est un protocole connecté et qui garde l’état d’authentification. Donc nous sommes obligatoirement amenés à travailler en stateful.

**Agnès & Alexis: Le “scale-out” est-il plus efficace que le “scale-in” pour une application Java ?**

**Ludovic**: Cela dépend vraiment de l’application et de son modèle.  
Si on regarde les serveurs d’annuaires, ils sont construits autour d’une base de données spécialisée (un B-Tree) et donc sont plus orientés scale-up. Mais depuis longtemps, le scale-out est disponible pour les opérations de lecture grâce a la réplication des données, souvent une fonctionnalité intrinsèque au produit.  
[OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java") est donc dans un modèle scale-up, avec une réplication multi-maître pour la disponibilité.  
Sun Directory Server, le serveur sur lequel je travaillais avant OpenDS et [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java"), est déployé chez quasiment tous les opérateurs télécom avec plusieurs dizaines de millions d’utilisateurs, le plus gros ayant 120 Millions d’entrées dans leur service d’annuaire. Nous avions fait un “Proof of Concept” de scale-out pour un client qui voulait un annuaire avec 420 Millions d’entrées, en distribuant les données sur plusieurs serveurs d’annuaires et une couche de proxy LDAP pour faire le routage. Les résultats étaient impressionants en terme de performance, mais le coût hardware de la solution rédhibitoire !

**Agnès & Alexis: Tu vas nous parler d’[OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java") . Peux-tu présenter brièvement cette solution? Comment se démarque-t-elle d’autres solutions comme Apache Directory ou OpenLDAP. Ayant démarré comme un fork d’OpenDS, comment les deux solutions évoluent-elles en parallèle aujourd’hui?**

**Ludovic**: [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java") est un serveur d’annuaire LDAP écrit en Java, qui est très complet fonctionnellement, offre de très bonne performances, mais surtout est simple à déployer et administrer. Au départ, il a été conçu chez Sun Microsystems pour remplacer le produit Sun Directory Server, écrit en C (hérité de Netscape Directory Server), mais qui avait une conception datant de plus de 15 ans.  
Par rapport à Apache Directory, [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java") est vraiment orienté entreprises, avec un aspect qualité et fiabilité mais surtout conçu pour de gros volumes avec des besoins de performance.  
Par rapport à OpenLDAP, [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java") apporte de la simplicité, la portabilité grâce à Java (le serveur et ses données sont indépendants du matériel et de l’OS). Et une compatibilité ascendante, surtout au niveau réplication, ce qui permet de faire évoluer les serveurs sans interruption de service.  
Pour ce qui est d’OpenDS, les équipes qui travaillaient dessus chez Oracle ont été redéployées, et le projet n’évolue plus. Oracle a sa propre fork propriétaire et a annoncé un produit basé sur OpenDS : Oracle Unified Directory. Ce qui en fait le 4eme produit d’annuaire chez Oracle, et je doute de leur stratégie a ce sujet.  
De notre coté, le développement d’[OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java") continue en open source, et une grande partie de la communauté d’OpenDS nous a rejoint. Nous avons d’ailleurs eu plus de contributions en 2011 que pendant les 4 ans de développement d’OpenDS.

**Agnès & Alexis: Vous avez pris le parti de sortir fréquemment des releases [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java"). Quel est votre processus d’intégration et de livraison (outils, méthodes)?**

**Ludovic**: Depuis le début d’OpenDS, notre usine logicielle s’appuie sur Ant. Nous utilisons [Jenkins CI](http://jenkins-ci.org/) pour l’intégration continue et les tests automatiques. Nous avons près de 30000 tests unitaires, écrits avec [TestNG](http://testng.org/), qui sont lancés à chaque build et encore quelques milliers de plus la nuit. Nous avons toute une suite de tests fonctionnels (environ 2800 tests) qui sont exécutés aussi toutes les nuits dans un framework basé sur Stax.  
Le cycle de livraison est celui que nous utilisions chez Sun. Préparation du build et vérification par les suites de tests automatiques, puis suit une phase de tests par l’équipe de QA pour couvrir certains aspects comme le GUI, les tests de conformité LDAP, de stress…  
Enfin, la mise en place sur le site web est manuelle. [OpenDJ](http://opendj.forgerock.org/ "OpenDJ, the open source LDAP directory services in Java") est disponible sur forme de Zip, de package SVR4 (pour Solaris) mais aussi avec un installeur en Java Web Start. Et avec la prochaine version, nous devrions rajouter les packages RPM et Debian.  
Nous travaillons aussi à mettre notre processus de livraison sur Maven, afin de faciliter l’intégration avec les autres projets de ForgeRock ou d’ailleurs. Le Toolkit LDAP qui inclut une librairie LDAP cliente et des outils de tests est déjà entièrement sous Maven.

##### **Merci Ludovic!**

**[Les inscriptions pour la session de Ludovic au Lyon JUG le 17 janvier sont ouvertes !](http://www.lyonjug.org/evenements/perf-serveur)**
