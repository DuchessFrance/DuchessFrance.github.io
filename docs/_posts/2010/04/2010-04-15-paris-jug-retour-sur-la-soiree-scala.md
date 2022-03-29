---
layout: "post"
author: 
  - "edijoux"
title: "Paris Jug : retour sur la soirée Scala"
date: "2010-04-15"
categories: 
  - "les-conferences"
tags: 
  - "paris-jug"
  - "scala"
---

| ### L’AvantJUG |

Pour la seconde édition de l’AvantJUG,  nous avons eu l’honneur d’avoir un invité surprise [Antonio Goncalves](http://antoniogoncalves.org/xwiki/bin/view/Main/WebHome). Il est venu discuter avec les Duchess pendant une demi heure avant de courir aux préparations de la soirée. De nouvelles Duchess ont rejoint le groupe pour cette session. Nous étions bien moins nombreuses que le mois précédent.  Est ce à cause du thème de la soirée ?  Après avoir partagé nos points de vue sur Scala, nous nous sommes rendues à la soirée pour découvrir ce que ce langage promet.

### Première partie de soirée : Introduction à la programmation fonctionnelle avec Scala

Avant de commencer la soirée, un petit mot sur la conférence Agile France par Sébastien Douche elle aura lieu du 31 Mai au 1 Juin 2010. Vous trouverez toutes les informations à l’adresse suivante : [http://conf.agile-france.org/](http://conf.agile-france.org/).

Antonio poursuit en remerciant les [sponsors du ParisJUG](http://parisjug.org/xwiki/bin/view/Main/Sponsors) sans qui les soirées ne seraient pas possible. Ensuite il présente sa nouvelle recrue qui a rejoint récemment l’équipe du ParisJUG : notre Duchess [Claude Falguière](http://twitter.com/cfalguiere) ! Après une rapide présentation de son parcours et de JDuchess par la même occasion ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif) , la présentation débute.

[![20100413_scala_IMG_0185_session1](/assets/2010/04/2010-04-15-paris-jug-retour-sur-la-soiree-scala/20100413_scala_IMG_0185_session1-300x225.jpg "20100413_scala_IMG_0185_session1")Sadek Drobi](http://sadekdrobi.com/), le premier speaker de la soirée, nous présente les concepts. Le but de sa présentation est de présenter les bases de la programmation fonctionnelle pas à pas. Moins formelle que les présentations habituelles, Sadek a pris le parti de présenter des exemples au fil de l’eau dans son IDE préféré.  Il commence par les types en présentant le typage des données dans Scala et notamment le principe du [Duck Typing](http://fr.wikipedia.org/wiki/Duck_typing).  Il explique comment marchent les fonctions qui sont finalement toutes simples : une fonction prend n’importe quoi et renvoie n’importe quoi.  N’importe quoi signifie un type (int, string …) ou une même une fonction.  Un exemple amusant est l’utilisation d’une fonction permettant d’itérer sur chaque élément d’une liste par exemple :  
`def map[A,B](list:List[A], f:Function[A,B]):List[B] {  
for (element &lt;- list) yield f(A) } def main(args:Array[String]) { println(map(List(1,2,3), (i:Int)=&gt;i+1))  
}`  
La fonction `[map](http://www.scala-lang.org/docu/files/api/scala/Iterable.html#map%28%28A%29%3D%3EB%29)` prend une liste et une fonction en paramètre, et applique la fonction sur chaque élément de la liste. Bien pratique, pour réaliser des traitements sur les listes.

**Evitez simplement les problèmes de nullité !**

Sadek nous présente un exemple permettant d’éviter les problèmes de nullité en Scala :  
`abstract class Maybe[A] (a:A) {  
def map[A,B](f:Function[A,B]) : Maybe[B] = {  
this match {  
case Nothing() =&gt; Nothing()  
case Just(a) =&gt; Just( f(a) )  
}  
}  
}  
case class Nothing[A]() extends Maybe[A]  
case class Just[A] (a:A) extends Maybe[A]`

Le principe est que Maybe est une classe qui va englober la classe A qui peut représenter une classe quelconque. Celle ci sera manipulée dans la fonction map. Elle attend en entrée un objet,  le mot clé match permet de filtrer les données :

- Si il n’y a rien il se fait wrapper par Nothing,
- Sinon il se fait wrapper par Just et on lui applique la fonction.

Pour résumer Nothing et Just vont wrapper les données en entrée, on va ainsi éviter les cas null qui vont passer dans le cas Nothing. Le concept n’est pas forcément évidemment à comprendre,  je l’avoue.

Avec l’abstraction que permet Scala, il est possible pourquoi pas de créer des listes de fonctions. L’application de la méthode `[foldLeft](http://www.scala-lang.org/docu/files/api/scala/Iterable.html#foldLeft%28B%29)` sur la liste permet avec un objet initial d’appliquer la liste de fonction pour faire évoluer l’objet. Cela peut être très puissant pour réaliser des gros calculs !

Une fonction est défini au fil de l’eau, réutilisable, simple et puissant pour les calculs laborieux par exemple.  Et notamment grâce aux [fonctions d’ordre supérieurs](http://fr.wikipedia.org/wiki/Fonction_d%27ordre_sup%C3%A9rieur) (HOF : High-order function)  (ex : `compose`, `reduceLeft`, …) que fournissent Scala.  
La fonction `compose` permet de définir une fonction de fonction comme le “f rond g” que l’on a tous connu au lycée.

**Les strings**

Comme en Perl, la manipulation est aussi simple car Scala fournit un batterie de fonctions permettant de les traiter assez facilement. Le temps est écoulé. C’est un petit peu frustré de ne pas avoir pu nous apporter plus d’exemples que Sadek s’arrête pour la pause.

### Le buffet![20100413_scala_IMG_0187_buffet1](/assets/2010/04/2010-04-15-paris-jug-retour-sur-la-soiree-scala/20100413_scala_IMG_0187_buffet1-150x150.jpg "20100413_scala_IMG_0187_buffet1")![20100413_scala_IMG_0188_buffet2](/assets/2010/04/2010-04-15-paris-jug-retour-sur-la-soiree-scala/20100413_scala_IMG_0188_buffet2-150x150.jpg "20100413_scala_IMG_0188_buffet2")![20100413_scala_IMG_0194_buffet3](/assets/2010/04/2010-04-15-paris-jug-retour-sur-la-soiree-scala/20100413_scala_IMG_0194_buffet3-150x150.jpg "20100413_scala_IMG_0194_buffet3")

C’est maintenant le moment du buffet, tout le monde est réuni au sous sol de l’ISEP autour d’un verre et de petites collations pour faire le point sur cette première partie. Complexe ? Différent de Java ? Ce nouveau paradigme qu’apporte Scala est au milieu de nombreuses conversations.

### Seconde Partie : Scala

Scala est un langage de programmation fonctionnelle conseillé par le papa de Java [James Gosling](http://nighthacks.com/roller/jag/) alors pourquoi ne pas le présenter au ParisJUG ?

Après la théorie de la première partie, [Nicolas Jozwiak](http://www.parisjug.org/xwiki/bin/view/Speaker/NicolasJozwiak) et [Romain Maton](http://www.parisjug.org/xwiki/bin/view/Speaker/RomainMaton) veulent présenter les pratiques de Scala par des exemples simples et concrets.

Pour commencer une petite présentation historique sur Scala. Son créateur [Martin Odersky](http://lamp.epfl.ch/~odersky/) a débuté en créant le langage [Pizza](http://en.wikipedia.org/wiki/Pizza_%28programming_language%29) qui fournit à Java les Generics et le [Pattern Matching](http://fr.wikipedia.org/wiki/Filtrage_par_motif). Frusté par les limites de Java, il a créé Scala.  Scala est un langage fonctionnel pouvant tourner sur la JVM. En Scala, tout est objet, la nullité n’existe pas et Scala est immuable. Il est fortement typé et peut déduire les types en fonction des données qu’on lui fournit. Le traitement des listes est assez puissant si l’on veut les manipuler. Et la gestion des objets XML est beaucoup plus simple.

En pratique Nicolas s’est inspiré de son projet dans le domaine de la finance pour nous présenter la simplicité que peut apporter Scala. Grâce au [Pattern Matching](http://fr.wikipedia.org/wiki/Filtrage_par_motif) entre autre il a pu reconstituer le pattern Visitor très utilisé en finance de marché. Le code Scala comparé à Java est bluffant : beaucoup moins de code en Scala !

**Les acteurs (API Actor)**  
C’est un objet qui vit dans la JVM, il contient une mail box dans lequel il va recevoir des messages et faire les traitements adéquats.![20100413_scala_IMG_0209_session2_2](/assets/2010/04/2010-04-15-paris-jug-retour-sur-la-soiree-scala/20100413_scala_IMG_0209_session2_2-300x225.jpg "20100413_scala_IMG_0209_session2_2")

En Java, on utilisait les threads pour les accès concurrents à une ressource. Lors de la lecture aucun problème mais pour l’écriture il faut poser un lock. Avec les acteurs, l’échange des données se fait par message et plus de problème de concurrence.  
`val printActor = actor {  
loop {  
react {  
// traitement : envoi de message pour le traitement.  
}  
}  
}`

C’est une autre façon de penser les accès concurrents.

**Les traits**  
Il permet d’ajouter un comportement supplémentaire à un objet voire même plusieurs comportements en enchaînant les définitions de traits.

Exemple :  
myCar = new MyCar with ElectricalCar with DieselCar

**Les IDEs pour Scala**

![20100413_scala_IMG_0205_session2_1](/assets/2010/04/2010-04-15-paris-jug-retour-sur-la-soiree-scala/20100413_scala_IMG_0205_session2_1-300x225.jpg "20100413_scala_IMG_0205_session2_1")Il existe des plugins disponibles pour nos IDEs préférés.

- Plugin Eclipse : il fournit la coloration syntaxique, compatible Java mais il peut être amené à planter violemment sans prévenir (le bug n’est toujours pas corrigé pour le moment).
- Plugin IntelliJ : le plugin est très bien mais un peu lent à la compilation.
- Plugin Netbeans : peu conseillé pour le moment l’installation est douloureuse.

**Les frameworks**

- [ScalaTest](http://www.artima.com/scalatest/) : pour réaliser les tests
- [Akka](http://akkasource.org/) : un actor mais en plus puissant, 2 à 3 fois plus puissants que l’API Actor intégré dans Scala. La communauté autour de ce framework est très active ce qui lui permet de proposer des modules comme scheduler, Comet, REST, security …
- [Lift](http://liftweb.net/) : un framework web Scala qui promet de séparer la couche présentation du code métier, le hic c’est que l’on retrouve du code présentation dans le code métier. Le framework est déconseillé aux débutants Scala, mieux vaut maitriser le langage avant d’utiliser Lift.

**Pourquoi faudrait il s’intéresser à Scala ?**

D’après Nicolas et Romain, Scala permet de fournir un code plus concis, le développement est rapide. Les tests réalisés sont plus proches du métier et les problèmes de modélisation se gèrent plus simplement. Enfin la de la concurrence peut se réaliser au travers de l’API Actor qui semble très abordables pour les développeurs.

**Les Difficultés ou Challenge (selon les points de vue)**  
Ce langage vous pouvez le tester pour votre enrichissement personnel. Ce nouveau paradigme et surtout penser fonctionnel peut vous permettre d’appréhender les problèmes différemment.

**Les freins à son adoption**  
La maîtrise du langage peut être un gros problème et le code peut devenir assez complexe à cause de la syntaxe et les raccourcis de code ([sucre syntaxique](http://fr.wikipedia.org/wiki/Sucre_syntaxique)). La courbe d’apprentissage risque d’être importante et l’intégration avec Java peut être laborieux.  Pour les applications stratégiques, il peut y avoir des réticences à intégrer un nouveau langage (les SI n’apprécient pas beaucoup les nouveautés dans un projet critique).

**Les nouveautés Scala 2.8**

Pas de compatibilités binaires avec l’ancienne version (la 2.7) mais voici quelques nouvelles fonctionnalités :

- une nouvelle API collection,
- REPL amélioré,
- paramètres nommés par défaut,
- nouveaux contrôles (breakable et break).

**Qui utilise Scala dans la vraie vie ?**

Je ne citerai pas tout le monde mais on peut parler de :

- Twitter pour des raisons de performance (précédemment en Ruby) ce sont les acteurs envoient des tweets au follower.
- [EDF](http://www.scala-lang.org/node/1658) pour migrer des calculs lourds en Scala

Vous souhaitez aller plus loin ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif) , voici quelques liens :![20100413_scala_IMG_0222_3iemmitemps](/assets/2010/04/2010-04-15-paris-jug-retour-sur-la-soiree-scala/20100413_scala_IMG_0222_3iemmitemps-150x150.jpg "20100413_scala_IMG_0222_3iemmitemps")

[www.scala-lang.org](www.scala-lang.org)  
[http://www.codecommit.com/blog/category/scala](http://www.codecommit.com/blog/category/scala)  
Pour revivre la soirée, vous pouvez également visualiser la [Wave d’Olivier Croisier](http://thecodersbreakfast.net/index.php?post/2010/04/11/Paris-JUG-Scala) où il a retranscrit en direct les présentations.

### La troisième mi temps

La soirée s’est conclu par la troisième mi temps qui a eu lieu au Vavin, ça a été une bonne occasion pour discuter avec les speakers Sadek, Romain et Nicolas qui étaient présents. Et de rencontrer de nouvelles têtes. Puis tout le monde s’est séparé en attendant la prochaine soirée [“Share, Build & Deploy”](http://parisjug.org/xwiki/bin/view/Meeting/20100511).
