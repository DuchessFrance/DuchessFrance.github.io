---
layout: "post"
author: 
  - "acrepet"
title: "Parlons tests d'intégration avec Nicolas Fränkel"
date: "2015-02-16"
categories: 
  - "les-conferences"
---

| "Vous avez atteint le Graal de 100% de Code Coverage ? Bravo ! Pourtant, vous rencontrez encore des bugs lors du lancement de l'application. Vous pratiquez déjà les Tests d'Intégration ? Bravo également ! Pourtant, vous devez les corriger sans cesse car ils sont instables." Si vous voulez quelques pistes pour écrire de "bons" Tests d'Intégration, rendez-vous au talk de [Nicolas Fränkel](http://blog.frankel.ch/me) le 24 février au Lyon JUG. Dans cette présentation, Nicolas parle notamment de leur complémentarité avec les Tests Unitaires, de comment améliorer leur fiabilité et des outils pour arriver à cela. |

****[![Nicolas](http://www.lyonjug.org/_/rsrc/1417861094436/speakers/2015/frankel.jpg?height=150&width=150)](http://blog.frankel.ch/me)****

En attendant de faire sa présentation, voici quelques questions concoctées par la team du Lyon JUG dont les réponses dévoilent une partie de sa présentation... Chuuut nous n'en disons pas plus...

**La team du Lyon JUG : Peux-tu te présenter ?**

**Nicolas** : ​Je m'appelle Nicolas Fränkel, et je suis... Lyonnais. J'ai travaillé comme développeur Java pour divers clients régionaux dont Casino, iBP, Carrefour, Groupama, le GIPS, etc. Avec un peu de malchance, vous avez même maintenu du code que j'ai développé. Dans ce cas, merci de ne pas l'ébruiter ! Depuis quelques années, j'ai​ déménagé vers l'Est pour goûter aux joies de la Haute-Savoie, toujours en tant que consultant. Je suis actuellement employé d'hybris, un éditeur de logiciel d'e-commerce et je travaille chez Nespresso.

**La team du Lyon JUG : tu vas nous parler de tests d'intégration... Mais de quoi s'agit-il exactement ?**

**Nicolas** : ​​Je pense que tout le monde est maintenant familiarisé avec les tests unitaires où l'on teste une classe "en isolation".​ Malheureusement, tester chacune des classes en isolation ne peut démontrer le bon fonctionnement de l'ensemble. C'est comme si l'on testait uniquement toutes les pièces d'une voiture séparément et qu'on en déduisait qu'elle pouvait être manufacturée. Je ne suis pas spécialiste automobile, mais je suppose que des groupes de pièces sont testés en amont : le bloc moteur, l'arbre de transmission, les roues, etc. puis la voiture est amenée sur circuit pour des tests plus complets. Les tests d'intégration s'apparentent à ces tests de collaboration entre plusieurs pièces. Dans le monde du logiciel, on va tester la collaboration de plusieurs classes.

**La team du Lyon JUG : Tu peux nous éclairer un peu sur le jargon : tests d'intégration, BDD, tests d'acceptance ?**

**Nicolas** : ​J'ai le sentiment qu'il existe de nombreuses définitions, certaines complémentaires, d'autres disjointes, je ne vais donc pas tenter de donner une définition savante mais uniquement ma propre interprétation. La plupart des développeurs sont d'accord sur le fait que le test unitaire teste une unité en isolation. Les désaccords viennent dans la définition de l'unité : pour ma part, en Java, l'unité est la classe. A partir du moment où on teste plus d'une classe, je parle pour ma part de test d'intégration. Toutefois, test unitaire et test d'intégration restent du domaine technique pour une validation par le développeur.

A partir du BDD, on adopte un point de vue métier, dans la réalisation d'un use-case. J'ai peu d'expérience dans ce domaine, j'ai juste un peu "joué" avec JBehave et je suis familiarisé avec le discours de [John Ferguson Smart](https://www.java.net/blog/johnsmart) (si, si, ce n'est pas une typo). Pour lui, le BDD est l'unicité des spécifications, du code et des tests. C'est un but louable, mais dans aucun de mes projets précédents je n'ai pu voir une telle maturité.

Si le BDD implique encore les développeurs, les tests d'acceptance sont du domaine des utilisateurs et manuels. Il s'agit alors de déterminer si le logiciel réalisé est "bon pour le service".

**La team du Lyon JUG : pourquoi les tests d'intégration sont souvent la cinquième roue du carrosse sur un projet ? Quels arguments aurais-tu pour les mettre sur un projet ?**

**Nicolas** : ​​Les tests d'intégration sont généralement caractérisés par les propriétés suivantes : ils sont lents et fragiles à exécuter et coûteux à développer, autant de raisons qui conduisent à les mettre de côté. C'est une conclusion typique ​d'une approche orientée coût. L'objectif consiste donc à développer des tests d'intégration dont le ROI est élevé, donc tester en priorité les modules complexes et critiques. Il est également indispensable de mettre en place des techniques de mitigation de la fragilité, qui dépendent de la nature du test (par exemple, l'interaction avec une base de données).

Dans la plupart des cas, la première expérience avec les tests d'intégration se solde par un échec cuisant : le build échoue régulièrement pour des raisons d'instabilité de l'environnement, et au bout d'un certain temps, le test est simplement ignoré. Il est donc nécessaire d'être soit indépendant au maximum de l'environnement, soit de garantir la stabilité de ce dernier.

**La team du Lyon JUG : Avec quels outils vas-tu faire ta présentation ?**

**Nicolas** : ​Je préfère brosser une vue d'ensemble que de faire une démo sur un point particulier, donc ce sera PowerPoint (désolé).

**La team du Lyon JUG : les tests d'intégration reposent souvent sur le fait de disposer d'un jeu de donnees de test béton... Mais qui s'avère galère à maintenir. Des trucs à conseiller sur ce point?**

**Nicolas** : ​​Effectivement, les tests orientés base de données nécessitent un jeu de test "béton". Pour ma part, j'en suis venu à séparer mes jeux de données en 2 groupes : les données de référentiel (p.e. la liste des pays) et les données propres à un test. A partir de là, je limite les données propres à un test au maximum et je nomme le fichier d'initialisation de la même manière que le test pour le repérer plus facilement en cas de maintenance. De cette manière, lorsque je modifie un jeu de données pour un test, je n'ai pas d'effet de bord sur les autres tests.

**La team du Lyon JUG : les tests d'intégration c'est cool mais c'est souvent long à exécuter... Tu fais quoi toi? Tu les vires de ton processus d'intégration continue ? Tu as plusieurs processus d'intégration : un standard tout le temps exécuté et un pour les tests d'intégration moins souvent exécuté ?**

**Nicolas** : ​Cela revient à demander pourquoi on teste. Pour ma part, il y a 2 raisons principales : d'une part, fournir au développeur un feedback extrêmement rapide sur l'état de ses développements, d'autre part, garantir que l'ensemble des développements n'introduit pas de régressions.

Il faut donc décorréler les deux problématiques. Quelle chance, l'outil de build le plus utilisé dans le monde Java (et non, je ne parle pas de Gradle) gère de manière native deux phases différentes : "test" et "integration-test". Il suffit juste de configurer Maven pour qu'il exécute chaque test dans la bonne phase. Le développeur pourra donc lancer les tests unitaires (et les tests d'intégration rapide) et avoir un feedback rapide. Côté intégration continue, on pourra configurer deux builds, un à chaque commit pour émuler le test du développeur et un hourly pour tout exécuter. Mais il m'est déjà arrivé pour des raisons d'instabilité de l'environnement avec des tests Sélénium d'avoir un projet dédié. Bienvenue dans le monde des tests d'intégration : tout est dépendant du contexte !

**La team du Lyon JUG : il y a quelque temps un "no mock mouvement" a été lancé : l'idée était de moins ou plus faire de tests unitaires à base de Mock (durs à maintenir) mais plutot des tests d'intégration. Es-tu pour cette approche?**

**Nicolas** : ​J'en ai entendu parler mais ​je me demande encore si ce n'était pas une plaisanterie.​ S'il s'agit d'une initiative sérieuse, j'y vois un grand risque. Pour reprendre l'analogie du test automobile, cela reviendrait à conduire la voiture pour un galop d'essai sans avoir testé la conformité des boulons... Si tout se passe bien, parfait. Si un boulon fait défaut, alors non seulement beaucoup de temps/d'argent auront été dépensés pour rien mais il faudra en plus chercher la cause de la défaillance, donc encore plus de temps/d'argent dépensé. Tout ça pour économiser le test des boulons !

De fait, la plupart des sources s'accordent pour avoir une hiérarchie de tests "en pyramide" : en bas de la pyramide, les tests les plus nombreux, les plus rapides, les plus complets et les moins chers. En haut, les tests les moins nombreux, les plus lents, focalisés sur les cas nominaux et les plus coûteux. Mais étant pragmatique, je suis curieux d'avoir des retours d'expérience d'un vrai projet qui aurait adopté une pratique "no mock".

**Merci Nicolas!**

_Cet interview a été préparé par la team "élargie" du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/cedric_exbrayat), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler) et [Cyril LACOTE](http://twitter.com/clacote)_.__

**Les inscriptions pour la session de Nicolas au [Lyon JUG](http://www.lyonjug.org) le 24 février sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/tests-integration) pour vous inscrire!**
