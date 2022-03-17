---
layout: "post"
author: 
  - "edijoux"
title: "Retour sur le JUG Summer Camp 2/2"
date: "2012-09-24"
categories: 
  - "les-conferences"
tags: 
  - "java"
  - "jug-summer-camp"
---

| Après le déjeuner, nous voilà repartis pour une belle après-midi de conférence. |

# Les conférences de l'après-midi

## _**Start me up par [Nicolas De Loof](http://twitter.com/ndeloof "@ndeloof")**_

Dans beaucoup de grandes sociétés, il existe des gros silos : Marketing, Développement, Production et Vente qui plombent les initiatives et les nouvelles idées. En effet, il faut passer par chacune de ces étapes. Les silos étant en plus cloisonnés entre eux, il est difficile d'être réactif par rapport au marché. Une des solutions envisagées par Nicolas pour pallier à ce problème est le cloud :

- Coûts minimes et uniquement à l'usage,
- Sans engagement,
- Disponibilité immédiate,
- Assistance inclue,
- Elasticité : ce qui permet d'accompagner la croissance de la société,
- Services "clés en main" ce qui permet une utilisation immédiate des services.

![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/startmeup-300x225.jpg "startmeup")

Et pour nous démontrer la pertinence de son projet, il a décidé de créer un projet concurrençant Google. Ce qui lui permettra de faire la une du Times en tant qu'homme de l'année. Son projet : créer un Juggle moteur de recherche spécialisé dans la recherche de conférence sur La Rochelle. Après avoir développé son projet avec [Maven](http://maven.apache.org/ "Maven"), [Solr](http://lucene.apache.org/solr/ "Solr") et Servlet, Nicolas déploie son application sur [CloudBees](http://www.cloudbees.com/ "Cloudbees"). Le tout en moins d'1h ! L'avantage est qu'il a maintenant la possibilité, grâce au cloud, de tester rapidement son idée auprès des utilisateurs, le tout à moindre coût.

## _**Du code legacy au cloud par [David Gageot](https://twitter.com/dgageot)**_

![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/legacy-cloud1-300x225.jpg "legacy-cloud1")![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/legacy-cloud2-300x225.jpg "legacy-cloud2")

David a voulu montrer dans cette présentation comment l'on pouvait partir d'un code legacy, le rendre plus lisible et le déployer sur le cloud, le tout en moins d'une heure. Pour ceux qui ont suivi [Code Story](http://www.code-story.net/), David est parti du code de [GildedRose](http://www.code-story.net/2012/02/09/GildedRose-WebStyle.html) donné au candidat de la deuxième manche de Code Story. Après une séance de refactoring assez bluffante et grâce à quelques bouts de code mémorisés dans des templates sur IntelliJ, il a déployé son service d'update sur [Heroku](http://www.heroku.com/ "Heroku") et une page html sur laquelle sont réalisées les actions (mises à jour) sur Github. Pour ceux qui veulent voir le code il est disponible sur Github : la partie [service](https://github.com/dgageot/jug-summer-camp-json) et la partie [html](https://github.com/dgageot/jug-summer-camp-web).

## _**Clojure et Big Data par [Claude Falguière](http://twitter.com/cfalguiere "@cfalguiere")**_

![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/clojure-bigdata-300x225.jpg "clojure-bigdata")

[Incanter](http://incanter.org/) est un projet similaire à [R](http://www.r-project.org/) qui fournit un DSL en Clojure. Il permet de manipuler des matrices et des graphes, de calculer des statistiques et de construire des graphes. C'est ce projet sur lequel s'est basé Claude pour traiter la masse importante de données récupérée lors de ses campagnes de tests de performances réalisés sur ses missions. Pour optimiser le traitement, elle a utilisé une base MongoDB pour stocker les données et un job MapReduce avec Clojure-Hadoop pour réaliser les calculs efficacement. Vous retrouverez les liens vers sa présentation et ses sources sur son [blog](http://cfalguiere.wordpress.com/2012/09/13/presentation-clojure-au-jug-summer-camp/).

## _**Programatoo par [Audrey Neveu](https://twitter.com/Audrey_Neveu) et [Ludovic Borie](https://twitter.com/LudovicBorie)**_

![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/programatoo2-300x225.jpg "programatoo2")![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/programatoo1-300x225.jpg "programatoo1")

C'est dans une salle pleine à craquer qu'Audrey et Ludovic ont présenté un projet sur lequel ils travaillent actuellement : [Programatoo](http://twitter.com/Programatoo). Il s'agit d'organiser des séances de programmation pour les enfants accompagnés (de préférence) de leur parent. Le projet a été initié par [Aline Paponaud](http://twitter.com/bootis) qui a entrainé dans son élan un petit groupe chez [Sfeir](http://www.sfeir.com/). Beaucoup d'outils sont disponibles et gratuits pour apprendre aux enfants à développer mais ils sont la plupart du temps en anglais. Une autre mission que s'est donné Programatoo est donc de traduire ces outils quand cela est possible. Parmi les outils présentés, on peut parler de [Scratch](http://scratch.mit.edu/) qui est disponible sur tous les OS ce qui n'est pas le cas de tous les outils. Une présentation très intéressante où l'on découvre la motivation des enfants et la fierté de ce qu'ils ont réalisé.

# La journée est déjà finie !

Une journée c'est vraiment trop court vivement l'année prochaine ! En attendant, ceux qui n'avaient pas leur train à prendre, on pris un verre ensemble dans le bar d'à côté. Cela a été l'occasion d'échanger sur la journée passée, féliciter les speakers pour la qualité de leur présentation et remercier les organisateurs.

![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/table1-300x225.jpg "table1")![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/table2-300x225.jpg "table2")![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/table4-300x225.jpg "table4")![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/table5-300x225.jpg "table5")

Après le verre, un repas pour ceux qui partent le lendemain ou qui vivent sur place.

![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/repas1-300x225.jpg "repas1")![](/assets/2012/09/2012-09-24-retour-sur-le-jug-summer-camp-22/repas2-300x225.jpg "repas2")

_**Comme chaque année nous remercions [Orianne](http://twitter.com/oriannetisseuil "@oriannetisseuil"), [Jérôme](http://twitter.com/jeromepetit "@jeromepetit") et leurs sponsors [Serli](http://www.serli.com/ "Serli") et Google pour cette conférence qui semble comme le vin s'améliorer au fil des années. A l'année prochaine !**_
