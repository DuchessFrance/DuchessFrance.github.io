---
layout: "post"
author: 
  - "cfalguiere"
title: "PSUG#1 La première du Scala User Group"
date: "2010-05-24"
categories: 
  - "les-communautes"
tags: 
  - "psug"
  - "scala"
  - "simple-build-tool"
---

| ![LogoScala](/assets/2010/05/2010-05-24-psug1-la-premiere-du-scala-user-group/LogoScala.png "LogoScala")Le Paris Scala User Group a fait sa première réunion le 18 mai.  50 personnes étaient inscrites et une bonne quarantaine étaient présentes parmi lesquelles quelques personnalités (Nicolas Martignole, Emmanuel Bernard, Sébastien Douche, Romain Maton par exemple). J’ai dignement représenté Duchess France dans cette première et j’espère que vous viendrez nombreuses (bon allez, nombreux aussi pour nos lecteurs) pour les suivantes. |

Merci à Benoît Dissert pour m’avoir transmis ses notes que j’ai partiellement utilisées et à Alexi Agahi pour ses photos. Je remercie également les personnes qui ont posté des liens où des informations complémentaires sur la mailing list su PSUG.

_Comme je connais très peu Scala, vous pouvez  lire cet article même si vous êtes débutants. Alexandre et les autres experts Scala n’hésitez pas à corriger ce qui serait faux._

## Présentation du Groupe

