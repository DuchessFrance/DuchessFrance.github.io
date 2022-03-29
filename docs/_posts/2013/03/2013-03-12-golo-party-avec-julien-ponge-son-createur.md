---
layout: "post"
author: 
  - "acrepet"
title: "Golo party avec Julien Ponge, son créateur"
date: "2013-03-12"
categories: 
  - "les-conferences"
tags: 
  - "golo"
  - "jvm"
  - "langage"
---

| Le 19 mars prochain, [Julien Ponge](http://twitter.com/jponge) est invité par le [Lyon JUG](http://www.lyonjug.org) pour une session sur un nouveau langage sur la JVM qu'il vient de créer : le prénommé Golo! Vous avez déjà pu découvrir Julien puisqu'il a déjà été invité deux fois par le Lyon JUG. Une [première fois](http://www.duchess-france.org/lanniversaire-de-lyon-jug-a-la-decouverte-de-izpack-avec-julien-ponge/) pour le 2ième anniversaire du Lyon JUG, soirée où les open sourceurs lyonnais étaient à l'affiche, Julien présentait son outil opensource [IzPack](http://izpack.org/), solution pour le packaging, la distribution et le déploiement d'applications pour la plateforme Java (et oui Julien n'en est pas à sa première création!). Julien a été également invité par le Lyon JUG pour parlé de [Java 7](http://www.duchess-france.org/java-7-ping-pong-avec-alexis-moussine-pouchkine-et-julien-ponge/) avec [Alexis Moussine-Pouchkine](https://twitter.com/alexismp). |

[![Follow Julien on Twitter](/assets/2013/03/2013-03-12-golo-party-avec-julien-ponge-son-createur/at-devoxx.png)](http://twitter.com/jponge)

[**@jponge**](http://twitter.com/jponge "Follow Julien on Twitter")

_Cet interview a été préparé conjointement par la team élargie du Lyon JUG : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)._

**La team du Lyon JUG : Même si tu es une star auvergnate et internationale, peux-tu te présenter? Notamment tes activités a l'INSA et celles en dehors.**

**Julien**: Non, non et non, je ne suis pas une star :-)

Je suis en effet Maitre de Conférences à l'INSA de Lyon. J'effectue mes recherches au sein du laboratoire CITI, et j'enseigne au département Télécom. Coté recherche je suis dans un groupe qui s'intéresse aux middlewares pour systèmes dynamiques, ce qui me pousse à développer une thématique machines virtuelles / langages / middlewares. Coté enseignement j'interviens dans des matières comme le design et la conception de middlewares, Java (étonnant), le génie logiciel (tests, tests, tests) ou encore le développement mobile.

Mes missions ne s'arrêtent pas là : nous avons aussi un rôle de transfert technologique, conseil, vulgarisation, relations industrielles, montages de projets, ... bref pas mal de casquettes avec lesquelles jongler :-)

En dehors de mon métier déjà bien prenant j'ai aussi un long passé et passif dans l'écosystème Java / opensource, sans oublier le troll, ce nectar de notre profession dont il faut abuser avec délectation.

Si j'oublie des détails je suis certain que votre moteur de recherche favori les aura indexé, lui.

**La team du Lyon JUG : Tu as un statut particulier dans l’écosystème Java : tu vis entre les deux mondes de l’académie et de l’industrie, en étant à la fois un universitaire accompli (enseignant-chercheur), le créateur de projets open-source très utilisés dans l’industrie (IzPack), et un contributeur officiel à Java Magazine d’Oracle. Ca doit être formidable d’avoir un pied dans ces deux mondes, non?**

**Julien**: Je crois beaucoup en la valeur ajoutée de combiner à la fois des compétences recherche \*et\* ingénierie. C'est l'essence même de la R&D, donc oui c'est formidable. L'expérience enseignement est également très fructueuse. Au delà de l'exercice de communication qui est en soit un challenge, enseigner demande de synthétiser, discerner l'essentiel de l'accessoire.

La collaboration avec Oracle pour la rédaction d'articles techniques est un super challenge, surtout dans la mesure où les reviews sont faites par des ingénieurs des équipes produit (Java, JVM, GlassFish). Discuter invokedynamic avec un des créateurs de JRockit, ça n'a pas de prix :-)

