---
layout: "post"
author: 
  - "Blandine"
title: "Quicky sur Incanter à Devoxx France par Claude Falguière"
date: "2012-04-12"
categories: 
  - "les-conferences"
tags: 
  - "devoxxfr"
  - "incanter"
---

| Lors de [Devoxx France](http://www.devoxx.com/display/FR12/Accueil) et [Mix-it](http://www.mix-it.fr/), plusieurs conférences seront présentées par des femmes. Nous profitons de cette occasion pour les interviewer et vous les faire découvrir. Cette première interview est consacrée à Claude Falguière (@cfalguiere) que vous pourrez écouter le 20 avril à Devoxx France lors d’un quicky sur “Incanter, des statistiques en un coup de baguette magique”. |

![](/assets/2012/04/2012-04-12-quicky-sur-incanter-a-devoxx-france-par-claude-falguiere/cfalguiere_300.jpg)

**Blandine :  Qui es-tu ? Peux-tu définir ton travail actuel ?**  
**Claude :** Je suis consultante senior chez Valtech Technology depuis une dizaine d’années. J’interviens sur des applications Java ou des sites Web en J2EE en tant qu’architecte technique principalement pour des problèmes de performance, de déploiement, de dimensionnement.  
Quand il me reste un peu de temps, je tiens un blog technique [http://cfalguiere.wordpress.com](http://cfalguiere.wordpress.com "http://cfalguiere.wordpress.com").

**Blandine : Comment es-tu tombée dans le monde JAVA ? Te souviens-tu de ton premier programme en JAVA ?**  
**Claude** : Bizarrement, j’ai découvert le Web et Java en même temps. J’étais en stage chez Digital Equipement en 1994 pour faire une comparaison entre CORBA et DCOM et quand je suis arrivée, ils avaient une nouvelle architecture à regarder, basée sur des trucs qui s’appelaient HTTP, HTML et Java pour voir ce qu’on pouvait faire avec ça. J’ai vu des pages HTML moches à pleurer dans une première version de Mozaic et une applet avec une sorte de pingouin qui faisait hello de la main avec des saccades. C’était amusant mais j’ai trouvé Internet beaucoup plus excitant que la GIF animée en applet.

J’ai fait un grand détour par le Web, puis retrouvé Java en 1996 quand je travaillais chez l’éditeur de SGBD orienté objet O2. Mon premier programme Java, je l’ai fait avec la version 1.0 et elle était un peu… limitée. Elle ne permettait pas d’afficher les accents du français par exemple. En France, on est resté essentiellement sur C++, mais j’ai fait un petit tour pendant plusieurs mois chez O2 US et les clients US ne demandaient plus que ce binding.

Je suis passée à Java définitivement en 1999 en rentrant chez Valtech, avec du CORBA/Java (de la plomberie pour intégrer l’OTS du serveur CORBA à TopLink en utilisant JTA et JTS, c’est le type de joie auquel on échappe de nos jours) puis du J2EE sur WebLogic.

On a oublié de nos jours ce que Java a signifié. Pour les gens qui faisaient du C++ avant 2000, Java c’était des API d’IHM, des classes pour gérer les String, les Collections out of the box et tout ça gratuitement. Je pense que ça a permis à beaucoup de gens de faire un peu de Java chez eux alors qu’en C++ le ticket d’entrée était plus élevé.

Professionnellement aussi j’ai vu un grand changement. C++ c’était des éditions de liens qui prenaient une heure, des corrections de problème sur chaque UNIX sur lequel il fallait recompiler le produit (même avec des librairies de compatibilité), beaucoup de gens incapables de gérer correctement la mémoire. Java a supprimé ces ennuis. Beaucoup d’outils (d’analyse statique, de refactoring, de test unitaire ciblés) ont été construits sur les possibilités de manipulation du bytecode et d’exécution d’une classe isolée et sont difficiles à porter.

Maintenant, on en est mécontent parce que cette révolution est acquise, parce que d’autres environnements ont évolué dans d’autres directions (la facilité de manipulations des collections apportées par les langages fonctionnels par exemple, ou la gestion des dépendances de librairies) et que l’on veut encore mieux, c’est normal.

**Blandine : Comment te situes-tu dans l’écosystème JAVA ? Dans quel projet(s) /user group interviens-tu ?**  
**Claude :** Je suis cofondatrice de Duchess France et membre de l’organisation du Java User Group Paris JUG. Je participe aussi assez souvent à d’autres user groups de développement et DevOps.  
Je ne contribue à aucun projet (et je sais c’est pas bien). Question d’époque et de temps disponible. Et puis je n’ai jamais trouvé un projet qui me motive assez pour plonger dedans. Je pense que les hackatons sont une bonne chose pour ça. Ils facilitent l’accès et permettent de rentrer dans un projet parce qu’on est en communauté.

**Blandine : Pourquoi as-tu choisi ce métier ? As-tu les mêmes motivations qu’au début ?**  
**Claude :** L’informatique était un secteur vraiment tout nouveau quand j’ai choisi ce métier. J’ai commencé à travailler au moment où sortaient les premiers ordinateurs individuels. Ce secteur m’attirait pour le potentiel que représentaient les ordinateurs, même s’il fallait beaucoup d’imagination à l’époque pour y voir quelque chose d’utile. Les premiers programmes que j’ai écrits faisaient des dessins et je n’imaginais pas que c’était un métier.

Ma formation initiale était l’économétrie (les mathématiques et la modélisation pour l’informatique). Il y avait un peu d’informatique surtout appliquée aux statistiques et j’ai bifurqué après ma maîtrise sur les conseils du prof d’informatique. Je ne saurais plus dire quelles étaient mes motivations à ce moment.

Il est clair que mes centres d’intérêt ont changé au fil du temps. Au début, je m’intéressais à l’organisation du projet et au langage pour comprendre comment ça marche. Au fil du temps, on s’intéresse plus aux cadres qui structurent tout ça, les méthodes, les patterns, les bonnes pratiques, comment on peut organiser toutes ces informations. Et puis finalement, j’ai fini par m’intéresser principalement aux finalités de ces cadres, à l’objectif à réaliser et aux moyens d’échanger ces connaissances pour que l’on avance plus facilement.

**Blandine : Tu vas présenter un quicky à Devoxx France. Quel est le sujet de présentation ? À qui s’adresse-t-elle (novice sur le sujet ou confirmé) ? Pourquoi faut-il venir te voir ?**  
**Claude :** La présentation est sur Incanter, un framework de statistiques implémenté en Clojure. Je pense qu’il faut un objectif pour se mettre à un langage. Pour moi, analyser des données de test avec Incanter a été une motivation pour me mettre à Clojure.

J’utilise une toute petite partie de ce que peut faire Incanter, mais c’est aussi le type de problème que l’on rencontre, lire des données, faire des moyennes, afficher un graphe. Incanter fourni aux statisticiens des outils plus élaborés pour de faire du test d’hypothèse, de l’analyse de données.

La présentation ne demande pas de connaissance préalable en Incanter, en Clojure ou en statistique. J’ai prévu quelques slides d’explication puis montrer du code.

**Blandine : “Clojure m’a permis de devenir un meilleur développeur” citation pendant la marmite battle language. Partages-tu cet avis ? Pourquoi ?**  
**Claude :** Je comprends, même si être développeur est bien au-delà de la maîtrise des langages. Tout langage nouveau oblige à remettre en cause des automatismes et à réfléchir à sa manière de faire.

Clojure est un langage fonctionnel qui contraint à coder dans un style fonctionnel. Groovy par exemple est plus tolérant.

Ce qui est difficile au début c’est que l’on continue à coder dans un style procédural. On appelle chaque fonction l’une après l’autre et en stockant les résultats dans des variables. En programmation fonctionnelle, on construit un programme en emboîtant des fonctions sans état. Si on ne prend pas en compte ce principe, on est confronté assez souvent à des problèmes de reconstruction de données pour mettre à jour l’état. Comme ça n’est pas prévu pour être utilisé comme ça, les API ne sont pas adaptées et on se fait mal pour rien.

Le deuxième point que j’ai noté, c’est que lorsque l’on emboîte des fonctions anonymes, le niveau d’imbrication devient vite un problème. Les fonctions anonymes sont pratiques lorsque l’on veut faire un filtre ou un traitement simple sur une collection, mais qu’il devient vite nécessaire pour la lisibilité et la réutilisation de les extraire et de donner un nom à ces fonctions. Il m’est arrivé plusieurs fois de ne pas pouvoir donner un nom. En général, c’est le signe d’un mélange de plusieurs fonctions qui devraient être distinctes. Ce constat m’a forcée à concevoir la résolution du problème comme un enchaînement d’opérations que je peux nommer et non comme un enchaînement de lignes de code qui arrive au résultat.

Lorsqu’on a passé ce stade, on peut se concentrer sur la manière de résoudre le problème et non plus sur la manière de coder et là ça devient vraiment agréable.

**Blandine : On croise peu de femmes dans les conférences. Cela t’étonnes t-il ?  
Penses-tu que c’est en train de changer ? As-tu vu une évolution au cours des dernières années ?**  
**Claude :** Je pense qu’on trouve aussi peu de femmes dans les conférences que de développeuses dans les projets. La vrai question est là. J’ai quand même l’impression qu’il y a un plus de femmes qui participent aux conférences.

Pour les speakers le système est un aussi un peu auto-reproducteur. Naturellement les conférences choisissent parmi les présentations connues parce que ça limite leur risque, et il y a peu de femmes. Elles restent toutefois ouvertes à de nouveaux speakers via les Call For Paper surtout sur des sujets innovants. Il ne faut pas hésiter à se lancer.

J’espère qu’on va voir une arrivée en masse dans les prochaines années.

**Blandine : Pourquoi fais-tu une présentation ? Comment es-tu tombée dans la marmite ?**  
**Claude :** J’ai toujours aimé partager des connaissances, faire découvrir de nouvelles choses, aider les gens à comprendre.  
J’ai animé des formations pour les clients chez O2 et Valtech. C’est similaire sur la technique mais le traitement des sujets est différent. Lorsque les gens achètent une formation, ils attendent un certain type de transfert de connaissance. Les présentations dans le cadre des conférence et des user groups sont plus ouvertes. Celles qui me semblent le plus efficace sont celles qui font découvrir un sujet et transmettent une envie de s’y intéresser. C’est plus court aussi, il faut cadrer le sujet et concentrer.

**Blandine : Est-il plus difficile pour toi de présenter devant un auditoire majoritairement masculin ? Cela a-t-il un impact sur ta préparation et la façon dont tu présentes ? Penses-tu que tu sois jugée différemment des speakers masculins ? As-tu des conseils à donner aux futures speakeuses ?**  
**Claude :** Non, et heureusement, je n’ai pas souvenir d’avoir eu un auditoire féminin.

Je ne fais pas la différence. Il y a des auditoires réceptifs, participatifs, et d’autres pas. C’est difficile à prévoir à l’avance.

Une des choses auxquelles je fais attention pendant la rédaction est la cible. Quel est le type d’interlocuteur. On ne prévoit pas le même contenu pour des managers ou des hackers, ils n’ont pas les mêmes centres d’intérêt. Le niveau des auditeurs par rapport au sujet est important aussi. Une fois sur place j’adapte en fonction de l’ambiance et du niveau des participants.

Je ne sais pas si je suis jugée différemment, il faudrait leur demander. Il y a peu être un peu plus d’interruptions par des gens qui veulent m’expliquer qu’ils savent, j’ai la même chose en réunion. C’est aussi une question de notoriété. On n’ose pas interrompre une star. Mais je n’ai jamais eu d’accueil adverse ni de commentaire sur ma tenue.

Je n’ai pas de conseils spécifiques pour les speakeuses sur le talk lui même. Ce sont les mêmes bases que pour les speakeurs. N’hésitez pas à analyser les présentations des bons speakeurs, ou speakeuses. Soyez vous même.

J’ai quelques remarques sur le côté logistique :  
\- prévoir une tenue confortable, dans laquelle on se sent bien pour ne pas être détournée de son sujet.  
\- il peut faire très chaud (parce que la clim est réglée pour la salle qui ne bouge pas) ou très froid (la place du speaker est pile sous l’aération)  
\- attention aux chaussures, une heure debout avec des talons ça peut faire très mal. Il existe des semelles avec des coussinets en gel à l’avant, ça compense bien les semelles un peu dures  
\- poser sa voix, et surtout je pas essayer de crier sur le bruit. La voix part dans les aigus et ça peut devenir assez désagréable

**Blandine : Beaucoup de personnes aimeraient faire une présentation mais n’ont pas d’idée de sujet. Comment as-tu trouvé le tien ?**  
**Claude :** Je ne crois pas qu’il faut décider de faire une présentation puis décider du sujet. J’ai envie d’explorer un sujet et selon ce que je veux dire à à ce propos je vais le traiter en blog, en atelier, en présentation. Pour moi les présentations sont plus des moyens de faire découvrir un sujet, les blogs permettent de rentrer dans les détails ou de présenter des choses très personnelles, les ateliers de transmettre une pratique.

Les sujets que l’on peut traiter dépendent aussi de la conférence. Pour une grande conférence, il faut être légitime sur le sujet, un expert, un commiter du projet, un retour d’expérience sur un projet qui met en œuvre la techno de manière innovante. Dans des cadres plus locaux on peut partager la connaissance que l’on a ou faire un retour d’expérience sur un projet. Les retours d’expérience sont souvent bien appréciés. Ils montrent comment d’autres ont abordé ce problème, pourquoi ils ont choisi cette solution, les difficultés qu’ils ont eu, comment ils les ont résolues, on peut évaluer si c’est à notre portée. On en apprend toujours quelque chose.

**Merci Claude ! Rendez-vous le 20 avril à Devoxx France pour [le quicky sur Incanter](http://www.devoxx.com/display/FR12/Incanter%2C+des+statistiques+en+un+coup+de+baguette+magique) !**
