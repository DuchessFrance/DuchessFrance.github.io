---
layout: "post"
author: 
  - "acrepet"
title: "Boucles Etranges!"
date: "2013-10-10"
---

| Le 15[![Eric Lefevre-Ardant](http://www.lyonjug.org/_/rsrc/1380806345071/speakers/eric.jpg?height=100&width=100)](https://twitter.com/elefevre) [](https://twitter.com/gtardif) [![Guillaume Tardif](http://www.lyonjug.org/_/rsrc/1380806470951/speakers/image001.jpg?height=100&width=100)](https://twitter.com/gtardif)octobre, [Eric Lefevre-Ardant](https://twitter.com/elefevre) et [Guillaume Tardif](https://twitter.com/gtardif) sont invités par le [Lyon JUG](http://www.lyonjug.org) pour une session intitulée [Boucles étranges - étranges boucles](http://www.lyonjug.org/evenements/boucles-etranges---etranges-boucles). Mais de quoi s'agit-il exactement? |

_Cet interview a été préparé conjointement par la team élargie du Lyon JUG : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)._

 

**La team du Lyon JUG : Guillaume et Eric, pouvez-vous chacun vous présenter?**

(Eric) Je suis dans notre industrie depuis 15 ans, principalement comme consultant autour de Java et de l'agilité. J'ai également participé à plusieurs startups.

(Guillaume) Je suis dans notre industrie depuis 15 ans, principalement comme consultant autour de Java et de l'agilité. J'ai également participé à plusieurs startups.

Toute ressemblance dans nos présentations respectives ne serait pas purement fortuite.

**La team du Lyon JUG : Qu’est-ce qui vous a réuni et vous a donné envie de préparer un talk autour des “Boucles étranges”?**

Nous nous connaissons depuis nos études à l'ISEP, il y a 20 ans. Pour cette présentation, j'ai (Eric) lu l'ouvrage de Douglas Hofstadter "Gödel, Escher & Bach" (GEB) et en en parlant avec Guillaume, nous avons réalisé que les idées présentées (les boucles étranges, mais aussi quelques autres) étaient liées à d'autres sujets tout à fait passionnants. Nous nous sommes dit que cela pouvait faire une belle présentation.

Et puis, cela change des sujets sur les frameworks de programmation ! Nous souhaitons aussi voir des sujets un peu différents de ceux rencontrés habituellement en conférence et cette présentation est notre contribution.

 

**La team du Lyon JUG : De quelles "boucles étranges" parlez-vous? Celles de notre programmation impérative? Y'a-t-il un rapport avec la conférence du même nom ([https://thestrangeloop.com/](https://thestrangeloop.com/))?**

La présentation commence avec des boucles telles que nous les voyons tous les jours dans notre code. Puis, nous montrons jusqu'où on peut aller en Java avec ce genre d'idées. Il y a aussi des digressions avec des boucles dans d'autres domaines.

Il y a en effet un rapport indirect avec la conférence The Strange Loop. Le nom de la conférence est inspiré, comme notre présentation, des idées de GEB. L'influence de GEB sur les informaticiens aux Etats-Unis, surtout ceux qui ont commencé à travailler dans les années 80 et 90, est énorme. D'ailleurs, Douglas Hofstadter a présenté une keynote à l'édition 2013 de The Strange Loop.

 

**La team du Lyon JUG : Vous vous inspirez de Douglas Hofstadter. Pouvez-vous nous présenter le personnage?**

C'est un peu une légende. Même s'il se défend d'être informaticien ou même cybernéticien, il a travaillé dans les rapports entre la conscience et les machines, les sciences cognitives en général. C'est le sujet de GEB, mais également de plusieurs autres livres qu'il a écrit depuis.

Il a par ailleurs une grande culture générale et est pratiquement bilingue en Français, ce qui l'a amené par exemple à écrire un livre composé en bonne partie de traductions d'un poème (un tombeau, plus précisément) de Clément Marot !

 

**La team du Lyon JUG : Quels autres héros (ou héroïnes) ont pu vous inspirer dans votre vie pour vous amener à faire aujourd’hui ce “métier formidable”?**

(Eric) Deux personnes ont eu beaucoup d'influence sur moi. Le premier est Alain Kerbrat, mon professeur d'informatique au collège, qui se trouvait également être chercheur. Il ne s'en est pas rendu compte, mais grâce à lui, je suis passé du bricolage en Basic à des "vrais" logiciels en Pascal. J'ai même travaillé avec lui dans mon premier poste. Le deuxième est Philippe Laroque, professeur à l'ISEP, qui nous a encouragé à regarder le langage Java (et aussi UML) qui démarrait tout juste à l'époque. C'était le temps où on ne pouvait pas obtenir ce genre d'informations simplement en lisant Slashdot ou Lambda The Ultimate !

(Guillaume) J'ai commencé à m'intéresser à l'informatique en classe de 2nde, en prenant l'option info, avec de la programmation en pascal. Ça a été un déclic pour moi, et je suis resté passionné par le coté ludique du développement depuis. Comme Eric, Philippe Laroque a été un professeur à l'ISEP qui m'a beaucoup marqué, en nous poussant à apprendre par nous même, et en nous proposant de réaliser un projet en Java au moment où on en était juste aux versions beta de java 1.0.

Et plus récemment, j'ai été pas mal influencé par 2 ans de travail au quotidien avec David Gageot, qui a bien marqué mon style de programmation et un goût accentué pour la simplicité.

 

**La team du Lyon JUG : Vous êtes tous deux des vieux javaistes (je vous rassure j’en suis une aussi ;-) ) : selon vous comment a évolué Java depuis ses débuts?**

