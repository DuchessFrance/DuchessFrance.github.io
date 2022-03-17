---
layout: "post"
author: 
  - "acrepet"
title: "Interview de Mauro Talevi, speaker MIX-IT sur Behavior Driven Development (BDD) et JBehave"
date: "2011-03-25"
categories: 
  - "les-conferences"
tags: 
  - "bdd"
  - "java"
  - "jbehave"
  - "mix-it"
  - "tdd"
  - "tests-unitaires"
---

| [![logo_mixit](/assets/2011/03/2011-03-25-interview-de-mauro-talevi-speaker-mix-it-sur-behavior-driven-development-bdd-et-jbehave/logo-mixit2011_small-300x75.png "logo_mixit")](http://www.mix-it.fr/)Une nouvelle rencontre avec un des speakers de [MIX-IT](http://www.mix-it.fr). Vous avez déjà pu lire sur le blog des JDuchess [l’interview des speakers Christophe Grand et Laurent Petit sur Clojure](http://jduchess.org/duchess-france/blog/session-clojure-a-mix-it/), ou encore [celle de Nicolas Martignole](http://jduchess.org/duchess-france/blog/rencontre-avec-nicolas-martignole-keynote-speaker-a-mix-it/), keynote speaker de la conférence. Aujourd’hui, c’est au tour de Mauro Talevi qui nous fait également l’honneur d’être présent parmi les speakers de [MIX-IT](http://www.mix-it.fr). Et quel honneur! Mauro est un des principaux contributeurs au développement de [JBehave](http://jbehave.org), un framework Java permettant de faire du _Behavior Driven Development_ (BDD) dont nous allons découvrir les concepts lors de cet interview. |

Mauro Talevi travaille pour la société Agilesque, à Londres, spécialisée dans le conseil, le coaching et les développements Agile. Il a accompagné les entreprises dans la réalisation de gros projets en introduisant les pratiques et les outils Agiles, convaincu que les meilleurs résultats peuvent être obtenus en réunissant les bonnes idées et les outils appropriés pour les implémenter. Il est actif dans de nombreux projets open-source, notamment [JBehave](http://jbehave.org).

[![Mauro talevi, Tech Lead of JBehave](/assets/2011/03/2011-03-25-interview-de-mauro-talevi-speaker-mix-it-sur-behavior-driven-development-bdd-et-jbehave/mt.jpg)](http://jbehave.org)

[](http://jbehave.org)

[](http://jbehave.org)[**Mauro Talevi**](http://jbehave.org "Mauro talevi, Tech Lead of JBehave")

**Agnès: Comment et quand a émergé l’approche du Behavior Driven Development (BDD), quels étaient les objectifs initiaux de cette méthode? Comment la situer vis-à-vis du Test Driven Development (TDD), du Domain Driven Design (DDD), et des tests d’acceptance [\*1](#etiquette1) automatisés?**

**Mauro**: Le terme de BDD a été inventé par Dan North lorsqu’il essayait d’améliorer la manière d’introduire TDD à des équipes qui découvraient les pratiques agiles. L’expérience de Dan en tant que coach agile a mis en exergue les aspects de TDD qui n’étaient pas facile à appréhender pour des néophytes et qui pouvaient ébranler les bénéfices de TDD pour les utilisateurs expérimentés. Ces aspects concernaient notamment la définition du scope de chaque test, le fait de déterminer quelle convention de nommage devrait être utilisée et quelle information devrait être remontée lors de l’échec d’un test. BDD – en substance, le fait que décrire le comportement attendu soit un meilleur moyen de tester – a été la réponse de Dan à ces écueils perçus de TDD. Dans cette optique, vous pouvez parfois entendre que «BDD est TDD bien fait», mais BDD, au fil du temps, a évolué pour devenir un paradigme à part entière du développement qui complète TDD plutôt que d’essayer de le remplacer.  
L’objectif initial fixé sur le langage et la communication – qui a toujours été l’une des principales caractéristiques de la philosophie sous-jacente à BDD – a évolué pour englober plus largement l’ensemble de l’Analyse Agile. Décrire le comportement attendu (mais pas encore implémenté) devient alors l’objectif principal de la phase d’analyse. Comme en DDD, l’accent est mis sur le développement d’un langage universel (voir question suivante). De plus, le comportement analysé, décrit sous forme textuelle, constitue le critère d’acceptance pouvant être automatisé. En revanche, tous les tests d’acceptance automatisés n’expriment pas le comportement attendu sous une forme compréhensible par les StakeHolders [\*2](#etiquette2).

**Agnès: Quels sont les concepts fondamentaux sous-jacents à BDD? Eric Evans dans son livre célèbre “Domain-Driven Design” a décrit l’usage d’un langage universel (ubiquitous language) pour modéliser un système, basé sur un vocabulaire réellement métier. BDD reprend ce concept d’ubiquitous language. Comment BDD permet-il de faire « pénétrer » ce vocabulaire métier dans le code, et notamment dans l’écriture des tests?**

**Mauro**: BDD place en priorité haute le fait d’axer la communication sur le comportement même du système. Pour arriver à cela, il tente de créer un langage universel, c’est-à-dire un langage qui peut être partagé entre les membres de l’équipe et les StakeHolders. Ce langage devrait être un Domain Specific Language (DSL), un langage dont la syntaxe est bien comprise par tous et possède une signification centrée sur le métier.

A travers les échanges entre les products owners et les équipes et sur la base de ce langage commun, des Stories puis des Scenarios vont être définies. Ces deux termes sont utilisés pour décrire le comportement d’une application. Une Story correspond à une définition très haut niveau d’une exigence métier. On parle aussi de User Story en Scrum. On peut même utiliser un template pour décrire la Story :

**En tant que**  
**Je veux**  
**De sorte que**

Nous allons utiliser l’exemple simple d’une personne voulant acheter une place de concert pour le groupe de rock Arcade Fire. L’une des Story pourrait ressembler à ceci:

**Titre: la personne retire sa place à la billetterie du concert**  
**En tant que** fan du groupe de rock Arcade Fire,  
**Je veux** retirer ma place de concert sur un site de billetterie en ligne,  
**De sorte que** je n’ai pas à faire la queue le soir du concert et de sorte que je sois sûre d’avoir une place

Plusieurs Scenarios vont pouvoir alors s’appliquer à une Story : le nombre de place restante est suffisant, il ne reste plus de place pour le concert. Ces Scenarios peuvent eux-mêmes être décrits selon un modèle de syntaxe. Ils vont alors être définis en texte simple respectant une forme structurée composée d’Etapes, chacune correspondant elle-même à une phrase commençant par l’un de ces trois mots clés:

**Etant donné que**  
**Quand**  
**Alors**

En utilisant ce modèle de syntaxe des étapes, voici ce que pourrait être les scenarios de notre Story :

\- Scénario 1: Le nombre de places pour le concert est suffisant  
**Étant donné que** le nombre de places pour le concert est suffisant  
**Et que** je dispose de la somme d’argent nécessaire  
**Lorsque** je demande ma place  
**Alors** assurez-vous que le nombre de place restante est décrémentée  
**Et** s’assurer que la place de concert me soit attribuée

\- Scénario 2: Le nombre de places pour le concert est insuffisant  
**Étant donné que** le nombre de places pour le concert est insuffisant  
**Lorsque** je demande ma place  
**Alors** le site de billetterie en ligne m’indique que je ne pourrai assister au concert qu’en allant acheter ma place le soir même.

En substance, BDD crée un mapping entre les étapes textuelles (compréhensibles par les humains) et les méthodes exécutables (compréhensibles par les machines). Ce mapping peut également supporter la définition de paramètres qui permet alors la réutilisation de ce mapping, autrement dit un ensemble de modèle d’étapes définissant la syntaxe des étapes autorisées (Etant donné que, Quand, Alors). Il est crucial que cette syntaxe des étapes soit définie de manière cohérente et à un seul endroit. Par exemple, [JBehave](http://jbehave.org) utilise les annotations java pour associer la syntaxe des étapes aux méthodes exécutables. Cette syntaxe des étapes peut être publiée et utilisée comme blocs de construction par ceux qui écrivent les Stories et les Scenarios définissant le critère d’acceptance.

**Agnès: En quoi BDD est un moyen efficace d’améliorer la communication entre les l’équipe de développement et les StakeHolders, et de fait la définition des besoins métiers? Qu’est-ce qui fait de BDD un puissant levier pour déployer l’agilité sur un projet?**

**Mauro**: Comme mentionné précédemment, BDD encourage la définition d’un DSL et d’une syntaxe d’étapes. Une fois que ces éléments ont été définis, les scenarios peuvent être écrits par n’importe quel membre de l’équipe et vérifiés par d’autres membres de l’équipe et par les StakeHolders. Ils peuvent même être écrits par les StakeHolders eux-mêmes, à condition qu’ils aient acquis une compréhension suffisante du langage. BDD permet la définition de tests d’acceptance automatisés, le fameux critère “Done” requis par Scrum et d’autres méthodes agiles (on parle aussi de _Definition of Done_, DoD, qui détermine si l’implémentation d’un élément de backlog de produit est bien terminée et satisfaisante d’un point de vue métier). Ces tests peuvent être écrits avant que la fonctionnalité soit développée, par conséquent on parle de “behaviour-driven”, piloté par le comportement voulu, à savoir par le métier. BDD devient aussi un paradigme pour l’analyse Agile puisque décrire le comportement conduit ainsi à une compréhension plus approfondie du système. BDD peut impulser ainsi une forte confiance, à la fois aux StakeHolders à qui on donne – itération après itération – une preuve tangible du comportement précis du système, et à l’équipe à qui on fournit des critères d’acceptance à satisfaire en béton.

**Agnès: Te concernant, comment et quand t’es tu intéressé à cette approche? L’as-tu déployé sur d’importants projets? Quelles difficultés as-tu pu rencontrer? Quel bilan peux-tu faire des projets ayant déployés les pratiques BDD?**

**Mauro**: Je me suis impliqué dans BDD à la fin de l’année 2006. A cette époque, j’utilisais Fit comme un outil pour les tests d’acceptance automatisés. Il avait des fonctionnalités intéressantes comme la possibilité de créer un DSL (avec pour convention le nom de méthode), mais il devenait de plus en plus limitée par sa nature tabulaire. Lors d’une conférence à Londres, Dan m’a fait connaitre BDD et [JBehave](http://jbehave.org) et j’ai immédiatement trouvé que cet outil adressait les problèmes auxquels je me heurtais avec Fit. J’ai commencé à utilisé [JBehave](http://jbehave.org) dans un projet commercial en 2008. Nous avons eu la chance d’avoir ce projet entièrement nouveau à faire croitre en interne, permettant l’introduction des concepts BDD auprès de l’équipe et des StakeHolders. Mais cela ne nous a pas empêché de faire des erreurs et de tomber dans des pièges, notamment sur le fait de savoir comment présenter et comment communiquer de larges ensembles de données. Nous avons attaqué avec de gros fichiers en format XML, ce qui était facile à dupliquer mais très difficile à maintenir et refactorer. Nous avons tiré bénéfice de ces erreurs et avons migré beaucoup de ces données dans des structures tabulaires – plus lisibles au format texte et plus facilement refactorables.  
Aujourd’hui, BDD est beaucoup plus largement utilisé. Tous les projets pour lesquels j’ai promu l’adoption de BDD ont jugé que cette méthode était utile, que ces projets utilisent l’approche agile ou non. De manière commune avec l’Agilité, BDD n’évite pas les difficultés au projet, il les rend simplement plus visibles.

**Agnès: Tu es l’un des responsables et fondateurs du projet JBehave, aux côtés de Dan North, la première personne a avoir introduit cette notion de BDD . Peux-tu présenter JBehave, les domaines qu’il adresse? Comment et pourquoi vous est venue l’idée de vous lancer dans le développement de ce framework?**

**Mauro**: [JBehave](http://jbehave.org) a été le premier projet à mettre en œuvre en Java les idées sous-jacentes à BDD. Il s’est concentré sur l’entrée textuelle, considéré comme le Golden Master, exprimant le comportement attendu en utilisant un langage universel automatisable. Les User Stories en entrées sont analysées et ventilées dans des Scénarios et des étapes, qui sont tour à tour mappés aux méthodes Java en utilisant les annotations et aux patterns d’étape. [JBehave](http://jbehave.org) prend en charge toutes les notions de BDD et est parfaitement piloté par la demande des utilisateurs. Nous nous sommes efforcés d’aborder le développement de telle manière à vraiment livrer la fonctionnalité attendue et le comportement qui était nécessaire et utile pour les utilisateurs. Toute l’équipe voulant tester un système qui peut être accessible via une API en Java peut utiliser et bénéficier de [JBehave](http://jbehave.org). Il est à noter que le système sous-jacent aux tests ne doit pas être lui-même forcément écrit en Java.  
Par exemple, nous pouvons tester n’importe quelle application Web avec un framework comme [Selenium](http://seleniumhq.org/), qui propose (comme d’autres) une API Java, pour piloter l’interaction avec les pages web.

**Cette interview a été réalisée en anglais. Voici mes notes de traduction:**

**\*1** : en français on devrait parler de tests d’acceptation, mais permettez-moi cet anglicisme ! L’approche ATDD (Acceptance Test Driven Development) est une approche qui place les tests métiers au cœur du projet : le Product Owner préférera alors spécifier sa demande via ces tests d’acceptance, indiquer comment vérifier que sa fonctionnalité désirée est correctement implémentée, plutôt que de se contenter de la décrire dans un document de spécification. De la même manière j’ai laissé le terme de critère d’acceptance plutôt que de parler de critères d’acceptation.  
**\*2** : Littéralement “partie prenante”, mais je n’ai volontairement pas traduit le mot “StakeHolders”. J’aurais pu peut-être utiliser le terme se rapprochant, emprunté à Scrum, de “Product Owners”. Mais les “Stakeholders” sont souvent plus que les “Product Owners”. Ils représentent toutes les personnes qui ont un intérêt (“Stake”) dans le projet, mais ils ne portent pas nécessairement toute la responsabilité des “Product Owners”.

### **Merci Mauro! Et rendez-vous le 5 avril à [Mix-IT](http://www.mix-it.fr/)**

**Les inscriptions à Mix-IT sont ouvertes!**

****Allez découvrir le programme sur le [site](http://www.mix-it.fr/sessions) pour vous inscrire!  
Et d’ici là suivez [@mixIT\_lyon](http://twitter.com/mixIT_lyon) sur twitter pour avoir plus d’informations!****
