---
layout: "post"
author: 
  - "acrepet"
title: "Rencontre avec David Pilato sur Elastic Search"
date: "2012-10-09"
categories: 
  - "les-conferences"
tags: 
  - "elasticsearch"
---

| ![David Pilato](http://www.lyonjug.org/_/rsrc/1348726147555/speakers/photo_dpilato.png?width=119&s=120&d=mm&r=pg)[David Pilato](https://twitter.com/dadoonet) a récemment co-animé, avec Malloum Laya, [une soirée Duchess "Les Mains Dans le Code" sur Elastic Search](http://www.duchess-france.org/les-mains-dans-le-code-avec-elastic-search/). Il est maintenant invité par le [Lyon JUG](http://www.lyonjug.org) le 16 octobre prochain où il co-animera avec [Tanguy Leroux](https://twitter.com/tlrx) une soirée dédiée à [Elastic Search](http://www.elasticsearch.org). [Agnès Crépet](http://twitter.com/agnes_crepet) et ses camarades de la team élargie du Lyon JUG, [Cédric Exbrayat](http://twitter.com/cedric_exbrayat) et [Cyril Lacôte](http://twitter.com/clacote), sont allés à sa rencontre pour lui poser quelques questions et vous donner envie de participer à cette session... ou une de celles qu'il va animer ailleurs dans d'autres JUGs de France! |

**Agnès : David Pilato : qui es-tu? Peux-tu nous présenter un peu ton parcours professionnel et ce qui a fait qu’on te voit depuis Devoxx France 2012 sur le devant de la scène dans pas mal événements en tant que speaker sur Elastic Search?**

**David :** Je suis tombé dans l'informatique à 7 ans quand mon père assemblait au fer à souder son premier ZX81 (et oui, j'ai 40 ans - tout le monde n'a pas connu le ZX ;-) ). Du coup, après une école d'ingé à Brest, j'ai commencé à bosser dans une SSII puis j'ai travaillé à la direction du réseau de SFR où j'ai construit une partie du SI d'administration et exploitation du réseau de transmission. Ensuite, j'ai rejoint une startup des années 2000, devenue ensuite filiale de Vivendi Universal. A l'explosion de la bulle internet et la fermeture de plusieurs filiales, j'ai eu l'opportunité de rejoindre le centre informatique de la douane en tant que chef de projet, dont la refonte du système d'information de dédouanement sur internet (l'équivalent de la déclaration d'impôt mais pour les entreprises import/export) et la mise en place d'un système de gestion des contrôles réalisés par les douaniers dans le but d'en améliorer la pertinence et l'efficacité. Pour ce dernier projet, j'ai mis en place Elasticsearch - maintenant en production depuis plus d'un an. Après 8 années passées au service de la France (main sur le coeur), je rejoins dans quelques semaines IDEO Technologies qui m'a demandé d'en assurer la direction technique. Alors pourquoi suis-je ici à faire des talks sur Elasticsearch ? La raison est assez simple. Lorsque j'ai mis en place Elasticsearch sur mon projet, j'ai vu immédiatement le gain énorme que j'ai obtenu "gratuitement" en utilisant ce projet open-source. Lorsque quelqu'un vous aide ainsi, vous avez souvent envie de renvoyer l'ascenseur. J'ai donc cherché un moyen de contribuer au projet. N'étant ni un expert Lucene, connaissant assez peu le code source d'Elasticsearch, il me semblait illusoire de contribuer immédiatement au code source. J'ai rapidement remarqué que le projet était peu connu en France et qu'il fallait le populariser. J'ai contacté Shay Banon (le créateur du projet) et je lui ai proposé d'ouvrir la première "section" locale d'Elasticsearch et Elasticsearch France est né. J'ai eu la chance d'être sélectionné à la dernière minute pour faire un talk à Devoxx France 2012 (Shay devait venir lui-même mais il a eu une contrainte de dernière minute), et voilà ! Depuis maintenant deux ans, je suis donc très présent sur les mailings listes anglaise et française. Je contribue essentiellement via des plugins/outils externes au projet et j'essaye de faire décoller cette communauté française, notamment en sillonnant en ce moment les routes de France pour trouver de nouveaux utilisateurs/contributeurs au projet.

**Agnès : Tu vas donc nous parler d’Elastic Search, un moteur de recherche pour la génération NoSQL. Comment as-tu découvert cette solution? Quel était ton besoin? Et pourquoi avoir choisi Elastic Search plutôt qu’une autre solution? As-tu fait des POCs?**

**David :** Lorsque je mettais en place le projet douane de gestion des contrôles, la prochaine itération consistait à mettre en place un moteur de recherche. Jusque là, le projet collectait de la donnée et proposait une recherche minimaliste. Il était temps de faire "parler d'avantage les données". Comme j'utilisais Hibernate pour la persistance, mon premier réflexe a été de mettre en place Hibernate Search. Je me suis vite trouvé confronté au problème de l'écriture des index dans un contexte de cluster JBoss, les fichiers Lucene étant locaux à chaque noeud JBoss. J'ai fouillé alors sur internet pour trouver un bout de code qui me permettrait de persister les index Lucene dans une base de données partagée (malgré le conseil de ne surtout pas le faire !). Têtu, je tombe donc sur un bout de code du projet Compass que j'essaye d'intégrer. Au bout de quelques heures, je me dis que cet effort est vain et je repense soudain à ce que j'ai lu sur la page d'accueil de Compass : " [The Future of Compass & ElasticSearch](http://www.kimchy.org/the_future_of_compass/)". Et là ! C'est la révélation : je découvre Elasticsearch. Nous sommes en février 2011. Elasticsearch existe depuis quelques mois. Au début, je n'y crois pas. Je télécharge. Je lance. Et je me dis "WTF !". Comment ce miracle est-il possible ? Ce projet vient non seulement de résoudre ma problématique du moment en m'offrant une interface REST/Json mais en plus m'ouvre de nouvelles perspectives. Sans exagérer, je n'ai pas dormi pendant une semaine ! J'ai donc ensuite décidé d'intégrer Elasticsearch dans mon projet (et de jeter les développements Hibernate Search). En quelques jours, nous avions nos premiers documents métier indexés et nos premières recherches qui tournaient. Par chance pour mon projet, je n'avais pas particulièrement de contrainte de date et la fonctionnalité "recherche" n'existant pas, il n'y avait pas de risque à intégrer Elasticsearch. Au pire, la fonctionnalité recherche serait enlevée. Donc, je fais mon POC sur un projet réel et je prouve par l'accueil des utilisateurs que le concept est bon. Du coup, je me rends compte que je peux offrir facilement des fonctionnalités nouvelles : la recherche type "google" dans les données du SI et la mise en place de facettes pour l'analyse et la navigation dans les documents.

**Agnès : Prenons un exemple simple pour comprendre un peu à quoi peut nous servir une solution comme Elastic Search. Je développe une application de gestion de bibliothèque, je manipule des livres (titre, auteur, ISBN, etc.). Je veux les indexer pour ensuite effectuer des recherches dans ma bibliothèque. Exemple simple j’ai dit ;-) Je dispose de mon Entité Livre. La seule référence que j’ai, ce sont les bases de type SGBD, Hibernate et JPA et jusqu’à présent pour stocker un livre en base, j’y allais à coup de merge et de persist ;-) Avec Elastic Search, comment je m’y prends pour indexer un livre? Il parait que je dois commencer par sérialiser mon objet en JSON... Explique-nous un peu les étapes de l’indexation?**