Pour avoir fait une partie de mes études en Australie, je note juste que la France reste trop attachée à l'étiquette des diplômes, surtout en mettant sur un piédestal les bac+5 d'école d'ingénieur. Le secteur privé ne tire pas profit des profils ayant reçu une formation à la recherche et c'est bien dommage. En tous cas à titre personnel je crois plus à la valeur de l'expérience et des réalisations qu'aux diplômes.

**La team du Lyon JUG : Tu as créé Golo, un autre langage sur la JVM. Pourquoi encore un autre langage? Les autres ne te plaisaient pas, on pensait que tu adorais Scala par exemple.. ;-)**

**Julien**: Joli lancer de troll, bien essayé :-)

En réalité Golo n'est pas une réaction épidermique face à tel ou tel langage. Je suis un fervent défenseur du développement polyglotte, et le choix d'un langage pour un problème ou sous-problème est surtout une question de contexte : type d'algorithmes, écosystème de frameworks / bibliothèques, budget, expérience des équipes, etc.

Les travaux de recherche que nous avons mené avec Frédéric Le Mouel au CITI comprennent en particulier JooFlux, un agent JVM pour remplacer à chaud du code et injecter des aspects. Nous avons basé notre approche sur un usage détourné de invokedynamic, qui est fait à l'origine pour faciliter l'implémentation de langages dynamiques sur la JVM.

De fil en aiguille, j'ai eu envie de prototyper un langage basé sur un runtime invokedynamic, principalement pour monter en compétence sur la compréhension des certains aspects du JIT de la JVM, car je suis encore jeune sur le domaine des machines virtuelles. Quand le langage a pu exécuter cet exemple tant inutile que classique qu'est "Fibonacci", j'ai jeté un oeil aux performances... et du coup j'ai décidé de continuer sur ma lancée.

Le meilleur moyen de développer une expertise sur un sujet reste d'y faire toutes les erreurs possibles :-)

Au delà de l'exploration qui fait partie de mes missions essentielles, il y a aussi une justification perspicace pour nos recherches. Nous faisons du middleware dynamique, ce qui nous amène entre autres choses à proposer des modèles de programmation ou encore modifier des applications déjà compilées. Il nous est arrivé plusieurs fois de vouloir apporter des modifications à des langages existants, mais ce n'est pas toujours pratique. Cela peut être difficile vu la taille des bases de code de ces langages, mais on peut aussi se heurter à des langages dont le scope / la sémantique sont un peu plus larges que ce nous souhaiterions.

Dans ce cadre il y a du sens à proposer un langage simple, avec seulement des constructions explicites, et dont les entrailles sont rapidement compréhensibles par un développeur Java confirmé. Il ne faut pas non plus perdre de vue que nous pouvons être épaulés par des étudiants dans nos recherches, et que nous ne pouvons pas perdre 3 mois sur 4 d'un projet standard à les faire "juste" monter en compétence sur le fonctionnement d'un langage dynamique.

Par effet de bord Golo se veut simple, léger (jar de ~200k), facile à embarquer et modifier... et nous pensons que cela pourra plaire à certains membres de la communauté Java qui sont les bienvenus à nos cotés tant qu'ils acceptent la règle essentielle de Golo : "ne pas se prendre trop au sérieux" :-)

**La team du Lyon JUG : Créer ton langage, est-ce une façon d’exprimer ta déception vis-à-vis des évolutions de Java (le langage) ? Ou, plus directement, penses-tu que Java a un avenir ?**

**Julien**: Je n'ai pas de déception pour Java le langage. Il est mûr et se prête bien à l'industrialisation. Son écosystème est riche, son runtime très performant, ... Java a un bel et long avenir devant lui, même si il est régulièrement chahuté (ce qui est soin est très saint).

Je regrette néanmoins 2 choses à court terme :

1\. le fiasco Jigsaw, 2. les évolutions de java.util pour les lambdas, j'ai peur que les APIs résultantes manquent d'élégance à vouloir trop concilier conservatisme et envie de faire comme le langage X ou Y.

À la fin il ne faut pas oublier l'essentiel : une application doit chercher à répondre à un besoin, et ce n'est pas le choix d'un langage ou d'un framework qui apporte la solution :-)

