---
layout: "post"
author: 
  - "acrepet"
title: "Soirée Performances au Lyon JUG avec Claude Falguière"
date: "2010-12-14"
categories: 
  - "les-conferences"
tags: 
  - "java"
  - "lyon-jug"
  - "performance"
---

| A l’occasion de **la prochaine édition du Lyon JUG**, le 21 décembre, **Claude Falguière**, bien connue du réseau des Duchess, va proposer une session autour de **la stratégie de test de performance**. |

![Claude Falguière](/assets/2010/12/2010-12-14-soiree-performances-au-lyon-jug-avec-claude-falguiere/11bd63c05b6bac55280d881d46ecd380-bpfull.jpg "Claude Falguière")  
Claude Falguière est Architecte Technique pour la société de conseil [Valtech Technology](http://www.valtech.fr/fr/index.html) à Paris. Après plusieurs années chez un éditeur de base de données Objet comme consultant et formatrice, elle a intégré Valtech pour participer à plusieurs projets Web J2EE puis s’est spécialisée dans l’évaluation de performance applicative, l’audit et l’optimisation. Elle est membre de l’équipe du [Paris JUG](http://www.parisjug.org) et Co-fondatrice de Duchess France. Découvrez son portrait [sur ce site](http://jduchess.org/duchess-france/blog/portrait-claude-falguiere/)

[**@cfalguiere**](http://twitter.com/cfalguiere "Follow Claude on Twitter")

Pour vous donner envie de venir assister à cette session du Lyon JUG, nous avons posé quelques questions à Claude, notamment sur les bonnes pratiques à mettre en œuvre lorsqu’on veut réaliser des tests de performances, et sur JMeter, l’outil qu’elle nous présentera dans sa démo

##### **Agnès** : Tu t’intéresses particulièrement aux outils et pratiques touchant aux tests de performance. Quand fait-on généralement appel à un expert comme toi ? Lorsque tout va mal? Est-ce que la plupart des clients anticipent la mise en place de tests de performances bien avant la première mise en production ? Les tests de ce type sont-ils intégrés dans un cadre de développement incrémental (une campagne de tests de performances à chaque fin de sprint ou d’itération) ?

**Claude** : Je suis expert performance dans une société qui n’est pas spécialisée dans le test. J’interviens donc plus en tant qu’architecte expert des problématiques de performance pour auditer les tests et l’application et trouver une solution quand la campagne s’est mal passée. Il y a souvent des problèmes des deux côtés, dans les procédures de test et dans l’application. Pour faire simple, les applications sont souvent assez peu performantes car l’objectif est de développer vite. Et certains testeurs considèrent que le rôle est de casser l’application et non de simuler l’activité au plus juste pour déterminer si les exigences sont respectées. Dans d’autres missions, le problème de l’application est réel, identifié mais la solution demande une collaboration entre les études et l’infrastructure, ce qui n’est pas toujours possible.

J’interviens aussi de plus en plus sur des problèmes en production sur des systèmes non testés ou qui se sont dégradés avec le temps. Avec la réduction des coûts des ressources et l’amélioration de la capacité des JVM à gérer de plus gros espaces mémoire depuis Java 5, les problèmes que l’on rencontre sont différents. Dans beaucoup de cas, les applications ont des performances acceptables mais les soucis viennent de problèmes de stabilité qui apparaissent aléatoirement. Dans beaucoup de cas ce sont des dimensionnement logiciels (taille des pools, mémoire excessive, etc.) qui ne tiennent pas compte des ressources effectives de la machine. Mais on trouve aussi de plus en plus souvent des problèmes liés à la concurrence, soit par des locks qui bloquent le système, soit justement par une absence de gestion de la concurrence et donc des corruptions de données au niveau des services qui finissent par empêcher l’application de fonctionner.

Comment on en arrive là ? Parce qu’il y a une différence entre choisir une architecture performante, des frameworks performants, mettre en place des mécanismes de gestion des performances et appliquer les bonnes pratiques et le résultat effectif. Accumuler des éléments performants ne fait pas toujours un système performant s’ils sont mal utilisés ou mal intégrés. Si une application Web génère 1500 requêtes par page, l’optimisation du framework ne changera pas grand chose. Et à cause de la fragmentation en composants ça n’est pas toujours visible dans la conception. C’est l’équivalent de considérer que parce qu’on a écrit les spécifications le système aura un bon niveau de qualité.

Ensuite les caches et autres mécanismes d’optimisation répondent à des problématiques particulières et sont complexes à configurer correctement. J’ai vu des applications armées de tout un tas de mécanismes d’optimisation qui rendaient le système instable, de caches de requêtes sur des données jamais relues, qui marchaient beaucoup mieux une fois que l’on enlevait tout ça.

Pour les performances, l’inconvénient du tir à vue c’est qu’il complexifie le système. Et plus le système est complexe plus on aura du mal à comprendre pourquoi il ne marche pas comme on s’y attend.

On a appris à tester les fonctions de manière itérative et même via les tests unitaires en continu. La différence entre le test fonctionnel et le test de performances est que l’on peut tester du fonctionnel de manière relativement isolée. Les performances sont définies en charge, pour l’ensemble du système d’un point de vue fonctionnel et sur une plate-forme technique bien définie. Donc si on veut être strict d’un point de vue Assurance Qualité on ne peut tester que juste avant la mise en production.

Il faut aussi ajouter un aspect financier. Le test de performance est entièrement automatisé, très sensible aux évolutions de l’application et entraîne des coûts importants de maintenance de ces scripts. D’autant qu’ils sont souvent faits avec des outillages maitrisés seulement par quelques personnes.

On a là les trois raisons qui font que les tests sont souvent réalisés trop tard :  
\- un excès de confiance sur la qualité du système  
\- une impossibilité de garantir la qualité du système partiellement, et donc tant qu’il n’est pas fini  
\- des coûts importants de maintenance des scripts

Pour pouvoir tester de manière itérative il faut sortir de cette vision rigide, sortir de la contrainte du système iso-fonctionnel, iso-production. Pour cela, il faut accepter que le test ne garantisse pas la qualité du système, mais garantisse qu’on n’ait pas trouvé un certain nombre de défauts qui empêcheraient d’atteindre de bonnes performances.

Pour préparer l’application au test de qualification et à la production, on va définir une série de tests non-qualifiants, exploratoires (parce qu’on ne sait pas quel critère appliquer au résultat que l’on va produire) ou dont l’objectif est limité, et répartir ces tests sur l’ensemble des itérations.

On peut commencer assez tôt sur des tests en baseline en travaillant sur les consommations de ressources, les tailles de page, les nombres de requêtes générées. Ces valeurs ne sont pas impactées par le dimensionnement du système et seront déterminantes pour la capacité du système à monter en charge. Certes ces tests ont un coût, mais livrer un système avec 6 mois de retard pour résoudre des problèmes de stabilité et de performances inacceptables a aussi un coût.

Sur une plate-forme non conforme les temps de réponse sont faux, mais l’application se comporte de la même manière si le but du test est de vérifier si le système se comporte de manière robuste face à des pannes ou des saturations de ressources, il n’est pas nécessaire d’avoir exactement la plate-forme cible

On peut aussi dans le cadre de la préparation du test final, tester seulement un scénario même si cela n’est pas représentatif car un autre scénario pourrait perturber celui ci. Cela permet de comprendre où sont les goulets d’étranglement de cette fonction

Bien identifier des objectifs de tests permet de les planifier au plus tôt en fonction de la disponibilité de l’application et de la plate-forme, et donc de trouver des défauts possibles au plus tôt. On évite aussi de s’épuiser en voulant refaire le plan de test de performance complet tous les mois.

##### **Agnès** : Une bonne pratique pour mener à bien des tests de performances est de limiter les écarts entre la production (“la vraie vie”) et le contexte des tests de performances? Sur quels points portent principalement les écarts?

**Claude** : Le test de performance n’est qu’une simulation, une expérience en éprouvette (une grande éprouvette). On va réunir tous les indices possibles sur, mais ce qu’il fait n’est jamais la vrai vie et faire différence introduit un biais.

Les biais potentiels sont partout.  
Sur la plate-forme cible : les machines, les équipements réseaux, les versions de logiciels, les configurations de logiciels (activation de fonctions de compression ou de gestion de cache), les volumétries dans la base de données, les temps d’accès disque.  
Sur ce que font les utilisateurs, comment ils le font, combien font-ils chaque type d’action, à quel rythme, la navigation qu’ils utilisent, les valeurs plus ou moins précises qu’ils utilisent en critère de recherche, la répartition des produits qu’ils consultent (sur des sites de commerce, il y a souvent 10% des produits beaucoup plus consultés que d’autres).

Des tas de biais, des tas de litiges potentiels en fin de course et donc il faut mettre tout ça à plat dès le départ.

Il faut distinguer deux choses :  
\- le test d’acceptance qui est une problématique contractuelle  
\- et les tests non qualifiants que l’on fait tout au long du projet et qui vont permettre de préparer l’application

Pour les tests de qualification, la plate-forme iso-production, iso-volume et la représentativité de l’usage de l’application sont incontournables. On accepte souvent une plate-forme partielle parce qu’on arrive à réduire le périmètre technique validés par le test et que l’écart permet d’extrapoler les résultats. Par exemple, on ignore souvent les équipement d’accès en amont des serveurs parce qu’on fait l’hypothèse qu’ils tiendront la charge. Ou on teste une plate-forme iso-production mais divisée par deux. Au delà, il faudrait utiliser des outils très complexes à mettre en œuvre pour simuler le résultat et le jeu n’en vaut pas la chandelle.

La définition de l’usage une partie assez critique de la définition des tests de performance, à cause du principe garbage in – garbage out. Les scénarios de test influent totalement sur le résultat. On peut obtenir de mauvaises performances avec n’importe quelle application en simulant un uasge irréaliste, ou a contrario avoir des performance faussement acceptables.

Dans les tests qualifiants, ce sont les exigences contractuelles qui définissent ce qu’est la “vrai vie”. On se base souvent sur 3 critères parce que c’est une bonne approximation : les actions fréquentes (elles représenteront le bruit de fond de tout ce qui a été ignoré), les actions vitales (parce qu’il est important de s’assurer qu’elles fonctionnent) et les actions qui pourraient présenter un risque pour les autres (par exemple un exemple de recherche avancée et de rapport souvent cause de ralentissement pour l’ensemble du système). On défini aussi combien d’utilisateurs font chaque type de scénario et les valeurs variables qu’ils vont utiliser.

Même si on se rapproche autant que possible de la réalité, le test de performance reste une simulation assez artificielle. La logique du test de qualification pousse à vouloir valider qu’il n’y aura aucun défaut en production. Et ça n’est pas possible avec une simulation. D’autant que les délais accordés aux tests se réduisent et que l’on est souvent obligé de faire au plus simple.

Pour vraiment garantir les performances, il faut travailler sur la production. Il faut prendre en compte le monitoring comme fonction de l’application pour pouvoir analyser les problèmes de performance en production et corriger les configurations ou l’application.

Il ne faut pas pour autant arrêter de tester les performances. L’objectif de vérifier un certain nombre de points avant de mettre en production est sain. Ce processus ne garantie pas l’absence de tous les problèmes mais permettra déjà de corriger les plus évidents et de mettre au point le système de surveillance.

Pour les tests non qualifiants, on peut se borner à reproduire les aspects de la réalité utiles pour l’expérience. Il faut identifier chaque objectif de test, les données que l’on veut obtenir et les pré-requis en manière de plate-forme et d’usage. Dans ce cas on acceptera des écarts lorsqu’ils n’ont pas d’impact sur la situation que l’on veut tester.

##### **Agnès** : Quels sont les principaux types d’outils nécessaires pour réaliser les tests de performance, tant du point de vue du scripting et de l’exécution même, que de celui de l’analyse de résultats?

**Claude** : Pour les scripts et l’exécution, il faut un outil de test de performance. Je me méfie un peu des modules “performances” des outils de test fonctionnel, qui ont tendance à ne pas monter en charge.

Pour le reste, j’utilise des tas d’outils différents en fonction des informations que je veux obtenir. Le premier niveau est de collecter des métriques de base sur le système pendant le test. J’utilise en général les données récupérées le plus directement possible car cela simplifie les problèmes d’installation. Je fais installer sar quand je peux sur les linux, sinon j’utilise vmstat en boucle dans un watch, et j’ai des scripts pour collecter les informations en HTTP, JMX, SQL … selon les briques.  
Pour le diagnostic, j’utilise les outils fournis par les systèmes, les données de monitoring, les logs, des [outils statistiques types R](http://www.r-project.org) pour analyser les séries de valeurs. Et je fais compléter s’il le faut.  
En charge, les outils de profilage Java sont difficilement utilisables. Quelques outils comment PerformaSure s’en sortent un peu mieux, mais sont très Java EE centriques. Or le problème n’est pas toujours dans le comportement du serveur d’applications.  
Lorsque l’on est dans le projet, on peut aussi utiliser des techniques plus introspectives. L’ajout des quelques traces d’alertes ou de compteurs qui permettent de mieux comprendre la répartition du temps de réponse dans les différentes couches ou services est souvent utile.

##### **Agnès** : Si on fait un focus sur l’outil que tu vas utiliser lors de ta démo, Jmeter, peux-tu nous présenter brièvement ses points forts et ses points faibles, notamment face aux mastodontes propriétaires de type LoadRunner ou SilkPerfomer?

**Claude** : JMeter est open source et donc sans coût de licence pour l’utilisation en charge. Il est en Java donc portable un peu partout. Il n’est pas très intuitif, mais au final il est assez flexible. Comme les scritps sont décrits par une IHM, il n’a pas de DSL. Les actions plus compliquées sont scriptables avec tous les langages supportés par la JVM. J’ai choisi de présenter celui là parce que c’est celui qui est le plus familier aux développeurs. Ce qui m’intéresse c’est de montrer les points auxquels il faut faire attention dans le test de performance, sur JMeter mais aussi sur les autres.

La mesure par un logiciel en Java peut être un problème. Les mesures de temps sont entachés par le GC. Il faut donc s’assurer que JMeter n’a pas de GC overhead.

Par rapport à d’autres outils commerciaux, les fonctions de reporting sont très limitées. J’utilise mes propres scripts en R et en Groovy pour faire les analyses et le reporting. Il a un socle pour le monitoring mais peu de composants sont fournis et permettent de mettre en place le monitoring sans trop comprendre ce qu’on fait (j’ai monitoré du Tuxedo, et j’avoue que je sais à peine comment ça marche). Il faut connaître les différents protocoles utilisés pour le monitoring, et au final ça n’est pas plus mal. ça oblige à comprendre ce qu’on fait.

Load Runner est un très beau produit, très complet et fiable, avec un très bon outil d’analyse de résultat qui me manque. Les scripts Web se codent en C et donc la difficulté est de trouver des gens qui maitrisent encore suffisamment le C pour coder les tests.

Silk Performer par exemple est un produit qui force un process (enregistrer le scénario, le vérifier, le paramétrer …). Il n’y a pas ce genre de chose dans JMeter et sans quelques bases, on ne sait pas très bien comment procéder. Mais c’est vrai aussi des process forcés par le produit car il suffit d’ouvrir la fonction de paramétrage pour que l’outil soit content.

Une des choses que j’aime dans JMeter c’est sa flexibilité surtout dans des usages plus exploratoires. Il est plus facilement scriptable. Beaucoup d’options sont configurables en ligne de commande. On peut passer les valeurs de paramètres par la ligne de commande. On a directement les résultats bruts et on peut les analyser avec ses propres outils pour les rentrer dans une intégration continue.

##### **Agnès** : En quelques mots, en synthèse, quels sont les ingrédients nécessaires à la réussite des campagnes de tests de performances?

**Claude** : Bien préparer ce que l’on veut faire, commencer au plus tôt même si on ne fait des campagnes en charge de vérification que tous les 1 mois ou 2, se donner les logs et les compteurs qui permettront d’analyser les problèmes, mettre autour de la table tous les gens qui peuvent trouver une solution et se parler sereinement.

### **Merci Claude !**

**Les inscriptions sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/performances)**