**David :** Tout d'abord, il faut oublier le SQL et le relationnel pour penser avant tout "Document" dans sa globalité, bien qu'il y ait des moyens de "coller" à l'approche SQL, mais je le déconseille. En SQL, en général, tu vas trouver un livre avec une jointure sur un auteur. En NoSQL, on va plutôt voir le livre comme un tout comprenant à la fois Le livre et l'auteur. C'est quelque part notre objet de "plus haut niveau". Dans Hibernate, en général, on persiste le livre qui va déclencher en cascade la persistance de l'auteur. Prenons par exemple une classe Book et une classe Author.

`public class Author { private String name; }

public class Book { private Author author; private String isbn; private String title; }`

Une représentation JSon (NoSQL) d'un livre pourrait être : `{ "title":"Elasticsearch in Action", "isbn":"43455235653653357623", "type":"technical", "author":{ "name":"Shay Banon" } }`

Pour sérialiser nos objets en JSon, il y a plusieurs possibilités : - le faire "à la main" (concaténer des String) - utiliser des classes utilitaires d'Elasticsearch (XContent) - utiliser la magnifique bibliothèque Jackson.

Par exemple : `String json = new com.fasterxml.jackson.databind.ObjectMapper().writeValueAsString(book);`

Il suffit ensuite de demander à Elasticsearch d'indexer ce document. `client.prepareIndex("library", "book").setSource(json).execute().actionGet();` Je passe les détails ici, mais disons que client est la classe représentant un client Java pour Elasticsearch. Tu pourrais aussi bien faire tout cela en commande curl : `curl -XPUT http://localhost:9200/library/book -d '{ "title":"Elasticsearch in Action", "isbn":"43455235653653357623", "type":"technical", "author":{ "name":"Shay Banon" } }'`

