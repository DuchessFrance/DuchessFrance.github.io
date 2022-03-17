---
layout: "post"
author: 
  - "acrepet"
title: "Le Lambda Tour de José Paumard!"
date: "2014-05-19"
categories: 
  - "les-conferences"
---

| [José Paumard](http://blog.paumard.org/) continue son grand Lambda Tour. Après Brest, Nantes, Lannion, Rouen, Bordeaux, Toulouse, Tour, Clermont-Ferrand, Lille et Montpellier, José est invité par le [Lyon JUG](http://www.lyonjug.org/evenements/java-8) et le [Geneva JUG](http://genevajug.ch/) pour une session sur Java 8 et notamment les lambdas, Streams et Collectors. La team du Lyon JUG lui a posé quelques questions pour vous inviter à venir à ses sessions. |

![](/assets/2014/05/2014-05-19-le-lambda-tour-de-jose-paumard/itw_JosePaumard-270x200.png)

_Cet interview a été préparé conjointement par : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)._

![](/assets/2014/05/2014-05-19-le-lambda-tour-de-jose-paumard/trans.gif "More...")

**JUG Team : Peux-tu te présenter ? ?**

**José**: Je suis José Paumard, je travaille à l'université Paris 13 en tant que maître de conférences où j'enseigne Java et Java EE depuis 17 ans. Je travaille également auprès d'entreprises, en expertise, audit, et bien sûr, formation. J'aime aussi me présenter comme développeur, puisque cette activité me passionne. J'ai écrit mon premier programme en 1980 sur une TI 57, et il ne s'est pas passé une année depuis cette date sans que j'écrive du code quelque part.

**JUG Team : En quoi java 8 va révolutionner ta façon de programmer ? ?**

**José**: Effectivement Java 8 va révolutionner ma façon de programmer. Et je pense que ça ne va pas révolutionner que la mienne d'ailleurs ! Le principal apport de Java 8, ce sont bien sûr les expressions lambda, annoncées en 2006, et qui, suivant le calendrier initial auraient du sortir avec Java 7 en 2008. La possibilité de programmer avec un tel outil, qui n'est pas nouveau, puisqu'il est présent dans la plupart des grands langages depuis des années, est déjà en soi une révolution.

Mais la vraie révolution, je pense, est cette nouvelle API, Stream, qui apporte de nouvelles solutions pour traiter les grands volumes de données, mais aussi les petits. Aujourd'hui, pour traiter des données en Java, nous avons un outil, l'API Collection, dont les patterns n'ont pas changé depuis son introduction, en 1998. Ces patterns sont construits sur le patterns Iterator, lui-même déjà présent dans le fameux Gang Of Four, livre publié en 1994.

Lorsque les génériques sont sortis en Java 5 (2004), l'API Collection a été entièrement réécrite, mais ses patterns d'utilisation n'ont pas été changés. En 2014, Java 8 sort, l'API Collection est une nouvelle fois réécrite, mais cette fois, on ajoute un pattern à côté d'Iterator, et donc cela change nos habitudes de programmation. Et pas n'importe lesquelles : des habitudes ancrées en nous depuis bientôt 16 ans, et que nous utilisons tous les jours, puisque l'API Collection est universellement utilisée.

**JUG Team : Tu vas nous parler des expressions lambdas. A quoi ça sert? Quels impacts sur le langage java, la JVM ? ?**

**José**: À quoi ça sert ? Du point de vue syntaxique : à alléger l'écriture des instances de classes anonymes. À chaque fois que l'on a besoin d'un callback en Java, on écrit une telle instance, donc on en met un peu partout dans notre code. Et à chaque fois, ça ressemble à un gros pâté de Java, pas très beau, dans lequel il faut faire abstraction des premières lignes pour aller voir ce que ça fait vraiment, qui est en général codé dans une ligne unique, au milieu du gros pâté.

Ensuite ça a servi à écrire tout un tas de nouvelles API, dont la plupart sont des réécritures d'API existantes. L'API Stream peut être vue comme une API Collection bis. Il y en a d'autres : on a des nouveautés dans l'API IO, dans la classe String, dans la génération des nombres aléatoires, dans la façon de créer des threads, etc...

Donc les lambdas, qui sont une modification du langage proprement dit, ont un impact majeur sur l'API Java, et sur les patterns de code, y compris les plus utilisés.

On a eu en avance de phase un impact sur la JVM, puisque Java 7 a vu l'apparition d'InvokeDynamic, nouvelle instruction de bytecode, que les lambda exploitent. Et la JVM 8, de même que le compilateur, outre le fait qu'ils supportent les lambdas, voient aussi des modifications de leur fonctionnement dans plusieurs compartiments du langage. Le compilateur Java 8 sait deviner le type d'une variable mieux qu'avant, la JVM sait optimiser l'exécution des lambdas, chose qu'elle ne faisait évidemment pas avant.