(Eric) Je me souviens d'un ami qui était impressionné dans les tout débuts par la robustesse de Java : "si ça compile, c'est que ça marche !" Depuis, le langage lui-même a peu évolué, bien sûr. Par contre, la plateforme au sens large s'est énormément professionnalisée. L'écosystème en termes de librairies et méthodes de travail est le plus riche de tous les langages disponibles. Et il existe suffisamment de développeurs expérimentés pour attaquer l'immense majorité des problèmes techniques rencontrés. Qui peut en dire autant ?

(Guillaume) Les bases de la JVM et du langage java ont été suffisamment bonnes pour permettre de grandes évolutions sur un socle très stable. Bien sûr, le choix de librairies est gigantesque ; il y a eu certaines erreurs manifestes comme les EJBs 1.0 mais on peut très largement trouver son bonheur à coté.

Avec ça, l'ouverture de la plateforme a permis de très bien absorber des évolutions plus générales dans le développement comme la systématisation des tests ou l'intégration continue qu'on ne voyait pas énormément avant 2000 ; les développeurs java sont forts pour bien s'outiller eux même, j'ai l'impression que c'est plus vrai que dans d'autres langages.

 

**La team du Lyon JUG : Java reste-t-il votre langage de prédilection?**

(Eric) Tous les ans, je touche à d'autres langages, histoire de m'amuser et de voir leurs bonnes idées. Mais quand il s'agit de développer une application professionnellement, Java reste mon langage préféré.

(Guillaume) Oui, sans hésitation.

J'ai aussi "bricolé" avec d'autres langages (basés JVM en général) et j'ai eu l'occasion de faire du .NET, javacript ou du scala dans un cadre pro. C'est certainement en partie une question d'habitude, mais je ne retrouve jamais la productivité que je peux avoir en java, avec un très large écosystème, un IDE hyper efficace... Peut être le signe que je deviens vieux?

 

**La team du Lyon JUG : Et puisqu’on sait que vous savez aussi bien manipuler les boules de cristal que les boucles étranges, comment voyez-vous l’avenir de Java?**

(Eric) Avec son armée de développeurs et la base de code existante, Java va rester pour longtemps. Par contre, je n'imagine pas des évolutions majeures dans le langage, surtout en comparaison avec des langages plus modernes. Il est possible qu'il devienne l'équivalent de COBOL : un langage utilisé partout professionnellement mais un peu méprisé par les jeunes développeurs. Finalement, c'est peut-être un avenir plus radieux que celui de Smalltalk ou Pascal.

(Guillaume)  je pense que java a encore de longues années devant lui, avec les projets existants et sociétés existantes autour de Java, le nombre de développeurs et la facilité à recruter. Pour le moment on voit pas mal de nouveaux langages (souvent basés JVM) dont on ne sait pas encore lesquels vont percer (scala semble un bon challenger, mais ca fait aussi pas mal de temps que scala existe et il y a peut être un palier un peu difficile à passer). Ces langages semblent plutôt partis pour co-exister avec une très grande base de code et de librairies java, sans vraiment lui faire de l'ombre.

### **Merci Eric et Guillaume!**

Merci à Anne-Laue Rigaudon pour sa précieuse relecture!

**Les inscriptions pour la session de Eric et Guillaume sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/boucles-etranges---etranges-boucles).**