[![PSUG-mai-1](/assets/2010/05/2010-05-24-psug1-la-premiere-du-scala-user-group/PSUG-mai-1.jpg "PSUG-mai-1")](http://jduchess.org/duchess-france/files/2010/05/PSUG-mai-1.jpg)Le Paris Scala User Group a été créé par Alexis Agahi et Alexandre Bertails. Alexandre est bien connu par ici puisqu’il a déjà fait une [présentation du W3C au JUG](http://jduchess.org/duchess-france/paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-1/) en mai.

Si vous êtes motivés pour vous investir dans une communauté, ce groupe cherche des volontaires.

Le Paris Scala User Group a une communauté Google Group sous le nom [paris-scala-user-group](http://groups.google.com/group/paris-scala-user-group). Il a à ce jour 85 membres et je vous recommande de rejoindre ce groupe si Scala vous intéresse.

Pour cette première, [Xebia](http://www.xebia.fr/) a prêté une salle de 50 places dans ses locaux et nous a offert une collation.

## Le sujet du jour

Alexandre a voulu nous faire part de son retour d’expérience sur les projets qu’il réalise en Scala au [W3C](http://www.w3.org/). Plusieurs projets de son équipe sont faits en Scala ou en Lift, en particulier le nouveau [validateur CSS](http://jigsaw.w3.org/css-validator/).

Le thème qu’il a choisi aujourd’hui est l’injection de dépendance en Scala. Comme il a un tout petit peu oublié de présenter le thème avant de rentrer dans le vif du sujet il a fait une présentation après coup et je reprend donc simplement l’”introduction” qu’il a fait sur la mailing list.

- _le premier message était au sujet des frameworks Java. Déjà, ils fonctionnent en Scala. Mais il faut comprendre les problèmes que ça amène, en particulier le fait que ça peut introduire beaucoup d’erreurs car on tombe en dehors du système de type. De plus, ils sont trop intrusifs : soient ils apparaissent dans le code (annotations), soit il faut utiliser des setters (Spring/XML)… En tout cas, on ne visualise pas les dépendances dans le code métier._
- _j’ai donc cherché à montrer comment les traits de langage de Scala, avec un peu de réflexion, peuvent être utilisés pour arriver à la même chose. Le but est de ne pas sacrifier le typage, de pouvoir se reposer sur la phase de check du compilateur et d’exprimer les dépendances par des types et non la documentation._
- _la profusion des méthodes montrait qu’il n’y a pas aujourd’hui de solution vraiment satisfaisante, ce que je n’ai jamais cherché à cacher, puisque je cherche encore pour mes besoins personnels une solution “opérationnelle” et élégante en terme de modélisation. Par exemple : garder la sémantique introduite par les self-reference pour parler des environnements/dépendances à injecter._

Pour ses examples de code, il s’est inspiré du code Scala d’un outil d’interface à leur DVCS (et oui on boucle un peu en ce moment, voir aussi [les DVCS](http://jduchess.org/duchess-france/paris-jug-de-mai-build-share-deploy-jusquau-bout-de-la-nuit-2/) au JUG).   Même si leur choix s’est porté sur  Mercurial, le code ne dépend pas d’un DVCS en particulier …  jusqu’au moment où il faut tester.

L’exemple que nous avons étudié avec Alexandre  montre comment injecter les instances du DVCS et de l’environnement requis au moment du test soit en utilisation seulement les capacités de Scala et différents patterns, soit en utilisant [Guice](http://code.google.com/p/google-guice/) comme framework d’injection de dépendance.

## L’environnement de développement et les outils

La session a été l’occasion de discussion intéressantes sur les outils.

Alexandre a écrit un [tutorial](http://www.bertails.org/blog/scala_sbt_emacs) sur l’installation sous Linux d’un environnement de développement [Scala](http://www.scala-lang.org/) basé sur [SBT](http://code.google.com/p/simple-build-tool/) (Simple Build Tool) et [Emacs](http://www.gnu.org/software/emacs/) (ou vi).

_Si vous n’êtes pas sous Linux, il faudra un peut vous débrouiller mais a priori tout ça  fonctionne aussi avec les versions portées. Il y a quelques billets de Xebia qui traitent aussi de l’installation d’environnement pour Scala_

Comme il y avait beaucoup à dire sur les éditeurs de texte et SBT,  ils ont une section à part.

### Scala

S’il faut vous rafraichir un peu la mémoire sur Scala, vous pouvez vous reporter aux [présentations du JUG](http://jduchess.org/duchess-france/paris-jug-retour-sur-la-soiree-scala/) en avril. Le tutorial cité ci-dessus vous aidera à installer Scala.

### ScalaTest

[ScalaTest](http://www.scalatest.org/) permet d’écrire les tests unitaires pour Scala.

Un test très basique pour vérifier que l’environnement fonctionne.

`import org.scalatest.FunSuite

`

`class Test extends FunSuite {  
<div style="padding: 0px 20px 0px 20px">test("") {  
<div style="padding: 0px 20px 0px 20px">assert(true)</div>  
}</div>``}`

### Guice

[Guice](http://code.google.com/p/google-guice/) est un framework d’[injection de dépendance](http://fr.wikipedia.org/wiki/Injection_de_d%C3%A9pendances) léger. Même si ce framework est Java à la base, il peut être utilisé dans du code Scala.

## Emacs et les IDE

[Emacs](http://www.gnu.org/software/emacs/) est un éditeur de texte assez ancien sans support de la complétion par exemple.

### Alors pourquoi Emacs ?

![EmacsSnapshot](/assets/2010/05/2010-05-24-psug1-la-premiere-du-scala-user-group/splash-small.png "EmacsSnapshot") Alexandre aime bien Emacs qui est l’éditeur de référence du W3C. Il dispose d’une intégration avec SBT qui permet par exemple de se positionner dans le code à partir des messages d’erreur. Ce qui manque surtout c’est une intégration avec l’outillage de test. Il y a également un  module de templating de code pour Emacs,  [yasnippet](http://code.google.com/p/yasnippet/),  qui facilite l’écriture du code ([vidéo de démo](http://www.scala-lang.org/node/354))

Il n’a pas été convaincu par les plugins Scala des IDE comme Eclipse. Le typage est statique en Scala mais l’inférence de type donne parfois des résultats surprenants et complexes à déterminer pour les plugins. Les plugins ne gèrent pas toujours bien.

Les choses vont changer avec Scala 2.8 et la possibilité pour les IDE de s’interfacer avec le moteur Scala pour échanger des informations et faire de la complétion intelligemment.

De nouveaux outils arrivent et en particulier [ENSIME](http://github.com/aemoncannon/ensime), un projet Google Summer of Code, qui va proposer un nouvel environnement Scala pour Emacs. La vidéo de [démo](http://www.youtube.com/watch?v=A2Lai8IjLoY) est très impressionnante.

### Des alternatives ?

D’autres personnes dans l’assistance utilisent Eclipse avec le plugin Scala et semblent en être contents. Vous pourrez trouver [ici](http://www.scala-lang.org/node/91#ide_plugins) les plugins pour les différents IDE.

Francois Armand a également contribué sur la mailing list en fournissant des pointeurs pour utiliser Scala dans un environnement plus “familier”.

Il y a un plugin Scala pour eclipse, qui fonctionne de mieux en mieux (notez bien la tournure de la phrase). Il ne fonctionne qu’avec les dernière version de Scala (2.8), et il est dispo ici: [http://www.scala-ide.org/](http://www.scala-ide.org/)

Il y a aussi un plugin Maven/Scala, dispo ici: [http://scala-tools.org/mvnsites/maven-scala-plugin/](http://scala-tools.org/mvnsites/maven-scala-plugin/)

Et si tu veux vraiment télécharger plein de dépendances et faire du Scala-prêt-pour-l’entreprise, ca c’est le pom de base que j’utilise pour mes projets Scala: [http://fanf42.blogspot.com/2010/05/maven2-bootstrap-pomxml-for-scala-with.html](http://fanf42.blogspot.com/2010/05/maven2-bootstrap-pomxml-for-scala-with.html)

## SBT – Simple Build Tool

[Simple Build Tool](http://code.google.com/p/simple-build-tool/) est un outil dont la fonctionnalité est équivalente à [Maven](http://maven.apache.org/) : Il réalise les tâches nécessaires à la fabrication du produit (compilation, tests, etc) et gère les dépendances via [Ivy](http://ant.apache.org/ivy/).

[Ivy](http://ant.apache.org/ivy/) est un gestionnaire de dépendances. Il permet de trouver la version de librairie requise et de la télécharger dans le projet ainsi que ses dépendances. Ivy comme Maven gère un cache local.

### Pourquoi SBT ?

SBT est plus léger que Maven. Pour Scala il est préférable car il ne recompile pas tout à chaque fois contrairement à Maven.

C’est un outil qui prend de l’importance. Les nouveaux projets du W3C sont faits sur SBT et plusieurs projets Open Source sont passés à SBT.

Il est utilisé en Scala ici mais marche aussi pour Java, ainsi que pour utiliser des frameworks Scala tels que Lift.

[![sbt-tree-2](/assets/2010/05/2010-05-24-psug1-la-premiere-du-scala-user-group/sbt-tree-2.png "sbt-tree-2")](http://jduchess.org/duchess-france/files/2010/05/sbt-tree-2.png)SBT a repris les mêmes conventions que Maven. La structure du projet est à peu près la même. La gestion de dépendances est un peu plus souple et permet par exemple d’utiliser un zip comme repository.

### Comment configurer le projet SBT ?

Contrairement à Maven qui est configuré via des fichiers XML, SBT est configuré  
via un fichier de propriétés `build.properties` qui spécifie entre autre les versions à utiliser et via une classe Scala `Project.scala` qui décrit les dépendances du projet.

`import sbt._  
class Project(info: ProjectInfo) extends DefaultProject(info) {  
<div style="padding: 0px 20px 0px 20px">val scalatools = "scala-tools" at "http://scala-tools.org/repo-snapshots"  
val scalatest = "org.scalatest" % "scalatest" % "1.0.1-for-scala-2.8.0.Beta1-with-test-interfaces-0.3-SNAPSHOT" % "test->default"

`

`val guice = "com.google.inject" % "guice" % "2.0"</div>``}`

Cette classe déclare deux dépendances avec ScalaTest, le framework de test unitaire, et Guice, le framework d’injection de dépendance.

La ligne `val "scala-tools" at "http://scala-tools.org/repo-snapshots"` est assez intéressante car elle montre la puissance de Scala pour faire des DSL.  Le `at` correspond à une méthode `at`. Mais une chaîne n’a pas de méthode `at`. Scala va chercher dans l’environnement, ici `DefaultProject`, une classe qui a une méthode `at` acceptant une chaîne et habiller la chaîne `"scala-tools"` pour en faire un instance de cette classe.  
On trouve des constructions équivalentes pour l’utilisation des expressions régulières, par exemple `"\(.*)@(.*)".r` .

Cette technique basée sur les conversions implicites est décrite sous le nom de [Pimp my library](http://www.artima.com/weblogs/viewpost.jsp?thread=179766) par Martin Odersky le créateur de Scala.

SBT utilise la version 2.7 de Scala par defaut dans sbt mais ont peut changer cette version dans `build.properties`

### Comment utiliser SBT ?

SBT s’utilise en lançant la commande `sbt` qui ouvre un shell.

Les principales actions sont

- `reload` : recharge les définitions du projet si elles ont changées
- `update` : résout les dépendances et retrouve les bonnes librairies. Elles sont copiées dans le projet mais Ivy gère également un cache local
- `test` : compile le code et les tests puis exécute les tests via une série de dépendances de tâches
- `test-only montest` permet de relancer automatiquement le test à chaque fois que le fichier est sauvé
- `run` : qui exécute une classe ou par défaut la seule classe avec un main

On peut aussi définir ses propres goals et builder plusieurs cibles en même temps.

Si on a compris quelque chose de cette soirée, même quand on n’a pas trop d’expérience de Scala, c’est qu’il faut s’intéresser à SBT. Même Nicolas Martignole ( [Le Touilleur Express](http://www.touilleur-express.fr/) ) a fait une intervention favorable en constatant que SBT fait moins peur pour la maintenabilité du build que [Gradle](http://www.gradle.org/).

## Dans le vif du sujet

[![PSUG-mai-2](/assets/2010/05/2010-05-24-psug1-la-premiere-du-scala-user-group/PSUG-mai-2.jpg "PSUG-mai-2")](http://jduchess.org/duchess-france/files/2010/05/PSUG-mai-2.jpg)Bon là, ça se complique. Pour les gens qui ne connaissaient quasiment pas Scala, c’est allé très vite et comme les diverses stratégies d’implémentations n’étaient pas très bien balisées, on a été rapidement perdus.

Les prochaines sessions devraient être plus accessibles car il s’avère qu’il y a une forte proportion de gens sans expérience de Scala dans le groupe.

L’ensemble du code de la session est sur un repository [Mercurial](http://mercurial.selenic.com/) [https://dvcs.spartacusse.org/hg/di-scala](https://dvcs.spartacusse.org/hg/di-scala). Si vous n’avez pas de client Mercurial, le lien zip en haut de la page permet de tout récupérer en un gros zip ou vous pouvez aussi [lire les fichiers](https://dvcs.spartacusse.org/hg/di-scala/file/9f8d360d7c9f).

### L’exemple de départ

**Dans tous les exemples, le code manipule un DVCSManager qui permet d’enregistrer une instance de DVCS (via save) et de la retrouver plus tard (via get).  Les tests utilisent une instance de type Mercurial (Hg) .**

Un peu de décodage sur le code de [`Basic.scala`](https://dvcs.spartacusse.org/hg/di-scala/file/9f8d360d7c9f/src/test/scala/Basic.scala)

- En Scala, les noms de fichiers ne sont pas liés au nom de classe ou de package
- Le fichier n’a pas a avoir le même nom que la classe, il peut y avoir plusieurs classes dans le même fichier
- Le nom de package n’a pas besoin de correspondre à l’arborescence de répertoire sur disque
- Les imports peuvent apparaître n’importe où dans le fichier

Comme le code est destiné à une présentation, le test et le code sont dans le même fichier.

Les _traits_ sont une sorte d’hybride entre des interfaces Java et des [_mixins_](http://fr.wikipedia.org/wiki/Mixin).  
Ils permettent de décrire le comportement que devra implémenter la classe mais aussi de fournir des implémentations de méthodes qui seront greffées dans le code de la classe qui implémente le trait. Il est ainsi possible d’hériter de comportement de plusieurs classes différentes.  
Vous pouvez en apprendre plus avec ces deux ressources [en anglais](http://www.codecommit.com/blog/scala/scala-for-java-refugees-part-5) et [en français](http://blog.xebia.fr/2008/07/16/traits-scala/).

La première partie décrit les entités du domaine sous la forme de _traits_.

`trait Repository { val reponame:String }`

Un trait très simple qui défini un repository générique et indique qu’il doit avoir un nom. Vous noterez que contrairement à Java le type suit le nom de la variable.

Un exemple un peu plus compliqué, le DVCSManager générique. L’implémentation réelle devra  fourir les 4 opérations listées en def.  `def` et `val` introduisent des membres du trait. La différence est que `def` permet la redéfinition alors que `val` ne le permet pas.

`trait DVCSManager {  
<div style="padding: 0px 10px 0px 10px">type T <: Repository  
def getAllRepositories():List[T]  
def save(repo:T):Unit  
def get(reponame:String):T  
def apply(reponame:String):T</div>``}`

Humm, un premier exemple de syntaxe bizarre Scala. `type T <: Repository` défini que le  `T` qui apparait dans les signatures des opérations qui suivent. `T` doit être une instance d’un type `T` dérivé de `Repository` mais son type réel sera défini plus tard. Cela ressemble vaguement à un générique pour le moment, mais il y a une différence subtile. Le type `T` ici est une classe bien particulière dont le choix est reporté et non pas quelque chose qui implémente `T` qui pourrait être différent d’une opération à l’autre.

Un _function object_ est un objet que l’on peut utiliser comme une fonction.  
[Pour en savoir plus sur les function objects](http://creativekarma.com/ee.php/weblog/comments/scala_function_objects_from_a_java_perspective/)

La méthode `apply` a une signification un peu particulière. Elle donne à DVCSManager la capacité d’être un _function object_. C’est ce qui permet d’écrire `val repo = DVCSManager("test")` dans le test. Le résultat sera d’initialiser le repository.

Le trait `HgManager` implémente le `DVCSManager` pour Mercurial.

`trait HgManager extends DVCSManager {  
<div style="padding: 0px 10px 0px 10px">self: LDAPEnv with ApacheEnv with HgEnv =>  
type T = HgRepository  
val repos = scala.collection.mutable.Map[String, HgRepository]()  
def getAllRepositories():List[HgRepository] = repos.valuesIterator.toList  
def save(repo:HgRepository):Unit = { repos += (repo.reponame -> repo) }  
def get(reponame:String):HgRepository = repos(reponame)  
def apply(reponame:String):HgRepository = new HgRepository(reponame, this)</div>``}`

C’est ici que l’on va définir le type de `T` en écrivant `type T = HgRepositor`. La ligne `self: LDAPEnv with ApacheEnv with HgEnv =>` pose comme pré-condition à la création de l’instance qu’il existe dans l’environnement de la classe des instances de `LDAPEnv`, `ApacheEnv`,`HgEnv`. On ne pourra pas créer d’instance utilisant ce trait si ça n’est pas le cas.

Vous noterez le `this` dans `new HgRepository(reponame, this)`. C’est la dépendance dont Alexandre voudrait bien se débarrasser en utilisant l’injection de dépendances.  
Le `self` permet une forme d’injection de dépendances avec en plus un contrôle plus fort sur le typage.

Pour finir avec le domaine, la classe qui implémente le repository Mercurial `HgRepository`. Il s’agit ici d’une véritable classe. `case class` la rend un peu plus Scala et apporte quelques facilités.

`case class HgRepository(val reponame:String, env:LDAPEnv with ApacheEnv with HgEnv) extends Repository {  
<div style="padding: 0px 10px 0px 10px">// do some stuff using the environment  
println(env.hgrepodir.getAbsolutePath)</div>``}`

Cette classe a un constructeur à plusieurs arguments donc le second est une instance qui mixe `LDAPEnv`, `ApacheEnv` et `HgEnv`. Dans la section précédente, on voit que c’est un `HgManager` qui est passé. Par la présence du `self` on peut être sûr qu’il satisfait ces critères.

Le test ne préjuge pas du type de repository. Ce type est définit dans l’environnement.

`test("") {  
<div style="padding: 0px 10px 0px 10px">val repo = DVCSManager("test")  
DVCSManager.save(repo)  
val persistedRepo = DVCSManager.get("test")  
assert(repo === persistedRepo )</div>``}`

Le `===` est équivalent à `==` en Java mais rend l’affichage de la comparaison plus lisible en indiquant aussi ce qui était attendu/reçu.

Diverses statégies ont été utilisées pour placer une instance de HgManager et des object “Env” dans l’environnement en limitant les dépendances.  
La forme la plus évidente est `val DVCSManager:DVCSManager = new HgManager with Env`. Il s’agit d’un mixin entre le `HgManager` et un trait `Env`. A noter on ne peut mixer que des traits.

`Env` initialise les valeurs qui jusque là étaient seulement déclarées.

`trait Env extends LDAPEnv with ApacheEnv with HgEnv {  
<div style="padding: 0px 10px 0px 10px">val hgrepodir:File = new File("/hgrepodir")  
val apachedir:File = new File("/apachedir")  
val ldapurl:String = "http://..."  
val ldapbinddn:String = "root"  
val ldapbindpassword:String = "pwd"</div>``}`

### Self et lazy

Un premier essai de simplification a consisté à déplacer la création du `HgManager` dans `Env` comme on peut le voir dans [`BasicBis.scala`](https://dvcs.spartacusse.org/hg/di-scala/file/9f8d360d7c9f/src/test/scala/BasicBis.scala). On pourrait dans ce cas se contenter de mixer Env avec le test.

**_BOUM !_**

En fait, ça ne marche pas. Une dépendance cyclique apparaît. `Env` déclare `DVCSManager` qui a son tour a besoin de `Env`.

Pour éliminer la dépendance cyclique, il faut utiliser des “lazy val” comme dans [`ScalaSelfRef`](https://dvcs.spartacusse.org/hg/di-scala/file/9f8d360d7c9f/src/test/scala/BasicSelfRef.scala). Mais ça introduit d’autres complications.

**_BOUM !_**

Cette fois ci il ne trouve pas d’instance de HgRepository dans l’environnement alors qu’elle semble y être. Le self déclare seulement des types mais ne fournit pas d’implémentation. Le `new HgManager` n’a pas d’existence tant que le méthode n’est pas portée par une instance. Même si le `HgRepository` semble créé par `def apply(reponame:String):HgRepository = new HgRepository(reponame) with LDAPEnv with ApacheEnv with HgEnv`, il faut quand même instancier explicitement le HgManager par `val DVCSManager:DVCSManager = new HgManager with Env`.

Cet exemple pas à pas montre qu’il n’est pas toujours évident de comprendre quel type seront inférés et si une instance convenable sera trouvée ou pas dans l’environnement.

Une constatation est que le modèle marche bien tant que l’on est dans des cas de figure simples avec des new partout. Mais les factories posent problème.

### Cake pattern

Là j’ai été un peu larguée. N’ayant pas révisé le Cake Pattern à l’avance, je ne m’avancerai pas à retranscrire les débats dans le détail.

Vous pourrez trouver l’exemple de code dans [`CakePattern.scala`](https://dvcs.spartacusse.org/hg/di-scala/file/9f8d360d7c9f/src/test/scala/CakePattern.scala)  
L’initialisation de l’environnement est maintenant à la charge du <code>ComponentRegistry</code>.

Un bon point de départ est l’[article](http://jonasboner.com/2008/10/06/real-world-scala-dependency-injection-di.html) de Jonas Bonér sur les diverses techniques d’injection de dépendance. Il contient également la référence sur l’article initial de Martin Odersky, le créateur de Scala.

Le principe du Cake Pattern est de créer un composant qui encapsulent les environnement dont on a besoin. Tout ça fait une sorte de mille-feuille. Si on regarde, le code exemple chaque trait ou classe reçoit un composant qui l’englobe.

Ce modèle simplifie les choses pour celui qui utilise les composants car il n’a plus de besoin de mixins et peut se reposer sur le choix de celui qui a fait le composant.  Mais est lourd à implémenter pour celui qui fournit les composants.

ScalaDoc a beaucoup utilisé le Cake pattern et en est un peu revenu car c’est difficile à maintenir. Ce modèle a tendance a créer un objet qui fait tout avec des tas de fonctions externes autour.

### Closure

Un autre modèle basé sur des closures à été évoqué. Il est décrit par Debashishg Gosh dans cet [article](http://debasishg.blogspot.com/2010/02/dependency-injection-as-function.html).

L’exemple de code qui correspond est `[Closure.java](https://dvcs.spartacusse.org/hg/di-scala/file/9f8d360d7c9f/src/test/scala/Closure.scala).`

La closure se trouve là

`<div style="margin: 0px 10px 0px 10px;padding: 5px 10px 5px 10px;border:solid thin;border-color: grey">trait HgManager extends DVCSManager {  
...  
<div style="padding: 0px 10px 0px 10px">def apply(_reponame:String):HgRepository = new HgRepository {  
<div style="padding: 0px 10px 0px 10px">val reponame:String = _reponame  
lazy val env = self</div>  
}</div>  
}</div>`

Le principe est plus proche de Java. On passe un objet avec des trous qu’on complètera plus tard.

### Guice

Le code qui illustre l’utilisation de Guice est dans `Guice.scala`

Le code a été modifié pour s’intégrer à Guice et fini par ressembler beaucoup à un java.

`class HgManager @Inject() () extends DVCSManager {  
<div style="padding: 0px 10px 0px 10px">self: MixedEnv =>  
...  
@Inject val hgRepoFactory:HgRepositoryFactory = null  
def apply(reponame:String):HgRepository = hgRepoFactory.create(reponame)</div>``}`

Guice est parfois un peu perdu car une classe Scala peut générer beaucoup de classe Java et Guice ne sait pas toujours laquelle utiliser.

### Structural Typing

L’exemple utilisant le [structural typing](http://scala.sygneca.com/patterns/duck-typing-done-right) est dans `StructuralTyping.scala`

`<div style="margin: 0px 10px 0px 10px;padding: 5px 10px 5px 10px;border:solid thin;border-color: grey">abstract class ToBeTested extends FunSuite {  
<div style="padding: 0px 10px 0px 10px">self: { val DVCSManager:DVCSManager } =>`

`test("") {  
<div style="padding: 0px 10px 0px 10px">val repo = DVCSManager("test")  
DVCSManager.save(repo)  
val persistedRepo = DVCSManager.get("test")  
assert(repo === persistedRepo)</div>  
}</div>  
}  
class Test extends ToBeTested with Env</div>`  
Le structural typing est `{ val DVCSManager:DVCSManager } =>`. C’est une sorte de duck typing.  
C’est un moyen d’éviter de créer un trait juste pour positionner cette valeur. Mais cette technique a pour inconvénient de reposer totalement sur la Reflection Java et pose des problèmes de performance.

## Conclusion

Aucune des solutions n’est totalement satisfaisantes. Quelques méthodes à la Java fonctionnent bien mais perdent la simplicité d’écriture de Scala. Les solutions plus Scala fonctionnent dans les cas simples mais sont conçues pour faire des new sans utiliser de factory. Les comportements peuvent être différents en fonction de l’ordre d’initialisation.  
Si on pousser trop loin l’injection de dépendance, ça devient compliqué

La spécification [JSR330](http://jcp.org/en/jsr/detail?id=330) sur l’injection de dépendance pourrait améliorer les choses en apportant le support de l’injection de dépendance directement dans la JVM.