**La team du Lyon JUG : Quel langage sur la JVM serait ta référence, en 2013 ?**

**Julien**: Forcément je sors Golo de l'équation, donc Java :-)

Pour le choix parmi le reste des langages statiques, dynamiques ou hybrides, je laisse chacun juger en fonction de ses affinités.

**La team du Lyon JUG : Peux-tu présenter les grands concepts de Golo? Qu’as tu découvert de plus passionnant en le créant?**

**Julien**: Ce qui est amusant est que Golo est fait par des chercheurs mais ne veut surtout pas être un langage de chercheurs :-)

Golo évite tout ce qui est implicite. Il est non-typé, et on écrit principalement des fonctions. On peut définir des objets dynamiques, et plus tard il y aura des classes / value objects à part entières.

L'intéropérabilité avec Java est au coeur de Golo. On utilise les classes du JDK, tout simplement, comme dans cet exemple Swing :

\-----------------------------

module test

import javax.swing

import javax.swing.WindowConstants

function main = |args| {

  let frame = JFrame("Hello world")

  frame: setDefaultCloseOperation(EXIT\_ON\_CLOSE())

  let label = JLabel("Hello world")

  label: setFont(label: getFont(): deriveFont(128.0\_F))

  frame: getContentPane(): add(label)

  frame: pack()

  frame: setVisible(true)

}

\-----------------------------

Une fonctionnalité que j'apprécie : les pimps. Cela ressemble aux méta classes ou aux classes ouvertes de Ruby. Cela permet "d'ajouter" des méthodes à des classes existantes. À titre d'exemple les pimps standards de Golo ajoutent filter / map / reduce aux collections de java.util, et des méthodes comme append(a, b, c) ou head() / tail() sur des listes.

Voici un extrait des pimps standards sur les listes Java :

\-----------------------------

pimp java.util.List {

  function head = |this| -> this: get(0)

  function tail = |this| -> this: subList(1, this: size())

  function unmodifiableView = |this| -> java.util.Collections.unmodifiableList(this)

  function filter = |this, pred| {

    let filtered = this: newWithSameType()

    foreach (element in this) {

      if pred(element) {

        filtered: append(element)

      }

    }

    return filtered

  }

  # (...) et bien plus !

}

\-----------------------------

ce qui permet de faire des choses de ce genre :

\-----------------------------

let aboveTwo = LinkedList(): append(1, 2, 3): filter(|x| -> x >= 2)

\-----------------------------

Ces ajouts se font de manière explicite, en important des pimps dans un module, ce qui évite les conflits non-voulus en mélangeant du code de différentes sources qui chercheraient à ajouter des méthodes sur la même classe.

Le langage est loin d'être fini. Idem pour son SDK. On peut néanmoins jouer à faire des choses simples et rapidement. J'ai ainsi ajouté les workers qui permettent de faire des traitements asynchrones par passe de message. Cela ressemble aux workers web, ou aux isolates de Dart (mais sans une isolation réelle).

Ce qui est passionnant c'est d'assembler les briques, tester, et lancer des évaluations de performance. Un langage est un type de projet un peu spécial, et c'est toujours très excitant à chaque pas :-)

**La team du Lyon JUG : Quand est prévue la première release publique ? Sous quelle licence ? Et qui sont les contributeurs?**

**Julien**: Golo sera mis à disposition sous Licence Apache 2.0 "avant la fin du mois de mars 2013". Ce ne sera pas encore une release mais qui le souhaite pourra tester des snapshots.

Pour l'instant j'ai fait appel à quelques testeurs de confiance, dont des Lyonnais débridés :-) Leur feedback est très précieux et je tiens à les remercier (ils auront une belle dédicace en temps voulu). Certains me remontent des bugs, d'autres me notifient juste "que ça marche", d'autres essaient des choses qui vont dans l'esprit du langage ou non, ... c'est très diversifié ! Une chose intéressante est que les retours permettent aussi de calibrer la documentation au vu des expériences des testeurs.

 

### **Merci Julien!**

 

**Les inscriptions pour la session de Julien sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/jdk8---golo). A noter que le même soir, Sylvain Mougenot proposera une session sur les Lambdas de Java 8!**
