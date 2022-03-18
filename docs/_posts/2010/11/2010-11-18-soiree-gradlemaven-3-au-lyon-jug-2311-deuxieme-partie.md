---
layout: "post"
author: 
  - "acrepet"
title: "Soirée Gradle/Maven 3 au Lyon Jug (23/11)&#8230; deuxième partie!"
date: "2010-11-18"
categories: 
  - "les-conferences"
tags: 
  - "gradle"
  - "lyon-jug"
  - "maven"
  - "maven3"
---

| Comme nous vous l’avions déjà mentionné en début de semaine, les speakers du prochain Lyon JUG, le 23 novembre prochain, seront Grégory Boissinot et Arnaud Héritier. Ils présenteront respectivement Gradle et Maven 3. Pour vous donner envie d’assister à la session, nous avions posé [quelques questions à Arnaud sur Maven 3](http://jduchess.org/duchess-france/blog/soiree-gradlemaven-3-au-lyon-jug-2311/), aujourd’hui nous nous tournons vers Grégory, expert de l’intégration continue chez [Zenika](http://www.zenika.com) et évangéliste Gradle… |

**Agnès : Alors, en quelques mots, comment peut-on définir Gradle? Pourquoi dit-on qu’il s’agit d’un système de build de “troisième génération”? Maven est-il relégué à la seconde génération?**

_**Grégory:** Gradle est un système de build écrit en Java et Groovy pour la construction (le build) des projets Java, JEE, Groovy, OSGI et Scala. Gradle est dit système de troisième génération car d’une part il arrive après l’ère des systèmes de première et deuxième génération autour de ANT /Ivy et Maven. Il a été bâti en gardant les meilleures fonctionnalités sans les inconvénients des systèmes précédents. Et d’autre part, Gradle offre une nouvelle approche en étant spécialement conçu pour adresser les besoins de l’entreprise. A l’inverse Maven prévaut un ensemble de standards et de conventions que les applications doivent adopter pour utiliser Maven. Malheureusement dans la réalité, les besoins des projets sont très spécifiques et Maven n’offre pas une aussi très grande richesse de personnalisation de son build que Gradle. De plus, il existe de très nombreux projets existants, conçus avant Maven, et qui ne peuvent pas migrer à Maven de par leurs spécificités. Afin de ne pas laisser pour compte tous ces projets, Gradle expose directement une API publique lui permettant d’offrir un grand niveau de personnalisation. Et comme on ne peut pas anticiper tous les besoins, l’API de Gradle est très extensible afin de permettre à l’intégrateur la mise en place en place de son propre modèle de build.  
Par exemple, Gradle propose un système qui permet à l’utilisateur final de ne pas exécuter certaines parties de son build (techniquement par la désactivation de taches, possible nativement par l’affectation de la propriété enabled à false), sans une connaissance approfondie de l’outil et donc sans avoir besoin d’un expert du build. En comparaison, avec Maven, il est nécessaire d’ajouter des éléments de configurations dans les plugins Maven. Et avec Ant, cela nécessite une prise en compte préalable à travers des propriétés. Gradle s’amène également avec de nombreux concepts comme un outil de gui ou son wrapper pour faciliter l’installation de Gradle sans besoin d’administration.  
Et c’est tous ces éléments qui font de Gradle un système de troisième génération.  
Depuis quelques mois la nouvelle mouture de Maven, Maven 3 est sortie. Malgré une réécriture complète du noyau de l’outil pour gagner en performance et un peu en extensibilité, celui-ci est encore trop fortement lié aux concepts de Maven 2 en proposant une structure rigide au lieu d’un modèle (via une API) extensible afin d’adresser l’ensemble des spécificités des projets. C’est pourquoi, à l’inverse de Maven, ce n’est pas au projet de s’adapter au système de build mais c’est le système de build, Gradle, qui s’adapte à vos besoins, à vos spécificités, le tout dans une approche déclarative et concise pour faciliter la maintenance sur le long terme._

**Agnès : Au sein d’une entreprise, puis-je faire cohabiter facilement Maven et Gradle? Si je dispose d’un repository d’entreprise stockant tous les artefacts de l’entreprise, un projet géré par Gradle peut-il continuer à récupérer ses dépendances au sein de ce repository?**

_**Grégory:** Les fonctionnalités de Gradle en font un véritable système de build offrant une alternative complète et mature vis-à-vis des systèmes de build actuels comme Maven.  
Néanmoins devant la forte utilisation de Maven et de son écosystème sur le marché, Gradle a été conçu pour s’insérer dans une infrastructure existante à base de Ant, Ivy et Maven.  
Et dans ce mode d’utilisation, Gradle offre la flexibilité et la souplesse manquantes dans votre outillage actuel.  
Par rapport à la question, prenons l’exemple de l’insertion dans une infrastructure Maven.  
Avec Maven, vous avez deux niveaux d’infrastructure. Le premier niveau concerne un projet Maven constitué d’une arborescence standardisée et d’un ou plusieurs descripteurs de build Maven. Le second niveau d’infrastructure concerne le repository Maven. Il s’agit d’un dépôt d’artefacts ayant pour vocation de regrouper toutes les librairies Maven. Ces librairies Maven s’accompagnent de métadonnées permettant une identification unique des artefacts._

_Concernant le premier niveau, Gradle utilise par défaut les mêmes conventions que Maven, c’est-à-dire un répertoire dédié pour le code source de production, les ressources de production, le code source des tests et ainsi de suite.  
Pour le second point, il n’y a pas non plus de problèmes car l’outil Gradle délègue sa gestion de dépendance au système Ivy. Celui-ci est un gestionnaire de dépendances très évolué capable de requêter un dépôt Maven. De plus, Gradle utilise les Maven Ant Task (un bout de Maven) pour déployer ses artefacts dans un repository Maven avec la métadonnée Maven associée. Sur ce dernier point, l’utilisation de Maven pour le déploiement garantit à Gradle une génération des artefacts Maven 100% compatible avec un écosystème existant comme un repository Manager Maven (tel que Sonatype Nexus, Jfrog Artifactory, Apache Archiva) capable d’administrer uniquement des repositories Maven.  
Ainsi, Gradle est capable de lire et d’écrire dans un repository Maven nativement, sans configuration particulière.  
Cette fonctionnalité est très intéressante car elle permet de garder un repository Maven commun à l’organisation ou à l’entreprise avec des projets ou des applications qui utilisent en fonction du besoin soit Maven soit Gradle.  
_

**Agnès : Aller, c’est décidé, je veux essayer d’utiliser Gradle… Bon, comment attaquer? Si j’utilise Maven sur un projet existant, est-ce compliqué de migrer de Maven à Gradle? Je démarre from scratch ou existe-t’il un équivalent au plugin maven archetype qui permet de générer un squelette d’application pour démarrer? Et puis-je facilement intégrer mon projet dans un processus d’intégration continue, en l’occurrence de préférence avec un des outils déjà en place dans mon entreprise, par exemple Hudson?**

_**Grégory:** Il n’existe pas malheureusement pas pour le moment d’archetype (template de projet) Gradle. Je l’avais proposé à son créateur Hans Dockter il y a maintenant presque 2 ans, mais par manque de temps, cela ne s’est pas fait. Cette fonctionnalité sera certainement fournit prochainement.  
Oui, Gradle s’intègre parfaitement avec vos serveurs d’intégrations comme Hudson. Concernant ce dernier, il existe un plugin Hudson pour ordonnancer des chaines de build Gradle. Ce plugin permet d’ajouter des étapes Gradle à vos processus d’intégration. Et il est également doté d’une fonctionnalité permettant d’installer Gradle et d’utiliser cette instance si vous essayez d’exécuter Gradle sur un nœud de votre serveur d’intégration continue dans le cas où celui-ci n’est pas préalablement installé et configuré. Cette dernière fonctionnalité est particulièrement intéressante car elle assure une parfaite portabilité de vos builds vis-à-vis de vos machines sur lesquelles s’exécutent ces instances de processus d’intégration.  
_

**Agnès : Gradle s’intègre t’il bien à la plupart des IDE?**

_**Grégory:** L’intégration de Gradle dans les IDE est malheureusement la partie la moins développée de Gradle.  
L’IDE IntelliJ de la société JetBrains a commencé à proposer un support en fournissant un début de la reconnaissance de la syntaxe Gradle et la possibilité d’exécuter son script Gradle depuis l’IDE. Néanmoins, le support de Gradle est encore loin de celui de Maven en n’offrant pas la possibilité par exemple de mettre à jour son classpath dynamiquement lorsqu’on change les dépendances de son projet.  
Et concernant les deux autres principaux IDE que sont Eclipse et NetBeans, il n’y a pas de support de Gradle pour le moment.  
Néanmoins, même si les IDE ne proposent pas encore un support correct de Gradle, Gradle lui-même fournit des plugins permettant de générer les métadonnées pour le support d’un projet Gradle dans l’IDE comme par exemple un plugin eclipse de Gradle générant les fichiers .classpath, .project et le répertoire .settings.  
Similaire, au plugin maven-eclipse-plugin pour la génération des métadonnées Eclipse dans Maven, cela permet à chaque utilisateur d’importer correctement son projet dans Eclipse et de constituer correctement son classpath de compilation et d’exécution.  
A chaque modification de son descripteur de build, il est nécessaire d’exécuter de nouveau la commande de génération des métadonnées de l’IDE.  
Actuellement, les plugins IDE de Gradle sont maintenus et donc intègrent les spécificités des dernières versions de Eclipse et IntelliJ (point positif pour Gradle car ce n’est plus le cas de son petit-frère coté Maven).  
En revanche, je ne sais pas pour combien de temps ces plugins Gradle pour les IDE seront maintenus et pourront intégrer toutes les fonctionnalités des dernières versions des IDE, tout en étant compatibles avec les anciennes versions.  
C’est pourquoi, à terme, le support coté IDE (à travers des plugins de l’IDE) de l’outil de build Gradle est la meilleure approche et fournira une intégration plus native.  
Malgré tout, nous pouvons nous poser la question de l’urgence d’un tel support dans les IDE. En effet, Gradle, comme tous les outils de build est un outil de construction des applications, utilisé au moment de l’étape d’intégration de son projet. Ainsi, pourquoi un outil conçu pour les intégrateurs devrait-il aussi adresser les développeurs et leurs outils de travail quotidien qui est l’IDE ?  
De mon point de vue, sur des grosses équipes de développements et suivant un modèle de développement JEE, je recommanderais de ne pas déployer l’outil de build sur chaque poste de développement mais uniquement sur les postes des intégrateurs. Les développeurs utilisent alors uniquement les fonctionnalités très avancées et entièrement suffisantes de leur IDE pour l’implémentation de l’application et les éventuelles taches de micro-déploiement.  
_

**Agnès : Hibernate a migré de Maven à Gradle. Un des lead programmer d’Hibernate, Steve Ebersole, explique notamment que le processus de release avec Maven était particulièrement lourd (je le rejoins sur ce point!), comment Gadle assouplit les releases de version?**

_**Grégory:** Oui, dans la prochaine version de Hibernate, c’est à dire Hibernate 4, c’est l’outil de build Gradle qui sera utilisé pour construire les différentes librairies. Cela va permettre à l’équipe Hibernate de d’offrir la souplesse nécessaire et d’épouser au plus près leurs besoins.  
L’utilisation de Gradle sur le projet Hibernate va apporter une très grande notoriété à Gradle et permettre espérons-le d’accélérer la mise à disposition des nouvelles fonctionnalités prévues.  
En ce qui concerne le processus de livraison de Maven (la release), il s’agit en effet souvent d’un processus souvent lourd et laborieux.  
De manière simplifiée, le principe est de prendre en en entrée un projet Maven qualifié en phase de développement (à travers l’utilisation du mot clé SNAPSHOT dans la valeur de sa version).  
Puis, Maven applique un ensemble de contraintes et lance la phase de construction du produit qui sera la version livrée. Le processus de release s’accompagne d’un dialogue étroit avec le système de gestion de configuration logicielle en place sous lequel est géré le projet Maven. Par exemple, dans le cadre de Subversion, Maven pose des tags, met à jour les descripteurs Maven contenant les versions livrées et la valeur de la prochaine version.  
Ce principe souffre de nombreuses contraintes.  
Premièrement, ce processus est figé et suit un cycle de livraison précis, peu modifiable et ne correspondant pas nécessairement au processus de livraison imposé par l’entreprise.  
Par exemple, pourquoi reconstruire un produit qui a déjà été validé par des équipes de test. En effet, au moment de l’exécution du processus de livraison, l’ensemble des tests unitaires et des tests d’intégration sont exécutés. Mais cela n’est pas suffisant et il manque tous les autres tests. Malgré l’extrême prudence dans la traçabilité avec en particulier l’outil SCM, on peut se demander pourquoi reconstruire ?  
Un processus classique consiste généralement à produire un ensemble de versions (généralement suffixé d’un timestamp) de son application, puis ces différents binaires sont envoyés à des équipes de tests qui qualifient le produit selon différents critères préalablement établis et c’est ensuite eux qui décident quelle version sera envoyée en production. Mais dans la chaine de livraison, il n’y aura à aucun moment une reconstruction du logiciel car on ne peut pas garantir que cela soit le même binaire et cette reconstruction semble injustifiée, pas nécessaire. De nouveau, en imposant un processus établi à l’avance, Maven n’adresse pas des milliers de projets industriels.  
Et d’autre part, ce mécanisme de livraison de Maven est trop lié, fortement couplé à l’outil SCM. Dans le cadre de Subversion, il n’y a pas beaucoup de problèmes car il s’agit uniquement d’un outil de gestion de révisions. L’outil ne fournit aucun processus logiciel et ainsi, il est facilement possible d’interagir avec Maven qui pilote la version et constitue les tags. Mais pour d’autres outils de gestion de configuration logicielle comme Clearcase, c’est l’outil lui-même qui dicte les éléments livrés et la version du produit. Ainsi, ce n’est pas Maven qui détermine la version et produit les éléments de traçabilités dans la gestion de configuration logicielle, mais à l’inverse, les éléments de gestion de configuration logicielle sont produits à l’extérieur et fournis en entrée aux outils.  
Maven impose donc un processus de livraison rigide qui rentre souvent en conflit avec les outils en place au niveau de l’équipe.  
Par rapport à ces problèmes, Gradle répond mieux aux besoins des projets en n’imposant pas systématiquement une version, celle-ci est optionnelle. De plus, Gradle n’impose pas de processus de livraison particulier. Gradle va permettre (grâce à son API extensible) de définir un modèle (une dsl) permettant l’implémentation exacte d’un modèle livraison établi par l’équipe.  
_

Merci à Anne-Laure Rigaudon pour son aide sur la préparation de cet interview.  
**Inscriptions et informations pratiques sur la soirée sur la [page officielle du Lyon JUG](http://www.lyonjug.org/evenements-a-venir/gradle-maven3)**