Enfin en termes de performances, l'utilisation des expressions lambda apporte un gain tangible par rapport à l'utilisation d'instances de classes anonymes, grâce aussi aux évolutions de la JVM.

**JUG Team : Est ce que tu trouves génant de devoir créer un stream pour profiter des nouveautés sur les collections ? ?**

**José**: En première approche on pourrait penser que oui. Finalement cet appel à stream() pour ensuite appeler map(), filter() ou reduce() est peut apparaître comme un appel en trop. Cela dit, on peut se poser la question de ce qui se serait passé si l'on n'avait pas ajouté cet appel.

Lorsque l'on examine le problème de près, on se rend compte que ces appels à map() et filter() doivent être lazy. S'ils sont exécutés immédiatement les choses ne fonctionnent pas. Et donc, ajouter ces méthodes à Collection aurait conduit à mélanger, dans une même interface, les appels classiques que l'on connaît bien, et des appels lazy. Pas terrible : une même interface se serait retrouvée à devoir modéliser deux concepts radicalement différents. Le choix qui a été fait : on ne change pas le concept de Collection en Java, et on crée un nouveau concept, Stream, pour lequel les exécutions sont lazy est à mon avis un bon choix, qui simplifie les choses, et les apprentissages de ces choses, ce qui n'est pas un petit gain.

**JUG Team : Toi qui pratique et enseigne java depuis ses débuts, que penses-tu de l'évolution de tout l'écosystème java ces dernières années ? ?**

**José**: C'est une question qui me tient à coeur, et qui recouvre en fait la problématique suivante : comment enseigner la programmation en Java. Je pense que la réponse est double, car on ne va pas enseigner les nouveautés de Java 8 de la même façon à des étudiants et à des développeurs déjà expérimentés. Aux premiers on enseigne les choses naturellement : les interfaces Java 8, ce sont les interfaces, de toute façon tout est nouveau pour des étudiants de ce point de vue. Idem pour le concept lazy avec les Stream.

Pour des développeurs expérimentés l'approche est différente. Vous saviez que les interfaces étaient des définitions de signatures de méthodes ? Oubliez ça, parce que maintenant on a des méthodes par défaut et des méthodes statiques. Il y a une première phase qui consiste à "désapprendre" ce que l'on sait, et à l'apprendre à nouveau, différemment.

Quand on regarde Java 8, on se rend compte que, pour la première fois, tous les développeurs, et tous les projets vont être touchés par ses nouveautés. Nombre d'équipes ont migré vers Java 6 ou Java 7, sans vraiment changer ni leur code existant, ni leurs habitudes de programmation pour le développement du nouveau code. Ces migrations n'ont pas apporté grand chose à de nombreux projets, et donc ont été presque transparentes. Java 6 est sorti en 2006, cela signifie que de nombreux développeurs n'ont quasiment jamais changé les habitudes de programmation qui leur avaient été enseignées dans les écoles et universités, ou qu'ils ont acquis dans leurs premières années de carrière.

Java 8 change ça : de nouvelles habitudes de programmation vont devoir être acquises, et les prochaines générations de jeunes diplômés sortiront avec. Ce qui risque de créer un hiatus important entre les développeurs en place, qui n'auront pas eu de cours Java 8, et les jeunes générations. Les premiers risquent de se retrouver à la traine s'ils ne font pas attention, et éventuellement mis sur la touche. On n'a pas connu ça avec les versions précédentes de Java.

Sur l'écosystème en général, je pense que nous sommes à un point assez particulier en informatique. Nous allons assister dans les quelques années qui viennent, à une explosion de l'utilisation des objets connectés. Cela a déjà commencé, mais on nous dit que ce n'est que le début. Je suis convaincu que cela va changer radicalement la façon de penser les applications. Aujourd'hui on programme pour des systèmes bien connus et bien calibrés : des PC, des serveurs, des machines virtuelles hébergées dans le cloud. Demain nous allons programmer des Rasberry, des Arduino, et tout un tas de calculateurs de ce type. Aujourd'hui le développement sur mobiles et tablettes est entré dans les moeurs des développeurs, même si les pratiques évoluent encore. Nous allons assister à une deuxième révolution de ce type avec le développement pour ces objets connectés.

Et pour cette révolution, Java 8 est la, avec de nombreuses fonctionnalités spécialement conçues pour ce nouveau type de développement.

**JUG Team : La programmation fonctionnelle est déja dans de nombreux langages. Est-ce que Java n’est pas un peu à la traine sur ce sujet ? ?**

**José**: La programmation fonctionnelle n'est pas une chose nouvelle, puisque le Lisp fait partie des toutes premières générations de langages créés dans les années 60. Si ça avait été une panacée, nous ferions tous du Lisp. Or, les langages les plus utilisés aujourd'hui sont les langages objet.

