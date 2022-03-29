---
layout: "post"
author: 
  - "acrepet"
title: "Rencontre avec Aurélien Mazoyer autour d'Apache Lucene/Solr"
date: "2014-02-11"
---

| La semaine prochaine, [Aurélien MAZOYER](http://www.francelabs.com/a-propos.html) de [France Labs](http://www.francelabs.com/) est invité par le [Lyon JUG](http://www.lyonjug.org/evenements/solr) pour une session sur Apache Lucene/Solr. La team du lyon JUG lui a posé quelques questions, la suite mardi prochain, le 18 février, à Lyon! |

![](/assets/2014/02/2014-02-11-rencontre-avec-aurelien-mazoyer-autour-dapache-lucenesolr/1d65683.jpg)

_Cet interview a été préparé conjointement par : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE et](http://twitter.com/clacote) [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)_![](/assets/2014/02/2014-02-11-rencontre-avec-aurelien-mazoyer-autour-dapache-lucenesolr/trans.gif "More...")

**JUG Team : Peux-tu te présenter? Ainsi que [France Labs](http://www.francelabs.com/)?**

**Aurélien**: Je m'appelle Aurélien MAZOYER, je suis ingénieur diplômé de l'école Polytech'Nice-Sophia et co-fondateur de la société France Labs. France Labs est une startup innovante née fin 2011 à Sophia-Antipolis. Centrée sur les moteurs de recherche open source pour entreprise, France Labs a 2 activités : d'une part le développement d'algorithmes innovants permettant d'améliorer la pertinence des moteurs de recherche en entreprise et d'autre part une activité de service autour de Lucene/Solr et de son écosystème.

**JUG Team : Depuis quand t’interesses-tu aux outils de search?**

**Aurélien**: Je m'intéresse aux outils de search depuis 3 ans. Je travaillais alors dans le département recherche de SAP. C'est Cédric, mon collègue plus expérimenté (il est plus vieux!), qui est à l'origine de mon passage du côté obscur du search open source.

**JUG Team : Pourquoi t’être orienté sur Apache Lucene / Solr? Utilises-tu également Elasticsearch?**

**Aurélien**: Anciens employés de SAP, nous sommes partis du constat que les produits open source étaient déjà suffisamment mûrs et performants pour une utilisation en entreprise. Ils pouvaient ainsi remplacer les solutions propriétaires, tout ça avec beaucoup plus de transparence et des coûts mieux maitrisés. Lucene/Solr nous a séduit par ses performances, ses références en entreprise (telles que Linkedin, Twitter ou Apple) et par le fait que ce soit un projet dirigé par la fondation Apache. Enfin, sa simplicité de mise en place et d'utilisation (comme pourront en témoigner ceux qui l'ont déjà téléchargé ou ceux qui viendront à ma présentation au LyonJUG) a fini de nous convaincre. Je n'utilise pas ElasticSearch pour l'instant, car nous préférons l'esprit plus communautaire d'un projet Apache.

**JUG Team : Il y a eu un changement de cap sur SOLR 4, cette version a intègré beaucoup de fonctionnalités intéressantes remarquées par la communauté. Dans ton talk tu abordes notamment l’une d’entre elles : SolrCloud. De quoi s’agit-il?**

**Aurélien**: Comme son nom ne l'indique pas (open source et marketing ne font pas forcément bon ménage...), Solr Cloud est la nouvelle architecture distribuée de Solr. Elle permet plus facilement de répondre aux problèmatiques de mise à l'échelle, telles que la volumétrie, la charge ou la haute disponibilité. Cette solution, très flexible, permet de mettre en place rapidement un cluster de serveurs Solr. Un front-end pourra ensuite communiquer avec ce cluster (presque) comme s'il s'agissait d'un seul et unique serveur. L'admistrateur du serveur aura de son côté une gestion centralisée de la configuration du cluster et pourra aisément rajouter ou enlever des machines au cluster sans avoir à les reconfigurer.

**JUG Team : Tu vas également parler de l'écosystème autour de Lucene /Solr … Quelles sont les composantes de cet écosystème qui te sont le plus utiles?**

**Aurélien**: Personnellement, je travaille beaucoup avec les outils de crawling de données, tel que le framework de connecteurs Apache ManifoldCF. Mais à France Labs, nous utilisons aussi Hadoop qui, combiné à Solr, permet de traiter et de gérer de gros volumes de données : un atout essentiel à l'heure du big data.

**JUG Team : Elasticsearch est très en vogue et très pratique à utiliser. Pour quelles raisons devrais-je préférer une solution basée sur Lucene / Solr ?**

**Aurélien**: En termes de fonctionnalités, Elasticsearch et Solr sont deux produits très proches. Il est difficile de les différencier sans parler de fonctionnalités avancées propres à chacun des moteurs. D'ailleurs, tout deux reposent sur la même brique open source Apache Lucene. Nous avons choisi Apache Solr car celui ci est aujourd'hui fusionné avec le projet Lucene : ceux ci avancent donc au même rythme et dans la même direction, celle poussée par la fondation Apache. De plus, l'approche distribuée de Solr suit celle de Hadoop (on le voit avec l'utilisation de Zookeeper pour les deux technologies, la possibilité de stocker l'index Solr en HDFS ainsi que la possibilité de gérer le processus d'indexation en map/reduce qui arrive avec la version 4.7 de Solr), et je suis convaincu que ce rapprochement permettra des économies de développement à terme pour quiconque veut s'équiper en technologies big data.

### **Merci Aurélien!**

 

### **Merci à Anne-Laure Rigaudon pour sa relecture!**

 

**Les inscriptions pour la session de Aurélien sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/solr)!**
