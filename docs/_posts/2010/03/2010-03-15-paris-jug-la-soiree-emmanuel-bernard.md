---
layout: "post"
author: 
  - "Tasha80"
title: "Paris JUG : La soirée Emmanuel Bernard"
date: "2010-03-15"
categories: 
  - "les-conferences"
tags: 
  - "avant-jug"
  - "hibernate-search"
  - "paris-jug"
---

| La première sortie publique de Duchess France a été le [Paris JUG “Emmanuel Bernard”](http://www.parisjug.org/xwiki/bin/view/Meeting/20100309 "Paris JUG "Emmanuel Bernard"") le 9 mars. |

Eh oui Emmanuel Bernard est un sujet en soi ! Emmanuel est lead développeur chez JBoss et très impliqué dans la communauté Java open-source. Il a intégré l’équipe Hibernate en 2003, a participé à plusieurs projets d’Hibernate et a été spec leader sur la JSR 303 “Bean Validation”. Ce soir il est venu nous présenter “son bébé”, Hibernate Search, et partager quelques réflexions sur la conception d’API.

### Mais avant de commencer la soirée JUG, l’Avant JUG

_“L’Avant JUG est un point de rencontre des Duchess avant le JUG. C’est ouvert à toutes les femmes qui vont assister au JUG. Pourquoi ? Parce que si on arrive à 4 on va se dire “tiens il y a des filles aussi”. Si on arrive une par une on disparaît dans la masse de geeks barbus. Bon en fait, la VRAI raison, c’est que c’est l’occasion de piquer un fou rire entre filles, mais ça on ne peut pas le dire à tout le monde.”_

![Photos Avant JUG 9/3](/assets/2010/03/2010-03-15-paris-jug-la-soiree-emmanuel-bernard/avantjug-bandeau.jpg)

18h30 : début de l’Avant JUG au Vavin et arrivée des premières Duchess

Le Vavin nous avait préparé un décor cosy dans un coin calme entouré de photos de femmes. Chacune s’est présentée dans un tour de table puis nous avons pris un verre en discutant de nos projets, de notre métier, de nos frameworks préférés. Une moitié n’était jamais venu au JUG, les autres viennent assez régulièrement et profitent de l’Avant JUG pour faire connaissance avec des femmes qu’elles ont croisées de temps à autre au JUG.

19h00 : nous sommes 10, les discussions vont bon train mais il va bientôt être t<emps de partir. Finalement, c’est bien court un Avant JUG.

19h10 : départ pour l’ISEP. Les Duchess sont attendues pour notre première présentation publique en ouverture du JUG à 19h15, la première !

### La Présentation des Duchess au JUG

Et voilà, nous sommes devant 200 personnes, à présenter Duchess en ouverture du JUG ! Au passage merci au JUG et à Emmanuel Bernard de nous donner cette opportunité.

![Photos presentation JUG 9/3](/assets/2010/03/2010-03-15-paris-jug-la-soiree-emmanuel-bernard/pres-bandeau.jpg)

(Source des photos : http://www.touilleur-express.fr/ et http://twitter.com/Piwai)

La présentation de Duchess France est disponible [ici](http://docs.google.com/present/view?id=dgsqmsqg_23gg3ccct5).

Nous sommes bien accueillies par l’assemblée majoritairement masculine qui semble trouver la démarche intéressante. Cette présentation s’est terminée par quelques questions dont voici le contenu en substance :

Question : Pourquoi voulez vous vous rassurer sur nos compétences ?  
Réponse : Ce sont souvent les femmes qui se jugent elles mêmes moins compétences. Elles manquent d’assurance sur le plan dans la technique et n’osent pas toujours s’affirmer.

Question : La sous représentation des femmes dans l’informatique est elle commune à tous les pays ?  
Réponse : A part quelques exceptions comme en Europe de l’Est et l’Inde la plupart des autres pays sont dans le même cas que la France.

Et maintenant place à Emmanuel Bernard a qui nous avons volé la vedette quelques minutes.

![Photo d'Emmanuel Bernard](/assets/2010/03/2010-03-15-paris-jug-la-soiree-emmanuel-bernard/emmanuelBernard%2Dh114.jpg)

### Première partie de la soirée : Présentation d’Hibernate Search

Tout d’abord qu’est ce que Hibernate Search ?

[Hibernate Search](https://www.hibernate.org/410.html "Hibernate Search") est un module d’Hibernate qui permet de faire des recherches plein texte sur des données issues d’une base de données. Plutôt que plutôt que de Hibernate Search a choisi de s’interfacer avec un composant qui fait ça très bien, [Lucene](http://lucene.apache.org/ "Lucene"). Lucene est un moteur de recherche plein texte puissant fonctionnant sur des documents, généralement des fichiers. Il faut donc créer une couche d’adaptation pour présenter les différents champs de la base de données comme des documents.

Pour débuter Emmanuel Bernard commence par présenter les différentes approches possibles pour la recherche plein texte :

- la catégorisation des données : on propose à l’utilisateur une liste de catégories dans laquelle il pourra retrouver par exemple ses musiques par genre,
- la recherche détaillée où l’on propose un écran complet fournissant tous les champs possibles pour effectuer une recherche,
- la recherche simple avec un champs texte.

La solution la plus appréciée par les utilisateurs est bien évidemment la dernière plus simple à utiliser, comme Google, il suffit de taper des mots clés et on obtient un résultat. Pour implémenter cette solution deux solutions sont envisageables :

- une requête SQL monstrueuse couvrant tous les cas de recherche,
- ou Apache Lucene un moteur de recherche puissant écrit en Java.

La solution qui va de soit est bien évidemment la seconde.

#### Apache Lucene

Lucene est un moteur de recherche plein texte puissant fonctionnant sur des documents, généralement des fichiers. Il faut donc créer une couche d’adaptation pour présenter les différents champs de la base de données comme des documents.

Ce moteur de recherche est décomposé en deux phases :

- L’indexation permet de découper les phrases en mots. Puis grâce à une série de filtres, il est possible d’épurer les mots en mettant tout en minuscule puis en éliminant les mots “parasite” comme “le” ou “la” par exemple.
- La recherche en elle même qui va se baser sur les données indexées pour réaliser des recherches rapides et efficaces. Le résultat de la recherche peut être ordonné par pertinence. En effet on peut déterminer qu’un mot clé retrouvé dans un titre de livre est bien plus pertinent que ceux trouvé dans le texte.
    - Recherche approximative basée sur la [distance de levenshtein](http://fr.wikipedia.org/wiki/Distance_de_Levenshtein), il permet de retrouver des mots proches de celui que l’on cherche exemple : pour “elepant” il sera possible de retrouver “elephant” par exemple.
    - Recherche des mots de même famille, de synonymes et par phonétique.

Lucene est très puissant mais limité lorsque l’on a une base de données et (éventuellement) Hibernate déjà en place. Et c’est là qu’Hibernate Search entre en jeu. Hibernate Search propose une couche de mapping dans laquelle il est possible de définir l’indexation et les requêtes de façon transparente au travers d’Hibernate.

Pour indexer un livre par exemple :

@Entity  
@Indexed  
@Analyzer(impl = SimpleAnalyzer.**class**)  
@Table(name = BOOK\_TABLE\_NAME)  
**public** **class** **Book** {

L’annotation Indexed permet d’indiquer à Hibernate que cette classe doit être indexé par Lucene. Pour des valeurs pertinentes comme le numéro ISBN, il est important de ne pas découper la valeur car seul le numéro entier est pertinent :

@Column(name = “isbn”)  
@Field(index = Index.UN\_TOKENIZED)  
**public** String getIsbn() {  
**return** isbn;  
}

Côté recherche, une surcouche d’Hibernate rend les requêtes vers Lucene plus simple. Comme dans une requête Hibernate, on commence par créer une session Hibernate. L’écriture de la recherche peut se faire via une requête Lucene.

### La mi-temps

La mi-temps. Il était temps, on a peu faim après toutes ces émotions. Un petit tour pour dire bonjour à tous les gens qu’on connait, une lutte impitoyable pour accéder à un toast et un verre de jus d’orange, et quelques discussions sur Duchess et la place des femmes dans leurs sociétés. La mi-temps est l’occasion pour nous de parler de la création et de l’avenir de JDuchess en petit comité. Les organisateurs et les habitués remarquent que, déjà, plus de femmes que d’habitude assistent à la présentation.

### Deuxième partie de la soirée : le design d’API

Emmanuel Bernard est vraiment un speaker passionnant. Dans cette deuxième partie de soirée, il exprime quelques réflexions sur la conception d’API basées sur son expérience de Spec Lead de la JSR 303 (Bean validation) et Project Lead sur Hibernate Search.

Ce ne sont pas que des éléments techniques. Il nous parle des relations pas toujours faciles avec les utilisateurs, de la difficulté de produire des interfaces simples à utiliser, de la difficulté de faire évoluer les APIs. Il revient sur les erreurs qu’il a pu faire et les leçons qu’il en a tirées. La fin est plus technique avec la mise en perspective de différentes techniques d’implémentation et comment elles répondent aux problèmes qu’il vient d’exposer. Et en plus tout cela est fluide et facile à comprendre.

Voici quelques éléments que nous avons retenus.

Une API doit être conçu pour être utilisable par des humains avec un support des IDEs. Idéalement les noms de classes et méthodes doivent être suffisamment clairs pour pouvoir être utilisables même sans documentation.

Sa règle d’or est “Si on ne tombe pas on ne s’améliore pas”. C’est grâce à ses erreurs qu’il a pu remettre son travail en cause et s’améliorer.

Les bonnes pratiques qu’Emmanuel Bernard préconise pour la conception d’API sont :

- utiliser ses APIs sur de vrais projets, un test n’est pas suffisant,
- faire en sorte que son API soit compréhensible avec une sémantique simple et intuitive,
- définir une DSL interne pour faciliter l’utilisation de l’API,
- rendre les cas d’utilisation principaux très simples à implémenter,
- lire Effective Java de Joshua Bloch qui fournit plusieurs exemples et bonnes pratiques pour le développement en Java.

### La 3ième mi-temps

Cinq d’entre nous étaient à la 3ième mi-temps du JUG. Une occasion supplémentaire de répondre à des questions, de rappeler les contacts pour motiver sa femme ou sa collègue à nous rejoindre et de discuter technique avec d’autres Juggers.

Pour plus de détails sur la soirée “Emmanuel Bernard”, nous vous recommandons quelques articles :

- [Le résumé du Touilleur Express (le blog de Nicolas Martignole)](http://www.touilleur-express.fr/2010/03/10/soiree-emmanuel-bernard-au-paris-jug/)
- [La wave du Coder’s Breakfast (le blog d’Olivier Croizier)](http://thecodersbreakfast.net/index.php?post/2010/03/06/Paris-JUG-Emmanuel-Bernard)

**Les commentaires ne marchent pas très bien pour le moment. Nous avons ouvert une discussion [ici](http://groups.google.com/group/duchessfr/browse_thread/thread/e843ebbc8fe7dac?hl=en) pour que vous puissiez laisser vos commentaires.  
**
