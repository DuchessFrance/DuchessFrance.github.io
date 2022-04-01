---
layout: "post"
author: 
  - "cfalguiere"
title: "Paris JUG de mai : Build, Share & Deploy jusqu’au bout de la nuit (5)"
date: "2010-05-14"
categories: 
  - "les-conferences"
tags: 
  - "deployit"
  - "paris-jug"
---

| [![Le tirage au sort de l'invitation Jazoon par Ellène](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-5/JUG_20100511_SBD_tirage.jpg "JUG_20100511_SBD_tirage")](http://jduchess.org/duchess-france/files/2010/05/JUG_20100511_SBD_tirage.jpg) |

Pendant la mise en place des speakers de Deployit, le tirage au sort pour l’invitation de developpez.com à Jazoon par  [Ellène Dijoux](http://twitter.com/dijouxellene). 5 personnes ont été sélectionnées. Le résultat définitif sera sur la liste Users du JUG.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

Vous avez partagés vos fichiers, réalisé les livrables. Il reste maintenant une opération assez pénible : déployer sur les plates-formes où seront les utilisateurs, que ce soit en recette ou en production.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

## DeployIt : automatiser les déploiement d’application Java

[Guillaume Bodet](http://www.parisjug.org/xwiki/bin/view/Speaker/GuillaumeBodet) et Benoit Moussaud nous ont présenté [Deployit](http://www.xebialabs.com/deployit-automated-deployment-java-applications) de l’éditeur XebiaLabs. Une présentation plus calme mais toujours très professionnelle.

Ce progiciel commercial est le fruit d’une coopération KLM Air France et capitalise sur des années d’expérience du déploiement d’application Java sur tout types d’environnements.

[![Déployer c'est amener les éléments des boîtes de gauche dans les boîtes de droite](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-5/IMG_0107-300x225.jpg "IJUG_20100511_SBD_deployit1")](http://jduchess.org/duchess-france/files/2010/05/IMG_0107.JPG)

Dans beaucoup de cas, il ne suffit pas de pousser un ear. Il faut transférer un ensemble de composants applicatifs pour que l’application fonctionne dans son environnement : des configuration de ressource JDBC, des providers de sécurité, des fichiers de configuration, des ressources statiques, des mises à jour pour les CDN (Content Delivery Network). La situation peut s’avérer véritablement complexe sur des plates-formes de production avec des clusters et des fermes de plusieurs machines.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

Le produit est bâti sur moteur dans lequel on va déclarer toutes les opérations. Le produit est écrit en Java et déployé sous la forme d’une Web Application. L’IHM est réalisée en Flex, mais il existe aussi des modes de pilotage par ligne de commande et une intégration Maven et Eclipse.

Le moteur embarque des plugins, basés sur une API publique. Les opérations sur les middleware JEE sont fournis de base. Les plugins permettent d’intégrer des composants plus exotiques. Les plugins sont écrits en Java ou en Jython.

Cette API plugin  fait partie du modèle économique.  Le but est de construire une AppStore pour ces plugins et de permettre un partage de revenus pour les fournisseurs de plugins.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Les composants techniques

Le **_Configuration Item Repository_** (ou CIR) est une base de données qui référence toutes les informations sur les environnements. C’est un  CMDB dans une organisation ITIL.

Les **_Runbooks_** encapsulent  primitives sur les middlewares ou les composants techniques cibles.

Au milieu se trouve le **_Moteur de Résolution_**. Il scanne l’application, consulte les environnement et calcule un scenario a partir des runbooks. Le moteur les assemble dans un scénario plus complexe.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Le processus

_**1er concept – l’application**_ : Le truc qu’on veut déployer, c’est à dire une application  livrée, un ear, un war et tout le bazar

_**2ème concept – l’environnement**_ : c’est un ensemble de middlewares, serveurs d’applications, serveurs web … plus ou moins compliqué

_**3ème concept – le déploiement**_ : il associe les 2 via le moteur de résolution qui calcule ce qu’il faut  faire

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Autres caractéristiques techniques

Deployit est **_agentless_**.

Les opérations se font à distance sans déploiement d’agents sur les cibles en utilisant des protocoles standards (ssh, scp, jmx, jdbc, etc) ou les outils de management intégrés des serveurs d’applications (Twiddle pour JBoss,  wsadmin pour WebSphere Application Server, wstl pour Weblogic). Il requiert  ssh sur la machine distante. C’est standard sous UNIX/Linux mais peut poser problème sous Windows. Toutefois sous Windows Deployit peut fonctionner sur smb (Samba) et telnet, mais dans des conditions de sécurité dégradées car ces protocoles sont peu sûrs.

Il **_trace_** toutes les opérations effectuées.

[![La démo de Deployit par Benoît Moussaud, Selenium teste](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-5/IMG_0111-300x225.jpg "JUG_20100511_BSD_deployit2")](http://jduchess.org/duchess-france/files/2010/05/IMG_0111.JPG)

Il est extensible et **_customisable_** via les plugins pour s’adapter aux processus des entreprises car chacune à des processus légèrement différent des autres.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### La démo

Benoit Moussaud a décidé de nous faire une démo de l’intégration Maven et non pas de l’IHM.

Le but est de réaliser les étapes suivantes dans un serveur d’intégration continue Hudson : builder une application (le bien connu Pet Clinic), la déployer avec sa DataSource sur deux plates-formes, réaliser un test fonctionnel avec Selenium, un test de performance avec JMeter et reporter le résultat dans Hudson. A la fin des tests les cibles sont nettoyées. Benoit nous montre qu’en définissant le plan de déploiement il est possible de déployer son application assez facilement grâce à des profils défini dans deployit.

Le plugin ajoute Deployit deploy dans la phase intégration test de Maven.

Les étapes à suivre sont décrites dans le plan de déploiement par du XML. Par exemple pour la plate-forme de test  fonctionnel avec Selenium  : 1 war tomcat 1 machine Associe des ressources middleware type JDBC

Les runbooks indiquent au moteur de résolution que pour déployer le war et faire le test  il doit : arrêter Tomcat / attendre / déployer le war / démarrer / Executer  Selenium / désinstaller le war et éventuellement retirer la ressource JDBC si elle n’est utilisée par personne / arrêter Tomcat

<table border="0"><tbody><tr><td></td></tr></tbody></table>

[![Et un pas de salsa de Guillaume Bodet pour finir](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-5/IMG_0113-300x225.jpg "JUG_20100511_SBD_deployit3")](http://jduchess.org/duchess-france/files/2010/05/IMG_0113.JPG)

La deuxième démo est plus compliquée puisqu’il y a un server web Apache et une base MySql en plus, mais c’est le même principe.

Un produit a considérer si vous avez des déploiements réguliers et complexes plutôt que de bidouiller des scripts.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

### Questions

_**Et si on veut pas payer ?**_

Le socle est payant en version complète mais il existe une version [Community](http://www.xebialabs.com/downloads) téléchargeable gratuitement qui n’a pas le support de la sécurité et n’est donc pas utilisable en production. Cette version permet d’évaluer le produit sur des plates-formes moins sensibles et de mettre au point les plugins. Il est très simple à installer pour test.

XebiaLabs étudie la possibilité de passer le noyau Deployit en Open Source Software.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

Une question a été posée sur l’_**atomicité du déploiement**_. Les ressources ne sont pas transactionnelles. Donc en cas de problème, Deployit revient en arrière en réinstallant la version précédente. Ce qui implique qu’il ne faut jamais faire d’incrémental. On livre tout et le moteur de résolution sautera les étapes inutiles.

Le gros souci est la base. Les scripts de retour en arrière sur les bases de données marchent souvent mal. La recommandation de Guillaume Bodet est d’intégrer dans le processus une image avant de la base de données pour pouvoir restaurer en cas de problème.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

## La 3ième mi-temps

22h, Fin d’une soirée bien remplie. On range les chaises, on plie le matériel. Il ne nous reste plus qu’à partir en 3ième mi-temps.

<table border="0"><tbody><tr><td></td></tr></tbody></table>

Cette fois ci pas de wave. Vous trouverez d’autres comptes rendus là

- [Excilys](http://blog.excilys.com/2010/05/14/compte-rendu-du-paris-jug-soiree-build-share-deploy/)
- [Le Touilleur Express](http://www.touilleur-express.fr/2010/05/12/la-soiree-du-11-mai-2010-au-paris-jug-git-dvcs-et-lexpress-board/)

<table border="0"><tbody><tr><td></td></tr></tbody></table>

A la prochaine ! [![JUG_20100511_SBD_poster3mitemps](/assets/2010/05/2010-05-14-paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-5/JUG_20100511_SBD_poster3mitemps-1024x765.jpg "JUG_20100511_SBD_poster3mitemps")](http://jduchess.org/duchess-france/files/2010/05/JUG_20100511_SBD_poster3mitemps.jpg)

<table width="100%" border="0"><tbody><tr><td style="text-align: left;"><a href="http://jduchess.org/duchess-france/?p=444">Précédent : la présentation Maven 3</a></td></tr></tbody></table>

_Les photos sont de José Paumard et Claude Falguière._
