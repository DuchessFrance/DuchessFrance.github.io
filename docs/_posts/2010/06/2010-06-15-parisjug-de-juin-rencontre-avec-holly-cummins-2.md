---
layout: "post"
author: 
  - "edijoux"
title: "ParisJUG de Juin : rencontre avec Holly Cummins (2)"
date: "2010-06-15"
categories: 
  - "les-conferences"
tags: 
  - "aries"
  - "osgi"
  - "paris-jug"
---

| ![IMG_0268_500](/assets/2010/06/2010-06-15-parisjug-de-juin-rencontre-avec-holly-cummins-2/IMG_0268_500-300x168.jpg "IMG_0268_500")Après une pause de 30 minutes, Octo fait une annonce pour parler de l’[université du SI](http://www.universite-du-si.com/). C’est une conférence organisée par Octo sur Paris qui débute le 1er Juillet et dure 2 jours. 3 types de sessions sont proposés : |

- des sessions destinées aux boss,
- des sessions destinées aux geeks,
- des sessions mixtes.

Ce n’était pas vraiment prévu mais ils décidèrent ensuite d’organiser un tirage au sort pour une place à la conférence. Ensuite, Holly Cummins tira au sort un nom pour gagner l’iPad que beaucoup convoite en ce moment. Après avoir félicité le gagnant (ou plus précisément le jalousé ![:)](/assets/2010/06/2010-06-15-parisjug-de-juin-rencontre-avec-holly-cummins-2/icon_smile.gif) ), nous passons à la deuxième partie de la présentation.

## OSGi et les entreprises

Holly commence par faire le point sur l’évolution de la programmation en faisant la correspondance avec l’évolution de l’homme.

![IMG_0276_500](/assets/2010/06/2010-06-15-parisjug-de-juin-rencontre-avec-holly-cummins-2/IMG_0276_500-300x168.jpg "IMG_0276_500")Au commencement il y eut les bits, une série de 0 et de 1. Puis nous sommes passé aux fonctions et librairies ensuite aux objets et puis finalement OSGi. Ce dernier représente quand même une étrange évolution dans la programmation comme le montre l’étrange animal le représentant dans la dernière étape de l’évolution.

L’utilisation d’OSGi est une question de besoin. Pour un “Hello Word !” les objets sont amplement suffisants mais lorsqu’on a une usine à gaz ? Dans une application complexe, les dépendances et l’utilisation des librairies peuvent devenir difficile à gérer. Il nous faut des applications modulaires.

### La modularité dans une plateforme d’entreprise

Le gros problèmes des jars c’est qu’ils ne sont pas versionnés, il n’y a pas de scope ce sont des entités non traçables et non gérables. Autre souci, le classpath : avec nos applications de plus en plus complexes, où les jars dépendent eux mêmes de jars, on peut très vite se retrouver avec des surprises au runtime. En effet, selon les JVM la politique de chargement de classes n’est pas la même et on peut avoir très vite en fonction des environnements des `ClassNotFoundException`.

## OSGi

![layering-osgi](/assets/2010/06/2010-06-15-parisjug-de-juin-rencontre-avec-holly-cummins-2/layering-osgi1.png "layering-osgi")

Ci dessus une représentation du modèle en couche d’OSGi. Il est composé de Bundles, le Bundle est un composant OSGi qui est en fait un jar contenant des méta-données définies dans le Manifest.mf. Chaque bundle possède son propre classpath ce qui élimine les problèmes de conflits de versions que l’on peut avoir. Voici un exemple de Manifest.mf :