Ce simple appel a permis d'indexer un document dans ton "cloud" de serveurs Elasticsearch. La magie est là : quelque soit le nombre de noeuds Elasticsearch qui constituent ton cluster de recherche, tu n'as pas à te soucier de l'endroit où cela est stocké. C'est là, dans le "nuage", c'est tout ! N'importe quel "client" peut ensuite chercher ce document, à partir de n'importe quelle technologie en dialoguant avec n'importe quel noeud de ton cluster.

**Agnès : Et si maintenant je veux récupérer mon livre à partir de son ISBN, comment je fais? Et si je veux récupérer tous les livres de l’auteur Caryl Ferey (auteur de romans noirs formidables au demeurant...!)?**

**David :** En effet, un moteur de recherche sert à indexer et bien évidemment à chercher sur ces index. C'est d'ailleurs quelque chose d'important à avoir en tête et qui est très différent dans l'approche SQL. En SQL, tu cherches sur des données vivantes. Avec un moteur de recherche tu ne cherches QUE sur ce que tu as indexé. Parenthèse fermée, cherchons ! Beaucoup de possibilités ici sont offertes. Tout d'abord, la plus simple est de faire une recherche "globale", c'est à dire de ne pas préciser dans quel champ tu cherches les mots. Tu peux par exemple faire un curl simple : `curl -XGET http://localhost:9200/library/book/_search?q=43455235653653357623`

Tu peux aussi préciser que tu cherches dans le champ isbn : `curl -XGET http://localhost:9200/library/book/_search?q=isbn:43455235653653357623`

Ça c'est le plus simple à faire. Tu as aussi à ta disposition un langage le QueryDSL qui te permet de faire des requêtes plus "précises" et plus complexes : `$ curl -XPOST http://localhost:9200/library/book/_search -d '{ "query":{ "bool":{ "must":{ "match":{ "author.name":"Caryl Ferey" } }, "should":{ "term":{ "type":"polar" } } } } }'`

On vient de chercher les romans dont l’auteur contient Caryl et/ou Ferey et on indique une préférence pour les livres de type polar. Cela veut dire que si Caryl Ferey a fait des polars et des livres d’aventure, nos polars sortiront en premier car ils sont du coup plus « pertinents » que les autres livres.

**Agnès : Qu’apporte Elastic Search en plus de Lucene? As-tu déjà utilisé Lucene seul? Si oui, quels sont tes retours?**

**David :** Quand j’ai découvert Elasticsearch, je ne connaissais Lucene que de nom. J’ai donc assez peu de recul sur Lucene même et son utilisation. Mais, ce que je peux dire, c’est que Lucene, c’est du pur Java. Faire du Lucene en PHP devient alors un peu compliqué ! L’étendre à un SI complètement hétérogène et partager la recherche dans toutes les applications du SI devient alors mission impossible en Lucene pur. La raison pour laquelle Elasticsearch correspond à mes besoins est justement qu’Elasticsearch apport cette couche « cloud », expose en REST/Json les fonctions de Lucene et apporte par ailleurs une couche de distribution pour en décupler les performances. Il faut savoir pour schématiser que chaque nœud Elasticsearch est un Lucene distribué (c’est même plus fin que cela, mais il faut que je garde un peu de mystère pour les talks ! ;-) )

**Cédric : Et par rapport à SolR? Comment évolue la popularité de ces deux solutions ?**

**David :** SOLR vs. Elasticsearch ! Les frères ennemis ! Je connais peu SOLR. Je ne l’ai pas pratiqué personnellement. Ce que j’ai vu de SOLR 3 (je ne parle pas de SOLR 4 ici), c’est qu’il faut faire de la configuration en XML (je ne suis pas fan), que lorsque tu indexes massivement les performances de la recherche sont dégradées, que tu dois souvent relancer tes instances SOLR quand tu changes la configuration, bref, a priori, je trouve SOLR moins sexy.

