---
layout: "post"
author: 
  - "Katia"
title: "Paris JUG Septembre (II) – CMS on top of NoSQL by Steven Noels"
date: "2010-09-21"
categories: 
  - "les-conferences"
tags: 
  - "nosql"
  - "paris-jug"
---

| Après [l’introduction NoSQL](http://jduchess.org/duchess-france/blog/paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere "Introduction NoSQL") une petite pause et la rencontre avec les habitués du JUG, des discussions intéressantes, questions et réponses non formulées et un joli buffet. Après cette demi-heure, on est monté pour la deuxième partie de la conférence : le retour d’expérience de Steven Noels dans l’utilisation de NoSQL pour l’implémentation d’un CMS (Content Management System). |

### ALM : Annonce d’un nouveau User Group Parisien

[![IMG_0480](/assets/2010/09/2010-09-21-paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels/5005901806_b1ea42f22f_m.jpg)](http://www.flickr.com/photos/jduchess/5005901806/ "IMG_0480 by jDuchess, on Flickr")

Lucian Precup - Photo : Claude Falguière

**Lucian Precup** nous a présenté le groupe “ALM France” – Application Lifecycle Management. La soirée d’ouverture aura lieu le 30 septembre prochain à 18h30. ALM a pour objectif de promouvoir la gestion du cycle de vie des applications et les outils associés. Cette discipline recouvre de nombreux aspects comme la conception, la gestion des exigences, l’architecture, la gouvernance des processus, la gestion de projet, les outils, l’assurance qualité, la gestion des configurations, le déploiement, l’exploitation et la prise en compte de l’expérience utilisateur.

ALM privilégiera le partage d’expériences concrètes sur tous ces domaines, afin de permettre à chacun de bénéficier des meilleures pratiques du terrain. Pour en savoir plus : [http://blog.alm-france.org/](Twitter, Facebook, Adobe "ALM blog")

Après ce moment publicitaire, la conférence de **Steven Noel** a commencé.

**CMS on top of NoSQL**

### Steven Noels

![IMG_0491](/assets/2010/09/2010-09-21-paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels/5005903204_c29a8c807a.jpg "Steven Noels")

Steven Noels - Photo : Claude Falguière

Steven Noels est le co-fondateur de [**Outerthought**](http://outerthought.org/site/index.html "Outerthought"). Ils développent des applications scalables de management de contenu et publishing avec les technologies Java, REST et maintenant aussi NoSQL.

Steven est un speaker renommé sur les thèmes du management de contenu, NoSQL et l’Open Source en général. Outerthought offre un catalogue de produits développés en open source basés sur les solutions open source existantes : - **Daisy**, content-and knowledge management : [http://ww.daisycms.org](http://www.daisycms.org "Daisy")

\- **Lily**, scalable store and research :  [http://www.lilycms.org](http://www.lilycms.org "Lily")

\- **Kauri**, REST centric internet application developement : [http://www.kauriproject.org](http://www.lilycms.org "Kauri")

Il a été invité au Paris JUG pour partager un retour d’expérience avec NoSQL : le développement du **produit Lily**, un dépôt de contenu sur [Apache HBase](http://hbase.apache.org/ "Apache HBase").

### CMS (Content Management System) : Daisy

Daisy est un petit système de management de contenus (similaire à Alfresco). L’image ci-dessous illustre l’architecture technique classique d’un CMS :

![NoSQLImg5](/assets/2010/09/2010-09-21-paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels/5009166087_e5e9f26024.jpg "Architecture type d'un CMS")

Architecture type d'un CMS

**Pourquoi autant de cache ?**

Principalement pour **éviter** d’aller en base. La lecture et l’écriture vers la base de données relationnelle est coûteuse.

Avec Daisy, Steven Noels et son équipe sont arrivés aux limites de la scalabilité :

- Capable de bien ingérer des documents de 100 Ko, mais atteint ses limites avec des Mo
- Problèmes avec les caches : l’empilement de caches ayant des durées différentes est complexe à gérer.

Et derrière cette problématique de scalabilité :

- L’existence de trois sources de données : MySQL, [Lucene](http://lucene.apache.org/java/docs/index.html "Apache Lucene") (moteur de recherche de texte) et le système de fichiers
- Le mélange des résultats de la recherche sur les trois sources de données est réalisé dans le code de l’application et en mémoire
- Les transactions et les opérations “set” sont ainsi très difficiles

Finalement Lucene ne permet pas de gérer la fonction “failover”. Ils ont trouvé des solutions pour réaliser du master/slave mais ce n’était pas très satisfaisant.

L’équipe a donc commencé à réfléchir à leur nouveau besoin :

- Ajouter des stockages de données et de **scaler dynamiquement**
- Avoir une **véritable architecture de données distribuée**

### Solution 1 : Déléguer encore plus sur la base de données relationnelle

La première solution à laquelle ils ont réfléchi passait par l’utilisation d’encore plus de base de données relationnelles. Ainsi, les caractéristiques de l’architecture cible imaginée peut se résumer à la liste suivante :

- Ajouter plus de bases MySQL, et avec encore plus de maîtrise de MySQL pour gérer la réplication.
- Encore plus de bases de données autour, avec des systèmes master/slave
- ESB (Enterprise Service Bus) pour communiquer et synchroniser les instances
- RMI et JMS sur JDBC
- RAC sur Oracle pour gérer la distribution (“Real Application Clusters”)
- ouch !! ![:-)](/assets/2010/09/2010-09-21-paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels/icon_smile.gif)

Le design était une usine à gaz. Non seulement l’architecture devenait ultra complexe, mais générait également des arbitrages financiers : les **licences** d’oracle, par exemple, sont vendues par CPU. La quantité d’argent à payer pour avoir N bases de données est [extrêmement élevée](http://bigdatamatters.com/bigdatamatters/2010/04/high-availability-with-oracle.html "Big Data Matters").

Définitivement, aller vers cette solution c’était partir vers une catastrophe en terme de satisfaction d’utilisateur par rapport au budget.

Heureusement, l’explosion de **NoSQL** est arrivée à ce moment précis !

### Solution 2 : NoSQL

La persistance polyglotte, “la tour de babel”.  Apparemment une nouvelle technologie émergente couvrait les besoins auxquels on a fait référence : scalabilité dynamique, performance avec des gros volumes de données et l’architecture distribuée.

L’offre étant assez riche – Cassandra, MongoDB, CouchDB, Redis, Riak, HBase… – quelle solution choisir ?

Clé/Valeur ?  Document ?  Colonne ?  Graphe ?

Lorsqu’on est confronté à un défi tel que celui là, le plus important est de faire les bons choix pour le problème précis. Aujourd’hui on dispose de beaucoup de choix mais toutes les bases ne sont pas adaptées à tous les usages. Certaines ne scalent pas, certaines nécessitent des compétences dans des langages peu répandus (Erlang) etc. Il faut faire aussi attention au marketing (qui finance la solution ? est-elle vraiment NoSQL ?).

L’équipe a donc décrit une série de pré-requis initiaux qu’on résume ci-dessous :

- Scalabilité automatique de gros volumes de données
- Tolérance aux erreurs : réplication et récupération automatique des instances en erreur
- Un modèle de données flexible
- Efficacité dans l’accès aléatoire aux données
- Open Source : l’équipe pourra s’investir dans le développement de la base NoSQL et d’y intégrer plus facilement des fonctionnalités inexistantes dont le nouveau CMS aurait besoin
- Préférence pour le langage java

Après cette première réflexion, ils ont constaté qu’en plus des pré-requis déjà cités, les points suivants étaient aussi très importants :

- **Cohérence** : surtout pas se retrouver avec deux versions du document en conflit sur une même ligne de donnée
- **Atomicité** : transactions unitaires par ligne de donnée
- Si possible, intégration avec **Map/Reduce** : ce que facilite, par exemple, la gestion des index dans la recherche full-text

### Pourquoi “Apache HBase” ?

[HBase](http://hbase.apache.org/ "Apache HBase") suit un modèle de données Column, très flexible, avec lequel on peut garder toutes les versions d’un document. La solution offre la possibilité de ranger les données permettant la création d’index scalables, ainsi qu’un espace HDFS pour stocker les blobs. De plus, elle s’appuie sur l’implémentation Open Source de Google : BigTable. Entre autres caractéristiques techniques, HBase offre l’intégration avec [Hadoop MapReduce](http://hadoop.apache.org/common/docs/r0.20.2/mapred_tutorial.html "Hadoop MapReduce") et des API’s Java, REST, Thrift, Ruby Shell, Java M/R.

Enfin Steven a ajouté aussi que l’équipe se sentait à l’aise avec l’utilisation de la licence Apache et avec la communauté déjà très familière pour eux.

### Contenu est synonyme de recherche

Grâce à HBase, ils ont trouvé le dépôt de données qu’ils recherchaient. Or, contenu est aussi synonyme de **recherche** ! Ils utilisaient le produit Lucene, mais le cadre avait complétement changé car la recherche devait tenir compte de la scalabilité dynamique.

Un CMS se compose de deux types de recherche :

- Structurée, ou recherche logique (basée sur des types string, nombres, logique)
- Récupération de données (full-text search) reposant sur de la numération

En partant de l’idée des [Index Datastore de  Google App Engine](http://code.google.com/appengine/articles/index_building.html "Windows datastore") l’équipe a développé la librairie [HBase Indexing Library](http://docs.outerthought.org/lily-docs-current/361-lily.html?branch=1 "HBase Indexing Library"), et pour implémenter la méthode de recherche dont ils avaient besoin, ils se sont fait aider par le framework [SOLR](http://lucene.apache.org/solr/ "SOLR") qui appartient aussi au projet Lucene.

La dernière étape était de pouvoir mettre à jour les index de données de HBase pour bien les connecter avec la recherche SOLR. Il fallait impérativement une méthode fiable de copie dans un environnement distribué.  Finalement **WAL/Queue** a été choisi comme solution pour  l’ensemble de garanties qu’il fournit dans la synchronisation de données.

Le résultat final est **Lily** :

- Modèle de données flexible
- HBase comme base de données NoSQL
- Indexé. Recherche avec SOLR
- Utilisation du mécanisme WAL/Queue implémenté en HBase
- Basé sur leur produit Kauri à l’exécution
- Communication Client/Serveur via Avro (et une interface REST interfacée avec JSON)

Steven a conclu en disant qu’**ils ont réussi quelque chose qui leur plaît beaucoup** et qu’ils sont **très satisfaits** des résultats.

Vous pouvez télécharger le guide d’apprentissage (architecture, modelé, API, Javadoc) – [www.lilycms.org](http://www.lilycms.org/ "Lily").  La release complète de Lily sera aussi distribuée fin octobre 2010.

### Conclusion

Si votre architecture de données est correcte avec un seul CPU et une seule RAM, vous n’avez pas (encore) besoin de NoSQL. NoSQL sert principalement à couvrir le besoin d’une architecture distribuée et de haute disponibilité.

Mais si vous constatez que NoSQL est la solution à vos problématiques de distribution, scalabilité et performance sur des gros volumes de données, vous devrez donc **faire le bon choix**. Il faut surtout éviter de succomber aux sirènes du marketing, ou de faire un choix basé sur le “buzz”. Steven Noels et son équipe ont choisi HBase juste 2 mois avant le hype de Cassandra, mais si au départ Cassandra est plus simple, HBase est plus configurable.

Utiliser une base NoSQL implique de mettre les mains dans le code pour constater que la base **fait vraiment ce qu’on dit qu’elle fait**. Le choix est un risque ! Rappelez-vous que le choix le moins amusant peut être aussi le meilleur.

**Pour en savoir plus :**

[Devoxx](http://www.devoxx.com/display/Devoxx2K10/Home "Devoxx 2010") !

Vous y retrouverez des speakers comme **Tom White** (Cloudera/Hadoop O’Reilly author), **Jonathan Ellis** (Cassandra), **Michael Stack** (HBase), des conférences dédiés aux produits comme **MongoDB**, **Voldemort** et **Elastic Search** et cas d’applications pratiques sur **Twitter**, **Facebook** et **Adobe**

### Troisième mi-temps

![IMG_0497](/assets/2010/09/2010-09-21-paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels/5005904242_797e0b40af.jpg "3ème mi temps")

3ème mi temps

De retour au Vavin, la fin de la soirée agréable et amusante comme toujours. Des conversations intéressants et retrouver encore quelques têtes.

Quelques personnes, comme d’habitude ![;-)](/assets/2010/09/2010-09-21-paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels/icon_wink.gif) ont encore continué vers la quatrième mi-temps !

Et voilà, c’est tout !

**Rendez-vous au prochain Paris JUG !!!**

**![:-)](/assets/2010/09/2010-09-21-paris-jug-septembre-ii-cms-on-top-of-nosql-by-steven-noels/icon_smile.gif)**

[Article précédent : Introduction NoSQL](http://jduchess.org/duchess-france/blog/paris-jug-septembre-i-introduction-nosql-par-olivier-mallassi-et-michael-figuiere "Introduction NoSQL")