\[\[code\]\]czozMTc6XCJNYW5pZmVzdC1WZXJzaW9uOiAxLjAKIEJ1bmRsZS1NYW5pZmVzdFZlcnNpb246IDIKIEJ1bmRsZS1OYW1lOiBIZWxsb1N7WyYqJl19ZXJ2aWNlIFBsdWctaW4KIEJ1bmRsZS1TeW1ib2xpY05hbWU6IGNvbS5qYXZhd29ybGQuc2FtcGxlLkhlbGxvU2VydmljZQogQnVuZHtbJiomXX1sZS1WZXJzaW9uOiAxLjAuMAogQnVuZGxlLVZlbmRvcjogSkFWQVdPUkxECiBCdW5kbGUtTG9jYWxpemF0aW9uOiBwbHVnaW4KIEV4e1smKiZdfXBvcnQtUGFja2FnZTogY29tLmphdmF3b3JsZC5zYW1wbGUuc2VydmljZQogSW1wb3J0LVBhY2thZ2U6IG9yZy5vc2dpLmZyYW1ld297WyYqJl19cms7dmVyc2lvbj1cXFwiMS4zLjBcXFwiXCI7e1smKiZdfQ==\[\[/code\]\]

Les services OSGi sont là pour fournir une liaison dynamique entre les bundles que l’on peut à tout moment modifier à chaud.

### Et pour les applications web ?

[OSGi Enterprise Expert Group](http://www.osgi.org/EEG/HomePage) (EEG) a défini une spécification pour fournir une solution aux entreprises et répondre aux besoins de ceux qui utilisent Java EE pour leurs applications.

### Avantages

L’approche est vraiment différente. Et au lieu de déployer une nouvelle version de notre application et ensuite de redémarrer notre serveur d’application, on peut se limiter au déploiement de bundles (modules) à chaud.

## Apache Aries

Apache Aries est le projet open source sur lequel travaille Holly Cummins. [Apache Aries](http://incubator.apache.org/aries/) est un outil permettant d’exposer les modules OSGi.

### Historique

Aries est un projet créé en Septembre 2009. Toujours en incubation, la version 0.1 est maintenant disponible à l’utilisation et a été intégré à Websphere.

Voici ce que contient le projet Aries :

- un conteneur Blueprint,
- JPA integration,
- JTA integration,
- JMX,
- JNDI integration,
- Application assembly
- …

![IMG_0279_500](/assets/2010/06/2010-06-15-parisjug-de-juin-rencontre-avec-holly-cummins-2/IMG_0279_500-300x168.jpg "IMG_0279_500")

### Petite démonstration …

Voici l’heure de la démo qu’appréhende beaucoup Holly car le mois dernier elle ne s’était pas très bien passée.

Dans Eclipse, elle utilise Apache Aries pour montrer le fonctionnement d’OSGi :

Elle commence par créer un service, et charger dans le serveur OSGi le jar, il sera reconnu en tant que Bundle. Une fois chargé et lorsque l’on va créer l’application, on pourra lui définir l’utilisation de ce bundle. Elle injecte ensuite la classe Service créée dans une servlet. Pour ce faire elle utilise le JNDI pour récupérer le bon bundle et donc notre classe.

### L’injection de dépendances

Les modules peuvent faciliter l’évolution d’une application, il semble à ce moment là simple de vouloir remplacer son service par une nouvelle version sans redémarrer son serveur. Ces bundles peuvent être visibles et gérables dans le serveur d’application qu’elle a choisi d’utiliser : Websphere.

Ce qu’elle voit dans un futur proche c’est que toutes les applications Java d’entreprises vont pouvoir déployer des bundles au lieu des applications entières.

## La troisième mi temps

La présentation est finie, quelques questions suivirent. Tout le monde remballe ses affaires et direction Le Vavin pour la 3ème mi temps ! Pour un autre retour sur la soirée, vous pouvez également voir la [wave](http://thecodersbreakfast.net/index.php?post/2010/06/08/Paris-JUG-Holly-Cummins) d’Olivier Croisier sur son blog The Coder’s breakfast. D’ailleurs sa wave m’a beaucoup aidé pour rédiger ce résumé, un grand merci à lui.

Alors on se retrouve au mois prochain hein ? ![;)](/assets/2010/06/2010-06-15-parisjug-de-juin-rencontre-avec-holly-cummins-2/icon_wink.gif)

![Troisieme-Mi-Temps-2](/assets/2010/06/2010-06-15-parisjug-de-juin-rencontre-avec-holly-cummins-2/Troisieme-Mi-Temps-2.jpg "Troisieme-Mi-Temps-2")
