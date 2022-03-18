---
layout: "post"
author: 
  - "marina"
title: "Retour sur l'EclipseCon France 2017"
date: "2017-08-30"
categories: 
  - "les-conferences"
tags: 
  - "cloud"
  - "conferences"
  - "data-science"
  - "devops"
  - "eclipse"
  - "java"
  - "transpiler"
coverImage: "eclipsecon.jpg"
---

| Les 21 et 22 juin avait lieu à Toulouse l'EclipseCon France. J'y participais pour la première fois grâce aux invitations que la fondation Eclipse a offert à Duchess France. J'avais la chance d'accompagner Aurélie Vache, bien connue des Duchess France et aguerrie à l'EclipseCon. |

Vous trouverez ici des petits comptes-rendus des conférences que j'ai suivies avec surtout les liens vers les slides et comble du bonheur, tout est en vidéo :

https://www.youtube.com/playlist?list=PLy7t4z5SYNaTkH\_YABYfyG11T4VIZA6JH

J'ai regroupé les conférences par thème proposés lors des deux jours :

- Science, Data Analytics, Data science
- Clouds & DevOps
- Eclipse Technologies and community
- Other cool stuff

Les slides sont en grande partie publiées sur le site d'Eclipse: [https://www.eclipsecon.org/france2017/conference/schedule/session/2017-06-21](https://www.eclipsecon.org/france2017/conference/schedule/session/2017-06-21)

Si vous ne voulez pas tout lire, les conférences que je recommande le plus chaudement sont :

1. Debug Java code like a Pro, by Mikaël Barbero, n° 8 dans la playlist youtube
2. How to provide a portable developer workspace with Eclipse Che, by Florent Benoit & Stevan Le Meur, n° 19.
3. Language Server Protocol in action: C# in Eclipse IDE, Java in VSCode, your language everywhere, by Mickael Istria, pas trouvé dans la playlist :o(

## Science, Data Analytics, Data Science

##### _The Big Data Puzzle - Where Does the Eclipse Piece Fit?_

J. Langley de CohesionForce nous a présenté l'architecture logicielle utilisée par sa société. Centrée autour des projets Apache pour le Big Data, elle utilise aussi des projets Eclipse, notamment Eclipse BIRT pour la visualisation de données. La présentation était intéressante et concrète, je vous invite à découvrir les slides très complètes

