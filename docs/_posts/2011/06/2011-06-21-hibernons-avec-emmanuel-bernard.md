---
layout: "post"
author: 
  - "acrepet"
title: "Hibernons avec Emmanuel Bernard"
date: "2011-06-21"
categories: 
  - "les-conferences"
tags: 
  - "hibernate"
  - "hibernate-envers"
  - "hibernate-ogm"
  - "hibernate-search"
  - "hibernate-validator"
  - "java"
  - "lyon-jug"
---

| [![@emmanuelbernard](/assets/2011/06/2011-06-21-hibernons-avec-emmanuel-bernard/emmanuelBernard-h114.jpg)](http://twitter.com/emmanuelbernard)Le 22 et 23 juin prochains, deux soirées autour d’Hibernate sont proposées respectivement par [l’Alpes JUG](http://www.alpesjug.org/) et le [Lyon JUG](http://www.lyonjug.org/). Le speaker n’est autre qu’Emmanuel Bernard, un membre de l’équipe Hibernate depuis 2003.  |
Emmanuel a plusieurs casquettes : il est tout d’abord architecte plate-forme données chez [JBoss](http://www.jboss.com/), membre de l’expert group JPA 2.0 et spec lead de Bean Validation. Emmanuel a dirigé l’implémentation JPA d’Hibernate. Il a fondé et dirige [Hibernate Search](http://www.hibernate.org/subprojects/search.html), [Hibernate Validator](http://www.hibernate.org/subprojects/validator.html) et le petit nouveau [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html). Il intervient régulièrement dans diverses conférences et JUGs, dont JavaOne, JBoss World, Devoxx et est le co-auteur d_‘Hibernate Search in Action_ publié par Manning. Il est aussi le fondateur et co-hôte de deux podcasts: [Les Cast Codeurs](http://lescastcodeurs.com) (français) et [JBoss Community Asylum](http://asylum.jboss.org) (anglais).  
Emmanuel présentera deux sessions aux JUGs. La première sera sur [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html). PaaS (Plate-forme as a Service), Cloud, élasticité. Ces mots font le buzz ces temps-ci. Mais le vrai challenge c’est comment et où stocker vos données. Dans un data grid pour bénéficier de la scalabilité? Via une API propriétaire? Est-ce que l’on pourrait utiliser une API familière? L’objectif d’[Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) est d’explorer comment réutiliser Java Persistence et son API familière pour persister les entités dans une base de données non relationnelle.  
Hibernate a bien évolué depuis ses débuts. Il n’est plus un simple ORM mais plutôt un ensemble de projets qui tournent autour du modèle métier. La deuxième session d’Emmanuel sera focalisée sur les différents projets Hibernate comme [Hibernate Validator](http://www.hibernate.org/subprojects/validator.html), [Hibernate Search](http://www.hibernate.org/subprojects/search.html) ou  
[Hibernate Envers](http://www.jboss.org/envers).

Cet interview a été préparé conjointement par [Agnès CREPET](http://twitter.com/agnes_crepet) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat), deux membres de la team du [Lyon JUG](http://www.lyonjug.org/).

**Agnès & Cédric: Lors de la prochaine session du Lyon JUG, tu vas nous parler d’Hibernate OGM, qui permet de disposer d’une implémentation JPA (chouette on est pas perdus, on connait!!!) dans le monde des datagrids NoSQL. Sous quelles impulsions est né ce projet? Quelle est sa maturité à ce jour?**  
**Emmanuel**: Le besoin initial est venu d’[Infinispan](http://www.jboss.org/infinispan). Les utilisateurs d’[Infinispan](http://www.jboss.org/infinispan) demandaient une API de plus haut niveau qui leur permettrait de manipuler des objets à la JPA. On a hésité entre la réécriture de zéro ou l’adaptation du moteur [Hibernate Core](http://www.hibernate.org). J’étais de l’avis qu’[Hibernate Core](http://www.hibernate.org) ne pouvait pas être adapté pour fonctionner sur les modèles non relationnels. Et pour prouver que j’avais raison, j’ai commencé le prototypage de ce qui est maintenant [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html). Évidemment, j’avais tort ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif)  
En travaillant sur le projet et sur la déshydratation des grappes d’objets on a réalisé qu’[Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) pouvait en principe travailler sur d’autres moteurs NoSQL qu’[Infinispan](http://www.jboss.org/infinispan) et on a décidé d’élargir le scope tout en gardant [Infinispan](http://www.jboss.org/infinispan) en implémentation de référence.  
Au même moment, nos travaux sur [Hibernate Search](http://www.hibernate.org/subprojects/search.html), sur [Lucene](http://lucene.apache.org/java/docs/index.html) et le stockage de ses indexes dans [Infinispan](http://www.jboss.org/infinispan) nous a convaincu que l’on pouvait écrire un moteur de recherche dont les indexes étaient stockés dans [Infinispan](http://www.jboss.org/infinispan).  
Ces deux conditions ont permis de résoudre le problème de persistance des entités et le problème de requêtage d’entités.  
[Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) est en release Alpha. Donc à ne pas utiliser pour stocker les comptes bancaires de vos clients.  
Le moteur de persistance est, je pense, relativement stable mais l’on discute encore de la meilleure façon de stocker les données (lisibilité vs taille etc). Je pense que l’on va encore travailler sur ces points donc des évolutions seront à prévoir. Si vos données sont de type court terme (ie. à ne pas relire entre chaque montée de version d’[Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html)), pas de soucis.  
Pour ce qui est du moteur JP-QL, il n’est pas encore là. Cependant, si vous utilisez [Hibernate Search](http://www.hibernate.org/subprojects/search.html) et ses requêtes _full-text_, vous avez quelque chose de stable.

**Agnès & Cédric: Puis-je utiliser [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) avec d’autres solutions NoSQL que Infinispan?**  
**Emmanuel**: Pas encore. Mais cela fait partie de nos objectifs.  
On a travaillé récemment sur l’abstraction du contrat entre [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) et [Infinispan](http://www.jboss.org/infinispan). Tout n’est pas fini mais je pense que le contrat est en bonne voie et sera capable d’abstraire correctement l’interaction avec des NoSQL clef/valeur d’ici peu. Les gens d’[EhCache](http://ehcache.org/) ont travaillé sur un prototype ce qui nous a aidé à clarifier le contrat.  
Les NoSQL de type Document sont les prochains en ligne de mire parce que leur structure est très similaire. Ensuite viendra les NoSQL Column et peut-être les NoSQL Graph.  
La partie difficile est de bien gérer les différences entre les opérations primitives et les différences d’isolation transactionnelle (au sens large) entre les moteurs. C’est pour cela que l’on compte beaucoup sur les utilisateurs et la communauté de chaque produit NoSQL pour nous aider dans cette tâche. Idéalement, un expert [Cassandra](http://cassandra.apache.org/) viendra contribuer sur le dialect Cassandra et ainsi de suite.

**Agnès & Cédric: On parlait d’_impedance mismatch_ lorsque l’on présentait la problématique du mapping objet/relationnel, pour faire référence aux problèmes rencontrés lorsque l’on voulait faire parler le monde objet de nos applications et le monde des bases de données relationnelles. Mais aujourd’hui comment requêter en JP-QL “au dessus d’une technologie qui ne supporte pas la notion de requête (clé/valeur)”?**  
**Emmanuel**: Bonne question. Il y a plusieurs réponses selon ce que la technologie sous-jacente offre. Notre approche (en tous cas initialement) est d’indexer les objets en utilisant [Hibernate Search](http://www.hibernate.org/subprojects/search.html). A chaque fois qu’un objet est créé, modifié ou supprimé, [Hibernate Search](http://www.hibernate.org/subprojects/search.html) est au courant et met à jour l’index [Lucene](http://lucene.apache.org/java/docs/index.html) correspondant. Cette techno fonctionne et est éprouvée. D’autre part on sait stocker l’index [Lucene](http://lucene.apache.org/java/docs/index.html) dans [Infinispan](http://www.jboss.org/infinispan) (ce qui offre une visibilité des changements immédiate et une distribution de l’index).

Donc la clé et ce sur quoi on travaille aujourd’hui est de convertir une requête JP-QL en requête [Hibernate Search](http://www.hibernate.org/subprojects/search.html) / [Lucene](http://lucene.apache.org/java/docs/index.html).  
Pour donner un exemple, voici deux requêtes JP-QL converties :  
`select a from Animal a where a.size` > `20  
animalQueryBuilder  
.range().onField(“size”).above(20).excludeLimit()  
.createQuery();`

`select u from Order o join o.user u where o.price` > `100 and u.city = “Paris”  
orderQB.bool()  
.must(  
orderQB.range().onField(“price”)  
.above(100).excludeLimit().createQuery() )  
.must(  
orderQB.keyword(“user.city”).matching(“Paris”)  
.createQuery() )  
.createQuery();`  
(c’est l’API de requêtage d’Hibernate Search que l’on voit en action ici)

A noter que la requête n’est qu’un des mismatchs, on peut citer rapidement:  
\- comment stocker / (dés)hydrater les entités  
\- comment stocker la notion d’association  
\- comment éviter le trop grand nombre de lookups de clés (problème équivalent au fameux n+1 selects SQL)  
\- comment assurer la pérennité des données en cas de changement de structure des objets

**Agnès & Cédric: Peut-on comparer [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) et [Spring Data](http://www.springsource.org/spring-data)?**  
**Emmanuel**: Il y en a qui ont essayé, ils ont eu des problèmes ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)  
Disclaimer: je ne connais pas [Spring Data](http://www.springsource.org/spring-data) par coeur, j’ai autre chose à faire que d’analyser du matin au soir ce que font des concurrents potentiels. Donc si je dis des bêtises sur ce qu’est [Spring Data](http://www.springsource.org/spring-data) ne m’en voulez pas.  
Spring Data et [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) tentent de simplifier l’utilisation des outils NoSQL. Mais je crois qu’à part ça, le niveau de comparaison n’est pas le bon.  
[Spring Data](http://www.springsource.org/spring-data) est un porte-feuille de technologies centrées autour de la donnée. Si on devait comparer, il faudrait regarder du côté de JBoss un bon paquet de projets. Pour en citer quelques uns:  
\- Hibernate Core  
\- Hibernate Envers  
\- Hibernate Search  
\- Hibernate OGM  
\- Seam Persistence  
\- Seam EntityHome framework  
\- Teiid (fédération de bases de données)  
\- JBoss Transaction  
\- Modeshape  
\- Infinispan  
\- JCloud (pas JBoss mais un projet intéressant)  
\- etc

C’est une bonne idée d’avoir regroupé ces technos sous un même portail. J’espère qu’on fera la même chose du côté JBoss: c’est beaucoup plus simple pour les utilisateurs de s’y retrouver.  
Cela dit, certains objectifs de [Spring Data](http://www.springsource.org/spring-data) se retrouvent dans Hibernate OGM notamment via les sous projets Spring Data-MongoDB, Spring Data-JPA, Spring Data key / value. La philosophie n’est pas la même par contre.  
Les projets [Spring Data](http://www.springsource.org/spring-data) encapsulent les APIs des différents datastore dans des template et autre abstractions pour simplifier un peu la vie. Donc vous devez apprendre leurs APIs. Dans l’ensemble je dirais que c’est un énorme helper framework, spécifique à chaque techno qui vous simplifie la vie sans nécessairement masquer la techno en dessous.  
[Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) expose l’API et la sémantique JPA, c’est un moteur JPA dans le sens pur du terme. On pourrait en théorie passer le TCK avec. Du coup, on est plus dans un modèle de programmation proposé et connu qui est JPA et qui est appliqué au datastore que vous voulez utiliser. [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) pense aux données sur une période longue, disons 10 ans avec dans l’idée que votre modèle métier va évoluer, voire que vous allez vouloir utiliser vos données sur d’autre plateformes (Ruby, .net etc). [Spring Data](http://www.springsource.org/spring-data) ne m’a pas donné cette impression, il y a généralement un mapping 1-1 entre un objet et sa représentation en base (ou alors, on se tape le mapping à la main). Pareil, JPA est relativement expressif pour ce qui est relation entre objets y compris circulaire, je n’ai pas vu beaucoup d’options côté [Spring Data](http://www.springsource.org/spring-data).  
Mais on va tous dans la même direction, simplifier l’utilisation des outils NoSQL et c’est une bonne chose. Il y a deux choses que j’aime particulièrement dans [Spring Data](http://www.springsource.org/spring-data):  
\- leur abstraction de requêtage pour les requêtes relativement simple est très sympa  
\- l’idée de pouvoir dénormaliser une entité entre plusieurs datastores disparates (je n’ai pas vu d’info dans la doc mais j’ai vu une présentation qui parlait de cette fonctionnalité): je ne suis pas encore 100% convaincu que cela soit utile en pratique mais l’idée est intéressante et c’est quelque chose qu’[Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) pourra implémenter je pense dans le futur.

**Agnès & Cédric: Quel temps peux tu accorder au développement de projets comme [Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) ? As tu le temps de tester des produits équivalents ou de travailler avec des bases NoSQL ?**  
**Emmanuel**: Chez JBoss, on est maître de son temps (et esclave de son travail ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif) ). Chaque équipe est un peu une mini entreprise qui choisit ses priorités. Par exemple, je fais le choix d’aller à une conférence ou de répondre à une interview et c’est du temps en moins pour développer.  
Selon les besoins du moment et les cycles de produits, j’ai du temps pour expérimenter et essayer de nouvelles idées. Par exemple, le premier commit d’[Hibernate OGM](http://www.hibernate.org/subprojects/ogm.html) date de juillet dernier et j’y ai travaillé à temps très partiel pendant la plupart de l’année avant de donner un coup de boost. Le vrai risque c’est de gérer trop de projets en parallèle et donc de ne pas assez les faire avancer individuellement.  
Mais bon, il y a pire comme boulot ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif)

**Agnès & Cédric: As tu participé au développement de [Ceylon](http://en.wikipedia.org/wiki/Ceylon_Project) ? Utilises tu d’autres langages tournant sur la VM ? Scala, Groovy, Clojure ? Que penses tu que Ceylon puisses apporter à notre plateforme ?**  
**Emmanuel**:  
Oui j’ai participé au design de [Ceylon](http://en.wikipedia.org/wiki/Ceylon_Project) et au développement du type checker et de l’infrastructure du projet, là encore à temps partiel malheureusement. C’est assez fascinant de pouvoir partir de zéro et de faire peu de compromis. Personnellement je travaille principalement en Java même si j’ai bossé un peu en Groovy dans le passé. Je me tiens malgré tout au courant de ce qui se passe dans les autres langages (de la JVM ou pas).  
Si j’avais à résumer, [Ceylon](http://en.wikipedia.org/wiki/Ceylon_Project) a quatre avantages clés:  
\- lisibilité  
\- un système de type très expressif (l’API de réflexion est entièrement type-safe par exemple)  
\- capacité à décrire dans le langage lui-même des structures hiérarchiques comme des interfaces utilisateur ou des structures qui seraient décrites en XML (et ceci de manière fortement typé)  
\- de nouvelles API modernes  
La règle d’or de [Ceylon](http://en.wikipedia.org/wiki/Ceylon_Project) est que le langage doit être lisible et compréhensible. Quelqu’un qui ne connaît pas [Ceylon](http://en.wikipedia.org/wiki/Ceylon_Project) devrait pouvoir comprendre ce que fait un bout de code. Pour réussir cela, on essaie de garder le langage extrêmement régulier ([Ceylon](http://en.wikipedia.org/wiki/Ceylon_Project) est bien plus régulier que Java par exemple), de limiter les options et de retirer des fonctionnalités si cela rend le langage trop complexe. C’est très frustrant! Récemment, Gavin a supprimé ce qui était probablement ma fonctionnalité préférée: elle pouvait être dangereuse dans certaines situations et 95% des cas d’utilisation sont supportés autrement (moyennant des aménagements dans d’autres fonctionnalités).  
Un kit de développement nouveau (API) est un gros défis mais si on se débrouille bien, je pense que ça sera un point clé du succès de [Ceylon](http://en.wikipedia.org/wiki/Ceylon_Project). Aucun langage n’a vraiment percé sans de bonnes APIs.

### **Merci Emmanuel!**

**Les inscriptions pour la session d’Emmanuel au [Lyon JUG](http://www.lyonjug.org) le 23 juin sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/hibernate).  
Vous pouvez également assister à sa session à Grenoble, organisée le 22 juin par [l’Alpes JUG](http://www.alpesjug.org/)**
