---
layout: "post"
author: 
  - "acrepet"
title: "Soirée Gradle/Maven 3 au Lyon Jug (23/11)"
date: "2010-11-16"
categories: 
  - "les-conferences"
tags: 
  - "gradle"
  - "lyon-jug"
  - "maven"
  - "maven3"
---

| Le prochain Lyon JUG va ouvrir son ring, le 23 novembre prochain, à Grégory Boissinot, dans le rôle du défenseur de Gradle et à Arnaud Héritier pour présenter Maven 3. Pour vous donner envie d’assister au combat, petit aparté dans les coulisses avec chacun d’eux. On commence par Arnaud Héritier, membre des communautés Apache Maven et Codehaus Mojo et auteur du [livre Apache Maven](http://www.pearson.fr/livre/?GCOI=27440100730370), avec quelques questions autour de Maven 3… |

![maven](/assets/2010/11/2010-11-16-soiree-gradlemaven-3-au-lyon-jug-2311/maven-inside.png)

**Agnès : Avant de rentrer dans le détail, quelles sont les grandes évolutions de Maven 3 vis-à-vis des précédentes versions 2.X?**

_**Arnaud :** Si on se limite à Maven 3.0 les utilisateurs vont être déçus car en surface il n’y a pas grand chose. La grosse nouveauté de la version 3.0 reste le mode multi-threadé qui permet d’exécuter la construction des modules en parallèle en fonction de leurs contraintes d’ordonnancement (pensez à mettre à jour vos plugins avant de tester cette fonctionnalité afin de ne pas avoir de bug ou de comportement étrange).  
Dans les petits plus on retrouve un meilleur rapport sur les erreurs dans les descripteurs de projets et lors de l’échec du build. La gestion des dépendances et la résolution des conflits de versions et de la transitivité ont aussi été revues afin d’apporter une meilleure stabilité.  
Enfin les performances ont été légèrement améliorées (tout dépend ensuite du projet lui même et des plugins utilisés).  
Si l’utilisateur n’y voit donc pas beaucoup de changement c’est que les grosses évolutions de la version 3.0 sont ailleurs : sous le capot. Le moteur a été en grande partie réécrit pour permettre une bonne évolutivité à l’avenir que ce soit au niveau de ce noyau, de la gestion des descripteurs ou des plugins.  
Cette version 3.0 n’est donc pas révolutionnaire pour l’utilisateur final en lui-même mais ouvre de nombreuses possibilités dans un avenir proche.  
Et la chose importante à noter est la conservation de la compatibilité avec les projets Maven 2 à 99,999….%. L’équipe a fait de gros efforts la dessus afin de permettre à la communauté de migrer le plus rapidement possible sur cette nouvelle version et de bénéficier des grandes nouveautés qui se préparent mais qui ne verront le jour que pour Maven 3.x.  
_

**Agnès : Avec Maven 2, le partage de configuration ne pouvait se faire que par héritage de pom, pouvez-vous nous décrire l’intérêt des “POM mixins” de Maven 3 vis-à-vis de ce point?**

_**Arnaud :** Effectivement aujourd’hui l’une des grosses limitations des descripteurs actuels est le fait qu’ils ne permettent d’avoir qu’un héritage simple.  
De ce fait lorsque l’on est dans une entreprise (ou dans une organisation qui gère plusieurs projets) si l’on veut pouvoir capitaliser dans la prédéfinition de la configuration des projets on ne peut envisager qu’un mécanisme à base d’un parent unique (avec potentiellement une sous-hiérarchie) qui a le gros désavantage de ne pas être modulaire.  
On en vient à mélanger dans ce dernier des choux (informations sur l’environnement de build, repositories ..) et des carottes (paramétrage des projets et plugins) et la maintenance de ce dernier devient délicate (il ne faut pas le faire trop souvent pour éviter aux projets de décrocher et de rester dans une version préhistorique et il ne faut pas en faire trop rarement non plus pour intégrer les mises à jour utiles par les projets).  
L’autre problème est que cet héritage unique ne permet pas de créer des descripteurs parents par typologie de module. Pour suivre les conventions Maven et bénéficier facilement de tout son outillage comme le plugin release il est nécessaire que le module hérite du parent qui est au dessus de lui dans l’arborescence des modules. De ce fait si dans mon organisation je veux préconiser des paramétrages pour les modules de type JAR via un premier parent et d’autres paramétrages pour les WAR via un autre parent c’est aujourd’hui impossible car tous les modules d’un projet doivent hériter directement ou indirectement du parent du projet en question (cela pourrait être aussi un découpage fonctionnel plutôt que technique).  
Si nous étions en langage objet le contournement le plus répandu pour pouvoir hériter du comportement de deux classes sans le faire par héritage est d’utiliser la délégation. C’est donc ce que l’on va proposer dans Maven (3.1 pour l’instant dans la roadmap de Jason Van Zyl – fondateur du projet), un mécanisme de mixins qui va permettre de réinjecter des morceaux de POMs dans un POM donné. Ainsi si je veux customiser la configuration du plugin XXX pour tous mes projets, je vais déployer ce morceau de descripteur dans mon repository et je vais dire aux projets de l’utiliser. Ainsi ces derniers pourront réutiliser à la fois la configuration d’un POM décrivant l’infrastructure physique, un autre lié au type technique du module et un troisième en fonction de son aspect métier. Tout cela permettra de réutiliser la configuration en continuant de capitaliser dessus (C’est un des aspects important de Maven que de permettre de capitaliser les bonnes pratiques).  
_

**Agnès : La gestion des dépendances Maven 2 pose quelques soucis, notamment la gestion des dépendances transitives. Nous sommes parfois amener à tuner les dépendances et leurs exclusions pour éviter les conflits de versions plutôt que de simplement lister la liste complète des dépendances. Maven 3 propose t’il une stratégie différente de gestion des dépendances ?**

_**Arnaud :** Le mécanisme des dépendances à été revu pour gérer un peu mieux la résolution des conflits et la transitivité ce qui devrait quelque peu améliorer les choses. Il est aussi plus ouvert ce qui permettra de faire cohabiter plus facilement des versions à la maven avec des versions a à la OSGi par exemple.  
Cependant rien n’est parfait et beaucoup de problèmes reprochés aux dépendances Maven ne viennent pas du produit lui-même (qui n’est pas magicien et ne peut avoir la science infuse) mais des descripteurs déployés sur les repositories par les projets open-source ou d’entreprises. Combien de fois ne voit-on pas de séparation des APIs et des implémentations dans des modules distincts afin de ne pas forcer l’utilisateur du projet XXX à récupérer l’ensemble des dépendances de l’implémentation alors que ce dernier n’en a peut être pas besoin ? Combien de fois voit-on des scopes mal positionnés, les gens ayant du mal à comprendre le sens et l’utilisation de chacun (faute à nous de mal l’expliquer ou documenter je peux l’admettre).  
Sur tout ces points nous n’avons que peu de marge de manœuvre si ce n’est évangéliser et mieux documenter encore et toujours.  
Du côté outils, les versions 3.x vont enfin nous permettre de faire évoluer le modèle de descripteur de projet sur la forme (ceux qui détestent le XML pourront l’écrire dans un autre langage, cf [http://polyglot.sonatype.org/](http://polyglot.sonatype.org/) fournit par Sonatype) et sur le fond (nous allons pouvoir rajouter de nouveaux éléments dans le modèle). Ainsi nous allons rajouter dès que possible la capacité d’exclure globalement des dépendances pour tout le projet/module. Cela ne réglera certes pas le problème de base qui est la mauvaise qualité des descripteurs existant mais cela devrait grandement faciliter la vie de leurs utilisateurs qui auront moins à pâtir de ces problèmes.  
_

**Agnès : La gestion des plugins maven est toujours assez compliquée… (plugins disponibles en version beta, voir alpha!). Est-il prévu de modifier cette gestion des plugins (en distinguant les plugins en incubation des plugins stables par exemple)?**

_**Arnaud :** Il y a déjà eu des gros efforts ces derniers mois pour sortir des cycles interminables d’alpha/beta tous les plugins gérés directement par l’équipe Maven (cf [http://maven.apache.org/plugins/index.html](http://maven.apache.org/plugins/index.html)).  
Des travaux sont en cours en ce moment sur le sujet pour justement faire du ménage sur ceux qui ne vivent plus (faute de besoin ou de ressources). Pour ceux que l’équipe ne saurait maintenir par elle même mais qui restent utiles, nous envisageons de les déporter dans des espaces où la communauté est plus ouverte comme mojo.codehaus.org ou github.  
Il restera la question du référencement de tous les plugins existants. Pour l’instant ce sujet avance peu mais il y a tout de même beaucoup de travaux concernant la gestion du repository central et il serait envisageable que ce soit ce dernier qui puisse offrir aux utilisateurs un catalogue complet des plugins disponibles.  
_

**Agnès : Dernière question sur les axes stratégiques de Maven… Hormis le processus de build à proprement dit (compilation+TU+packaging), quel est le périmètre fonctionnel visé par Maven :**

- **Couverture de code, JavaDoc, PMD, etc. devrait-il être de la responsabilité de Maven ou d’outils comme Sonar ?**

_**Arnaud :** Ce qui est assez paradoxal aujourd’hui c’est que ce qui a lancé Maven face à Ant il y a 10 ans c’était cette gestion intégrée de tout l’aspect qualitatif des développements. Aujourd’hui il est vrai que cet axe est en perte de vitesse car d’autres outils externes, plus puissants mais bien intégrés comme sonar le font très bien. A mon avis tout ce qui est reporting sur la qualité va doucement disparaitre au profit de Sonar qui contrairement au site web statique généré par Maven gère en plus l’historique. Par contre les plugins de gestion de la qualité continueront à évoluer (peut être en s’intégrant eux-mêmes nativement au serveur sonar) pour permettre de mettre des règles bloquantes au niveau de l’intégration continue (Non, Non, je ne veux pas de catch vide !!!). Cela ne veut par contre pas dire que l’aspect site documentaire de Maven va disparaitre car lui peut avoir un véritable intérêt.  
_

- **Le déploiement automatisé (plugin Cargo, Tomcat, SQL, etc.) devrait-il être de la responsabilité de Maven?**

_**Arnaud :** Aujourd’hui le mouvement devops remet au gout du jour toute cette problématique de déploiement continue. Il y a de nombreux threads récemment à ce sujet ([voir ici](http://www.lucasward.net/2010/11/maven-and-continuous-delivery.html) ou [ici](http://www.lucasward.net/2010/11/maven-and-continuous-delivery.html)). Je ne suis pas certain que Maven doivent fournir tout l’outillage nécessaire car il s’agit d’un service spécifique. En général on va mettre cela en place sur un serveur dédié utilisant hudson ou un autre outil d’intégration continue. Ca n’est pas le développeur qui fera le déploiement en continu, cela pourrait donc être un service de ces serveurs.  
Du coté développeurs il a aussi besoin de déployer son application pour travailler dessus mais l’avenir devrait être à une intégration des IDE (même si ce n’est pas gagné aujourd’hui avec eclipse/WTP) et des outils comme JRebel. Il n’est pas possible de parler de productivité si les développeurs doivent à chaque changement d’une virgule lancer une commande maven dans un shell et attendre le redéploiement complet de l’application web. Maven doit être présent dans l’environnement de développement mais complètement intégré à l’IDE pour le rendre transparent.  
Pour moi cela n’est donc pas une priorité mais il y a cependant des personnes comme Sonatype ou MaestroDev qui travaillent sur ce sujet afin de fournir une intégration complète entre l’environnement de développement, le build, la distribution des binaires et leur déploiement (ex: [Developer Onboarding](http://www.sonatype.com/videos---developer-onboarding.html), [Proviso](http://cms.sonatype.com/content/managing-runtimes-proviso), [Maestro3](http://www.maestrodev.com/))_

Merci à Gérald Quintana et Jean-Baptiste Nizet pour leurs conseils quant à la préparation de cet interview.  
**Inscriptions et informations pratiques sur la soirée sur la [page officielle du Lyon JUG](http://www.lyonjug.org/evenements-a-venir/gradle-maven3)**