[https://www.eclipsecon.org/france2017/sites/default/files/slides/EclipseCon\_Big\_Data\_2017.pdf](https://www.eclipsecon.org/france2017/sites/default/files/slides/EclipseCon_Big_Data_2017.pdf)

##### _Charts to the Eclipse people - The making-of_

Philip Wenig (Lablicate GmbH) a présenté différents outils de visualisation de données scientifiques et fait la promotion de Eclipse ChemClipse qu'il utilise et auquel il contribue.

[![Charts Eclipse](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/chem-300x224.jpg)](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/chem.jpg)

Ce projet s'inscrit plus largement dans les travaux d'un nouveau workgroup Eclipse dédié à la science. Le groupe est jeune et attend impatiemment que d'autres membres les rejoignent. Le but est de dégager les besoins communs aux travaux scientifiques et valider la pertinence des chantiers à engager. Informaticiens ou scientifiques, ils vous attendent :

[https://science.eclipse.org/](https://science.eclipse.org/)

## Cloud & DevOps

##### _How to provide a portable developer workspace with Eclipse Che?_

Eclipse Che est un IDE Cloud qui permet d'accéder à son environnement de travail depuis n'importe quel support via un navigateur web.

Il permet aussi de multiplier des configurations et des les distribuer. C'est plus particulièrement cette fonctionnalité que nous ont présentée les Red Hat Florent Benoit et Stevan Le Meur. Ils nous ont fait la présentation et la démonstration en live de l'installation d'un environnement de développement sur docker via Eclipse Che, puis la façon de le partager.

Oubliées les galères d'install à l'arrivée de chaque nouveau développeur sur un projet. Le rêve !

[https://www.eclipsecon.org/france2017/sites/default/files/slides/2017-EclipseCon-France-Chefile\_0.pdf](https://www.eclipsecon.org/france2017/sites/default/files/slides/2017-EclipseCon-France-Chefile_0.pdf)

##### _Easy container oriented development with Docker and OpenShift tooling_

Le niveau était trop élevé pour moi, j'ai compris combien le résultat était efficace mais eu du mal à suivre toutes les étapes de la démonstration. Le speaker Jeff Maury (Red Hat) lui, maîtrise à fond son sujet.

[![ Eclipse Jeff Maury](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/jeffmaury-300x224.jpg)](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/jeffmaury.jpg) OpenShift est un outil qui fait partie de la suite Jboss Tools de RedHat. C'est une surcouche à Kubernetes, lui même surcouche de Docker, qui permet de gérer le déploiement d'applications sur un ou plusieurs containers Dockers. Eclipse est intégré dans le Jboss developer studio et Docker dans les Jboss Tools, ce qui permet de tout gérer dans un seul espace : la programmation, le déploiement instantané et le remote debugging.

##### _Visual Studio Team Services can help Eclipse developers ? You're kidding me!_

François Bouteruche de Microsoft nous présente ce nouveau service, basé sur le cloud maison Azure. Il permet de coder sur n'importe quel plateforme, avec n'importe quelle IDE et de faire du déploiement et de l'intégration continue. Mais pas que. On peut s'en servir pour faire de la gestion de projet, du suivi de bugs... Un service qui a donc l'air assez complet et d'une utilisation simple.

Dommage que la conférence ait contenu un peu trop de démo à mon goût, mais bon, je ne suis pas fan des démos au long cours.

## Eclipse Technologies & Community

##### _Eclipse and Java 9_

[![Eclipse java9](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/java9-300x224.jpg)](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/java9.jpg)

Jay Arthanareeswaran d'IBM nous a présenté les nouveautés de Java 9 et comment elles sont supportées dans l'IDE d'Eclipse. La grosse nouveauté de Java 9 ce sont les modules. D'une part, il n'y a plus de JAR mais des JMOD ou des JImage(pour les runtime images) et d'autre part le JDK lui-même est éclaté en modules de façon à pouvoir choisir exactement les modules nécessaires à un projet.

##### _Language Server Protocol in action: C# in Eclipse IDE, Java in VSCode, your language everywhere_

Ou comment au lieu de devoir développer une implémentation pour chaque langage et chaque outil spécifique on peut se servir du Language Server Protocol(LSP) et n'avoir à définir que :

- - l'implémentation du langage de programmation dans le LSP
    - l'implémentation du LSP pour l'outil

et ainsi pouvoir distribuer n langages sur n outils d'édition !

Convaincant et très bien illustré par Mickael Istria de Red Hat .

https://www.slideshare.net/mickaelistria/eclipsecon-france-2017-eclipse-platform-generic-editor

##### _Getting started with Jubula - an UI test automation framework_

Markus Tiede nous a présenté Jubula, un outil de test UI. A la base conçu pour un public non informaticien, il peut être utilisé soit dans un environnement de test avec production de rapports d'exécution user-friendly, soit directement en environnement de développement où il peut éventuellement être associé à Junit. Il supporte les applications SWT, Swing et JavaFX.

J'ai particulièrement apprécié le speaker qui était très pédagogue et articulait distinctement, ça fait du bien après avoir enchaîné une journée de conférences en anglais ;o)

[https://www.eclipsecon.org/france2017/sites/default/files/slides/2017-ecf-jubula.pdf](https://www.eclipsecon.org/france2017/sites/default/files/slides/2017-ecf-jubula.pdf)

##### _Code coverage in practice_

Evgeny Mandrikov de SonarSource a fait un bref historique de l'intégration d'Emma dans Eclipse via le plugin EclEmma et l'introduction de la librairie jacoco depuis la version 2.0

Le plugin EclEmma permet d'analyser le code et de mesurer le pourcentage testé de toute une application. Il permet de visualiser le taux de couverture dans son ensemble, par méthode et jusqu'à la ligne près. Le code source sera marqué par couleur pour indiquer les lignes qui sont totalement, partiellement ou jamais testées.

En plus des outils en eux-même, Evgeny nous a fourni des bonnes pratiques et des méthodes pour atteindre les 100% de couverture.

[https://www.eclipsecon.org/france2017/sites/default/files/slides/Code%20Coverage%20in%20Practice%20-%20EclipseCon%20France%202017.pdf](https://www.eclipsecon.org/france2017/sites/default/files/slides/Code%20Coverage%20in%20Practice%20-%20EclipseCon%20France%202017.pdf)

##### _Debug Java code like a pro_

Ah !!! Ma conférence préférée ! Parce qu'elle est celle qui est la plus concrè[![Eclipse Mickael Barbero](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/mickaelbarbero-300x224.jpg)](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/mickaelbarbero.jpg)te et liée à ce que je fait quotidiennement et parce que j'ai appris des choses incroyables !!!! Vous avez déjà fait F8 jusqu'à ce que la boucle passe dans la valeur de test qui vous intéresse ? Moi oui, en fait il suffisait d'ajouter une condition à mon point d'arrêt pour que le débugger ne s'arrête que sur la valeur qui m'intéressait, magique. Des fonctionnalités de ce type Mikaël Barbero  en connaît des tas et Eclipse Oxygen en a de nouvelles. Vous pouvez aller les chercher sur internet à partir des chapitres de ses slides, je vous conseille quand même la vidéo(n°1 de mon classement !).

[https://www.eclipsecon.org/france2017/sites/default/files/slides/2017ecf.pdf](https://www.eclipsecon.org/france2017/sites/default/files/slides/2017ecf.pdf)

## Other cool stuff

##### _The Past, Present, and Future of Robotics_

Une conférence sur l'histoire de la robotique, animée par Francesco Ferro, CEO de PAL Robotics, entreprise implantée à Barcelone.

Il nous a présenté des vidéos incroyables ce que se fait actuellement, par exemple :

https://www.youtube.com/watch?v=sv35ItWLBBk

Les robots savent courir !!! Celui qu'il avait mis dans ses baguages, TIAGO [http://tiago.pal-robotics.com/](http://tiago.pal-robotics.com/), ne courait pas mais n'en était pas moins impressionnant.

##### _TypeScript, Future of JavaScript and rise of the transpilers_

Sebastien Pertus de Microsoft nous présente TypeScript, un transcompilateur (transpiler) javascript et son intérêt. Le langage javascript utilise le standard ECMAScript (ES). Il y a environ une version par an et à chaque nouvelle version les navigateurs doivent être mis à jour pour implémenter les nouvelles fonctionnalités. Ce travail prend en général un peu plus d'un an, par exemple la version de 2015, ES6 est implémentée aujourd'hui à 97%.

Les transcompilateurs ne doivent pas être confondus avec des compilateurs. Le compilateur transforme un langage donné vers un langage complètement différent, par exemple du java vers du bytecode. Le transcompilateur transforme du code dans une autre version du même langage.

Cela permet donc d'utiliser en développement des fonctionnalités récentes du standard même si elles ne sont pas implémentées dans les navigateurs. Le transcompilateur fera le pont entre la version du navigateur et la version ES.

Très intéressant et convaincant.

##### _Ignite Talks_

Les ignite talks c'est un exercice impressionnant auquel j'assistais pour la première fois : les speakers sont limités à 5 mn de parole et 20 slides. Je ne vais pas tous les détailler, il y en a trois qui m'ont plus imprimé la mémoire :

- la présidente du program committee, Tracy Miranda qui nous a présenté le science workgroup mené autour d'Eclipse (déjà évoqué lors de la conférence "Charts to the Eclipse people") dont elle a présenté les principaux axes de travail et le fonctionnement.
- une duchess : Charlotte Cavalier dans "IT geek in IT services company: Survival Guide", à ce niveau de maîtrise, c'est presque un show. Super conférence sur son expérience dans une grande ESN et comment elle a survécu ou au moins essayé de survivre. Forcément, ça a parlé à bon nombre des personnes présentes.
-  le Red Hat Sun Tan,  avec "Simplified Open Source Contributions with Eclipse Che", s'est lancé un pari fou : une live-démo en 5mn... qui a foiré. Mais il a réussi à rendre le moment sympathique et qui sait, il retentera peut-être le coup !

 

[![Eclipse Charlotte Cavalier](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/charlottecavalier-1024x766.jpg)](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/charlottecavalier.jpg)

La Duchess Charlotte en action.

## Conclusion

En conclusion des deux journées, la closing session avec le jeu habituel carton rouge/carton vert (j'ai perdu à la première question) et encore une Duchess à l'honneur avec les remerciements au program committee dont fait partie Aurélie :

[![Eclipse Aurelie Vache](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/committee-program-1024x766.jpg)](/assets/2017/08/2017-08-30-retour-eclipsecon-france-2017/committee-program.jpg)

 

Ma conclusion à moi : ces deux jours étaient hyper riches en contenu.

Je suis développeuse depuis 16 ans mais débutante sur les technologies objet et web. Et bien j'ai survécu, le niveau est impressionnant mais pas inaccessible. Et puis pour rédiger cet article il a fallu que je me replonge dans les sujets pour éviter (au maximum) de dire des bêtises et tout ça fait que j'ai énormément appris.

L'organisation était quasi parfaite, les conférences sont bien enchaînées, à l'heure et on a toujours le temps de faire une pause entre deux. Le seul bémol, s'il faut en trouver un, c'est que les conférences manquent un peu d'humour, quelques sourires n'enlèveraient rien au sérieux du propos. Cela dit, s'exprimer devant un parterre aussi impressionnant ne doit pas être évident ! Parce que ce qui m'a frappée aussi c'est la somme de professionnels compétents et impliqués que j'ai croisés durant ces deux jours. Une très bonne expérience en somme.
