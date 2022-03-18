---
layout: "post"
author: 
  - "acrepet"
title: "Cassandra et Spark, amis pour la vie..."
date: "2015-06-12"
categories: 
  - "les-conferences"
  - "tech"
tags: 
  - "apache-spark"
  - "cassandra"
  - "spark"
---

| [![DuyHai Doan](/assets/2015/06/2015-06-12-cassandra-et-spark-amis-pour-la-vie/duyhai-doan.png)](http://www.lyonjug.org/_/rsrc/1431423627385/speakers/2015/duyhai-doan.png)[![Gerald Quintana](/assets/2015/06/2015-06-12-cassandra-et-spark-amis-pour-la-vie/gerald-quintina.jpg)](http://www.lyonjug.org/_/rsrc/1431423976569/speakers/2015/gerald-quintina.jpg) |

Duy Hai Doan et Gerald Quintana seront lundi à Lyon pour une session autour des projets Apache [Spark](https://spark.apache.org/) et [Cassandra](http://cassandra.apache.org/). Ils nous en disent plus sur l'utilisation conjointe de ces deux outils, alternative technique intéressante par rapport à l'éco-système classique Hadoop.

_Cette interview a été préparée par [Agnès CREPET](https://twitter.com/agnes_crepet) et [Alexis HASSLER](https://twitter.com/AlexisHassler) de la team du Lyon JUG._

**Agnès et Alexis: Gerald et Duy Hai, pouvez-vous vous présenter ?**

**Duy Hai:** Je m'appelle Duy Hai et je suis évangéliste technique pour Datastax, l’entreprise commerciale derrière Apache Cassandra.

Je partage mon temps entre donner des présentations/meetups/talks sur Cassandra, développer sur des projets open-source pour la communauté et aider les projets utilisant Cassandra. Avant Datastax, j'ai été développeur freelance Java/Cassandra.

**Gérald:** Je suis un développeur Java depuis longtemps. Je m’intéresse à la persistance et au traitement de la donnée, aussi bien en SQL qu'en NoSQL.

**Agnès et Alexis:** Vous allez nous parler d'Apache Spark et de Cassandra. Pouvez-vous expliquer ce que font ces outils ? Quels sont les cas d’utilisation de ces outils ?

**Gérald:** Cassandra est une base de données distribuée: ses points forts sont la scalabilité et la tolérance aux pannes. Spark permet de traiter de la données de manière distribuée à la fois en batch et au fil de l'eau.

**Duy Hai:** Pour résumer, Apache Spark est un framework de traitement distribué des données qui se proposent d'accélérer les calculs en stockant les données intermédiaires en mémoire. Apache Cassandra est une base de données NoSQL de type table distribuée, qui privilégie la haute disponibilité et la résilience aux pannes au détriment de la cohérence forte des données.

Apache Spark est adapté aux cas où vous avez beaucoup de données à traiter en parallèle, et que vous arrivez à les traiter de manière incrémentale par petit batchs qui tiennent en mémoire. En effet, si vos données dépassent la quantité de mémoire disponible, Spark écrit temporairement sur disque, ce qui ralentit énormément le temps de traitement.

Apache Cassandra est adapté aux cas suivants: besoin de très haute disponibilité, de scalabilité linéaire, de déploiement en multi-sites, et de simplicité opérationnelle

**Agnès et Alexis: En quoi le fait d'utiliser ces deux outils ensemble vous semble intéressant?**

**Duy Hai:** Cassandra permet d'avoir une base de données distribuées mais propose peu d'outils pour faire des analyses de données, domaine où Spark excelle. Ces 2 solutions fonctionnent déjà de manière distribuée, les combiner ensemble permet d'en tirer le meilleur des 2 mondes, la haute disponibilité et la résilience face aux pannes de Cassandra, la richesse des outils d'analyses de Spark

**Gérald:** Spark apporte à Cassandra un outil pour traiter les gros volumes de données (transformations de tables façon ETL, machine learning...) et des possibilités de requêtage supplémentaires: jointures, agrégations... Cassandra offre à Spark la possibilité de manipuler des données structurées sans forcément passer par des fichiers (HDFS), d'autant plus que le modèle orienté colonne de Cassandra est très proche du modèle de Spark SQL.

**Agnès et Alexis: Dans quelles situations Cassandra sera plus adapté que d’autres bases de données ?**

**Duy Hai:** Cassandra excelle particulièrement pour les séries de données temporelles et les données immuables. De par sa conception, le moteur de stockage optimise l'écriture sur disque pour un accès en lecture séquentielle des données.

**Gérald:** Cassandra est particulièrement indiqué lorsque les données ne tiennent plus sur un seul serveur et lorsque les systèmes traditionnels à base de master-slave n'arrivent plus à encaisser la charge, en particulier en écriture.

**Agnès et Alexis: Même question pour Spark. Dans quelles situations sera-t-il plus adapté que Hadoop (ou d’autres outils similaires) ?**

**Duy Hai:** De par sa conception très généraliste, il n'y a pas de job Hadoop qui ne puisse pas être écrit en Spark. Et Spark propose plus que du Map/Reduce. Que vous ayez déjà une installation Hadoop ou que vous voulez vous lancer sur un projet Big Data, Spark a suffisamment de modules et d'extension pour convenir à la plupart de vos besoins. Le point fort de Spark, c'est de réunir dans une architecture cohérence et extensible différents types de traitement de données (streaming, batch, SQL, ...)

**Gérald:** Il apporte une API plus simple qu'Hadoop M/R (même si c'est du Scala :troll: ), l'outillage est plus intégré (Spark, Spark SQL, Spark Streaming en seul paquet) et les performances meilleures (encore qu'avec Tez...). Pour débuter dans le monde des traitements "big data", la première marche est plus accessible.

**Agnès et Alexis: Utiliser l'écosystème Hadoop vous parait-il plus compliqué aujourd'hui ?**

**Duy Hai:** C'est un doux euphémisme que de dire que l'écosystème Hadoop est compliqué. On oublie souvent que Hadoop a déjà 10 ans d'âge. A l'époque, l'écosystème est constitué de seulement 2 composants: HDFS (système de fichier distribué) et un gestionnaire de job (MRv1). Avec le temps s'est greffé un nombre invraisemblable de composants/frameworks hétéroclites: Pig, Hive, Cascading, Tez, Parquet, ZooKeeper, Impala ...

Chacun de ces composants sont des technologies différentes, je pense notamment à Pig,Hive et Cascading,qui n'ont pas du tout la même philosophie. Leur seul point commun: produire du code Map/Reduce à la place de l'utilisateur. D'ailleurs le fait d'avoir besoin de passer par une couche d'abstraction pour "écrire" des jobs Map/Reduce est symptomatique de la complexité même d'Hadoop.

Côté opérationnel, bien que de gros efforts ont été faits pour simplifier l'administration de l'écosystème (Apache Ambari), débugger un job Hadoop reste compliquée aujourd'hui car il faut analyser les logs de toutes les couches (HDFS, Yarn, Pig/Hive/Cascading, ....)

**Gérald:** Distribuer un traitement et traiter de gros volumes de données de manière robuste est un problème complexe. Mais développer un batch enchaînant des jobs map/reduce pourrait être plus simple, c'est ce que prouvent des surcouches Hadoop comme Cascading.

**Agnès et Alexis: Cassandra-Spark vous semble être le duo gagnant? Quels autres outils pourrait-on y ajouter pour avoir un killer combo ?**

**Duy Hai:** Le couple Cassandra-Spark permet de tirer le meilleur de chaque solution mais n'est pas forcément la solution à tous les problèmes. Pour être complet, on rajoutera Apache Kafka dans l'écosystème Spark/Cassandra pour avoir un ESB hautement scalable et résilient

**Gérald:** Pour commencer, Ansible ou autre pour déployer facilement quelque chose sur un cluster. Ensuite Spark JobServer permet de piloter les batchs avec une API REST et OpsCenter pour monitorer Cassandra. Enfin, un notebook comme Spark Notebook ou Zeppelin pour exploiter les données de manière visuelle.

**Agnès et Alexis: Faut-il apprendre scala pour faire du Spark, ou peut-on l’utiliser avec Java ? Avec Java, l’API permet-elle de faire du bon code ?**

**Duy Hai:** Les concepteurs de Spark ont pensé aux développeurs lors de la conception du framework, vous n'êtes pas lié à un langage en particulier. Il est possible de travailler avec Spark en Scala, Java, Python. DataBricks, l'entreprise qui soutient Spark, est même en train d'introduire une version de Spark avec R, le langage préféré des data-scientists. Tout dépend de ce qu'on appelle "bon code". Il est possible avec Java de faire un code qui marche, bien testé et bien conçu. Néanmoins, il est assez évident qu'en terme de concision, même avec l'arrivée des lambdas dans Java 8, un code Spark en Scala reste toujours plus concis et légèrement plus lisible.

**Gérald:** Une connaissance minimale de Scala ou Python me semble nécessaire pour pouvoir utiliser les shells Spark (en attendant le REPL de Java 9), et ça complique un peu l'apprentissage de Spark, mais en réalité il n'y a pas besoin d'être expert Scala pour s'en sortir. Ensuite, le shell n'est utile qu'à des fins d'expérimentation ou d'exploration, pour développer de vrais traitements, Spark s'utilise très bien avec Java 8 (avec plein de lambdas). La plupart des extensions Spark (dont Cassandra fait partie) proposent une API Java.

**Merci à Duy Hai et Gérald pour cette interview !** Inscrivez-vous à leur session [au Lyon JUG Lyon le 15 juin](http://www.lyonjug.org/evenements/cassandra-spark)!