Avec SOLR 4, je pense que les choses vont changer puisque la roadmap intègre désormais beaucoup de fonctionnalités intéressantes. Un des contributeurs principaux d’Elasticsearch avait d’ailleurs twitté avec humour que la roadmap SOLR 4 était sympa puisqu’il y voyait les fonctionnalités d’Elasticsearch d’un an avant !

Sans rire, il faut regarder de près ce que propose SOLR 4. Il y a quelques fonctions dans SOLR qui sont non disponibles à ce jour dans Elasticsearch.

Au niveau de la popularité, je pense que SOLR a de l’avance sur Elasticsearch mais la progression de l’adhésion à Elastic est beaucoup plus forte. Un petit malin avait d’ailleurs développé un plugin pour Elasticsearch permettant d’exécuter des requêtes SOLR sur Elasticsearch (autrement dit de faciliter la migration !).

**Agnès : Avec CouchDB, il est possible de faire du long-polling. On peut ainsi bénéficier par exemple d’un système de notifications : l’application peut-être notifiée lorsqu’un document, correspondant à une requête demandée antérieurement, est disponible. Est-ce possible avec Elastic Search?**

**David :** Il existe un plugin (Elasticsearch Change Plugin : [https://github.com/derryx/elasticsearch-changes-plugin](https://github.com/derryx/elasticsearch changes-plugin) ) qui permet cette fonctionnalité.

Toutefois, une autre approche existe et je la préfère. Il s’agit de la recherche inversée appelée « Percolation ». Le principe est de pré enregistrer des requêtes dans Elasticsearch (par exemple une requête sur ton auteur favori) et à chaque fois que tu envoies un document à l’indexation, tu actives l’option de percolation.

Si le document matche une ou plusieurs requêtes, Elasticsearch te renverra en même temps que la confirmation de l’indexation de ton document, l’ensemble des requêtes qui correspondent. A ton application ensuite de prendre les décisions (t’informer par mail par exemple !).

**Cédric : Existe-t-il des hébergeurs dans le cloud avec une solution toute prête? Sinon, est-ce simple à faire soi même?**

**David :** Il existe aujourd’hui une solution à ma connaissance développée par [Searchbox.io](https://searchbox.io/). D’autres solutions existent mais sur une couche plus haute (indexer tes documents PDF, oOo, …) : voir [Sonian.com](Sonian.com).

Mais héberger son Elasticsearch soit même sur un serveur Amazon, c’est également assez facile. Pour les besoins de la démo que je fais pendant les talks, j’ai d’ailleurs un nœud Elasticsearch chez Amazon.

Comme Elasticsearch peut s’embarquer aussi dans n’importe quelle application Java, on peut du coup imaginer de l’embarquer dans notre Webapp et du coup de la faire tourner un peu partout. Typiquement, c’est ce que nous avons fait pour le projet [scrutmydocs.org](http://www.scrutmydocs.org/) (projet open source qui permet d’indexer facilement et de proposer une recherche « à la google » des documents de ton disque dur - et plus encore à l’avenir).

Notre webapp intègre un nœud Elasticsearch et est déployée chez cloudbees pour l’espace de démo : [http://www.scrutmydocs.org/](http://www.scrutmydocs.org/)

**Cédric : Peux-tu nous dire un mot sur les plugins et les rivers : à quoi servent-ils et quels sont les plus utiles?**

**David :** Question intéressante car elle montre l’état d’esprit de Shay Banon lorsqu’il a créé Elasticsearch : tout (ou presque) est conçu pour pouvoir bénéficier de plugins externes. Clairement, il permet à tout un éco-système d’apporter des fonctionnalités. Il existe des plugins de communication (par exemple pour faire en sorte que les nœuds se reconnaissent dans un cluster Amazon ou pour mettre en place de l’authentification http), des plugins de mapping pour définir ta propre gestion de certains champs (le plugin attachment permet d’indexer des documents binaires – oOo, pdf, …), des plugins d’analyse spécifiques, …

Les rivers sont une sorte de plugin particulier. Pour simplifier, cela permet de transmettre automatiquement des documents de ton SI ou d’ailleurs pour être indexés dans Elasticsearch. Elasticsearch se met en quelque sorte à l’écoute d’une source d’information et indexe dès que des modifications apparaissent. Il existe des rivers pour un peu tout (CouchDB, Twitter, RSS, FileSystem, LDAP, ActiveMQ, JDBC, …) Quelques-unes sont d’ailleurs développées par des frenchies ! Cocorico !

**Cyril : Supposons qu’Elastic Search couvre les besoins d’une grosse entreprise (celle pour laquelle on travaille tous dans la vraie vie). Est-ce actuellement suffisamment mâture et pérenne pour un S.I. de 15 ans? Est-ce outillé pour faire des tests unitaires (démarrer programmatiquement une instance, indexer des données, tester des requêtes)?**

**David :** Clairement : OUI ! Comme je le disais au début de notre entretien, je l’utilise depuis plus d’un an en production et nous sommes nombreux à être dans ce cas, y compris en France. Même si le numéro de la version en cours à tendance à faire peur aux décideurs (version 0.19.10 pour la dernière version stable), Elasticsearch est un projet très mature et stable. A tel point, que tôt ou tard, on se pose même la question si Elasticsearch ne pourrait pas devenir aussi notre base de données. Je sais qu’il y au moins une personne qui se sert exclusivement d’Elasticsearch comme datastore !

Ce que je trouve sympa avec Elasticsearch, c’est qu’on peut y aller par étape. Tu parlais d’un SI vieux de quinze ans ? Et bien typiquement, tu peux commencer à envoyer certains documents de ton SI vers Elasticsearch puis migrer progressivement le reste du SI vers ce moteur de recherche centralisé. Cela te permettra de partager la fonctionnalité recherche entre toutes tes briques et d’offrir des liens entre les différentes applications.

J’ai dit un peu plus tôt que tu peux embarquer un Elasticsearch dans toute application Java. Cela est évidemment valable pour tes tests unitaires. A ce propos, nous avons conçu avec un ami un Hands On complet basé uniquement sur des tests unitaires pour apprendre à « jouer » avec Elasticsearch : [](https://github.com/elasticsearchfr/hands-on)https://github.com/elasticsearchfr/hands-on

J’en profite pour faire aussi un peu de pub pour ma factory Spring pour Elasticsearch : [https://github.com/dadoonet/spring-elasticsearch](https://github.com/dadoonet/spring-elasticsearch) Elle permet typiquement de créer ce qui manque lorsqu’on démarre un Elasticsearch (des index, des mappings, des alias, …) et peut aider pour les tests unitaires notamment.

Comme pour tous mes projets, les contributions sont les bienvenues ! ;-)

**Cédric : Shay Banon a récemment créé une société autour de son produit. Quels sont les changements à attendre ou les annonces qui ont été faites?**

**David :** Pour le moment, Shay Banon a annoncé une offre officielle de support direct sur le produit. Cela aide aussi nos DSI à franchir le pas en ayant l’assurance d’avoir des réponses en cas de pépin.

Un des effets immédiat au recrutement dans cette société de quelques pointures Lucene et autre, est un traitement des bugs ou des questions par beaucoup plus de personnes. On sent que les développements et les évolutions aussi sont maintenant davantage distribués entre les acteurs, ce qui pour moi est un gage d’assurance de continuité du projet au-delà de Shay Banon lui-même.

Avec maintenant une armée grandissante de développeurs, je pense qu’on va assister de plus en plus à une très forte croissance de l’adhésion autour du projet par les nouvelles fonctionnalités qui ne manqueront pas d’être développées. A titre d’exemple, je pense que Shay va pousser dans les prochaines versions sur l’axe « Elasticsearch as a database ».

Il y a encore assez peu d’annonces officielles. Par contre, ce que je sais, suite à une discussion avec Shay, c’est que toute la documentation va être revue. Il est vrai qu’elle est assez difficile à comprendre quand tu débutes et il peut être compliqué de trouver ce que tu cherches (un comble pour un projet moteur de recherche, non ?).

Côté France, nous travaillons sur la mise en place du site français pour Elasticsearch. J’espère arriver à sortir les bases du site pendant ce dernier trimestre. Stay tuned sur @ElasticsearchFR !

_Merci à Anne-Laure Rigaudon pour sa relecture!_

**Et Merci David pour avoir accepté cet interview et y avoir répondu aussi longuement et brillamment!** [Rendez-vous donc au Lyon JUG](http://www.lyonjug.org/evenements/elasticsearch) le 16 octobre prochain!