Alors pourquoi parle-t-on aujourd'hui de programmation fonctionnelle ? Parce que l'on se rend compte que cette approche apporte des solutions dans le domaine de la programmation concurrente, sur laquelle s'appuie la programmation parallèle. Mais la programmation parallèle elle-même a plusieurs cordes à son arc, et peut fonctionner sans la programmation concurrente. Donc l'approche fonctionnelle, d'un point de vue purement pragmatique, a un intérêt dans une partie de nos applications, bien délimitée : le traitement massif de données, en parallèle. L'API Stream s'appuie sur cette approche, elle fonctionne très bien, et les performances sont au rendez-vous.

La programmation fonctionnelle s'appuie sur un paradygme en particulier : le fait que les données manipulées sont immutables. Aujourd'hui ce point n'a pas de solution propre en Java. Si l'on veut manipuler des objets immutables on peut le faire au travers de classes finales dont les champs sont finaux, mais il n'y a pas de concept de données immutables intégré au langage proprement dit. Ce concept existe dans des langages qui fonctionnent sur la JVM, tels que Scala ou Clojure. Il sera a priori intégré à Java 9, au travers des value types, dont les travaux ont déjà commencé. Java souhaite aller plus loin que les autres langages, en permettant à ces value types de pouvoir s'enregistrer en mémoire de façon efficace, plutôt qu'au travers d'un jeu de pointeurs comme pour n'importe quel objet. Java n'a donc pas dit son dernier mot sur ce point, et les solutions que l'on entrevoie aujourd'hui vont bien au-delà du simple concept d'objet que l'on ne peut plus modifier une fois créé. L'introduction de ces value type va avoir un impact majeur sur le langage, les API, et la JVM également.

Cela dit "faire du fonctionnel" ne constitue pas pour moi une fin en soi. Être en retard est une chose assez subjective : que cela signifie-t-il vraiment ?

**JUG Team : Tu fais partie de l'orga de Devoxx fr, que tires-tu de cette expérience ?**

**José**: Devoxx France est sans aucun doute une expérience très enrichissante. Il s'agit d'un événement communautaire, soutenu par une large partie de l'industrie, dans laquelle on retrouve des sociétés majeures (Oracle, Google, IBM), des éditeurs parfois moins connus, et des SSII. Le temps de Devoxx France, tout ce monde se réunit pour parler technique, discuter, échanger. C'est aussi l'occasion pour les UG de France de se retrouver.

Je suis très fier d'avoir pu participer au lancement d'un tel projet. La première année a été très serrée en termes de budget, puisque la décision de faire Devoxx France a été prise alors que l'association n'avait quasiment pas un sou en poche. Pour un budget à 6 chiffres, c'était tout de même un pari un peu risqué ! J'ai donc mis les choses en place pour que cela se passe bien du point de vue financier, ce qui n'était pas gagné par avance, et le succès a été celui que l'on connaît.

Ce succès permet de développer l'événement au-delà de ce que nous pensions faire il y a trois ans. Le Palais des Congrès est un nouveau challenge, qui sera relevé, j'en suis sûr.

Même si sur ce point l'organisation est bien sécurisée maintenant, cela reste un travail énorme, et la fonction de trésorier est très exposée en termes de responsabilité juridique. Après trois ans j'en viens à me poser une question : est-ce mon métier d'organiser une conférence, et ai-je envie que ça le devienne ? La réponse à ces deux questions est clairement non.

Je suis donc en train de passer la main dans l'organisation de Devoxx France, et le Paris JUG aura un nouveau trésorier pour l'organisation de Devoxx France 2015. Je ferai évidemment tout pour aider le nouveau trésorier à prendre cette lourde tâche en charge dans les meilleures conditions. Je reste très attaché à Devoxx France, et souhaite évidemment que les choses se fasse dans la continuité. Quitter l'organisation est un choix personnel, mais il n'est pas question pour moi qu'il remette en cause la bonne marche de la conférence.

La prochaine fois que j'irai à Devoxx France, je pourrai assister à des conférences, ce qui sera une vraie nouveauté pour moi !

J'y participe aussi en tant que speaker. Ecrire des cours, des articles techniques et des conférences fait partie de mon métier, et c'est une grande chance. Cela fait aussi partie des choses qui me passionnent, et je suis heureux que mon travail soit apprécié des gens qui viennent m'écouter. Je tiens d'ailleurs à remercier les personnes qui prennent de leur temps pour m'envoyer des messages d'encouragement, et qui me signalent des choses qui me permettent d'améliorer ce travail.

**Merci José!**   **Merci à Anne-Laure Rigaudon pour sa relecture!**  

**Les inscriptions pour la session de José sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/java-8) ou du [Geneva JUG](http://genevajug.ch/)!**
