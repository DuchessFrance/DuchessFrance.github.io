---
layout: "post"
author: 
  - "acrepet"
title: "DDD, oui mais encore?"
date: "2013-06-12"
---

| Le 18 juin prochain, [Cyrille Martraire](http://cyrille.martraire.com/) est invité par le [Lyon JUG](http://www.lyonjug.org) pour une session autour de l'approche [DDD ("Domain Driven Design")](http://www.lyonjug.org/evenements/ddd). Nous lui avons posé quelques questions en amont de sa session, pour comprendre un peu plus ce que sous-tend cet acronyme. |

[![Cyrille Martraire](/assets/2013/06/2013-06-12-ddd-oui-mais-encore/member_25013122.jpeg)](http://cyrille.martraire.com/)

_Cet interview a été préparé conjointement par la team élargie du Lyon JUG : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)._

**La team du Lyon JUG : Peux-tu te présenter ?**

**Cyrille**: Bonjour, je suis Cyrille Martraire, [@cyriux](http://twitter.com/cyriux) sur Twitter, et je suis développeur depuis une douzaine d’années, en Java, dans les SIG puis dans la finance pour l’essentiel. Je suis passionné par les pratiques de développement en 'DD' telles que TDD, BDD, DDD, les techniques de Code Legacy et tout ça et en 2009 j’ai donc créé la société [Arolla](http://www.arolla.fr) autour de ces passions. Les technologies qui se téléchargent sont importantes et il faut les connaitre, mais les pratiques sont à mon sens plus importantes car ce sont elles qui guident les décisions.

**La team du Lyon JUG : Tu as fondé le User Group “Paris Software Craftsmanship Community”. Quel retour d’expérience peux-tu nous donner de ce User Group? Quels types d'actions menez-vous? Avec quels objectifs?**

**Cyrille**: J’ai crée le groupe Paris Software Craftsmanship Community fin 2011 avec le soutien de Sandro Mancuso de la communauté de Londres. Sandro était d’ailleurs venu faire un talk qui avait fait forte impression pour notre première rencontre. Nous nous retrouvons chaque mois pour des Open-Spaces, c’est-à-dire des discussions libres sur les sujets qui intéressent les participants présents ce soir-là, ou de plus en plus pour des workshops thématiques comme le TDD, les tests fonctionnels automatisés, des katas Legacy Testing & Refactoring, ou dernièrement sur l’attitude avec le management.

Il ne faut pas oublier que l’idée est de rencontrer des développeurs et développeuses plus passionnés que les collègues habituels pour apprendre, partager et s’exercer. Les retours des participants sur Meetup sont très positifs, et pour ma part j’ai toujours beaucoup de plaisir à discuter avec des passionnés !

**La team du Lyon JUG : Tu vas parler de l'approche DDD lors ta session au Lyon Jug. Peux-tu nous dire ce qu’est le DDD ? Le 3° D signifie Design, du coup est-ce que ça concerne vraiment les développeurs ?**

**Cyrille**: On a longtemps opposé le design au développement, avec toutes sortes d’excès comme le big design upfront (BDUF), et les délires UML, Case-Tools et MDA. Depuis le manifeste agile et le Software Craftsmanship on a eu tendance à penser que le design n’était plus bienvenu, ou devait émerger comme par magie du code et du refactoring. Mais quand on fait du TDD, l’étape 3, l’étape de refactoring, est une pure étape de design. Elle est petite, mais c’est du pur design, évidemment faite par des développeurs. D’ailleurs je pense qu’en développement logiciel il n’y a qu’un seul rôle : développeur, qui s’occupe de code, de design et d’architecture. Domain-Driven Design s’intéresse aux projets relativement complexes et avec un domaine riche, par exemple la finance, le e-commerce ou le médical. Puisque le domaine métier est aussi important dans ces projets, DDD fournit des pratiques et des patterns pour bien représenter le domaine dans le code, de la façon la plus simple possible. On va parler un langage unique entre tous, découper le projets en Bounded Contexts pour simplifier chaque modèle métier, et mettre en œuvre des value objects, repositories, anti-corruption layers etc. Mais c’est impossible de résumer DDD en quelques lignes !

**La team du Lyon JUG : A propos du livre fondateur sur ce concept d'Eric Evans, Domain-Driven Design, beaucoup le trouvaient pas très concret, trop théorique. Que t’as apporté cette première lecture (si tu l'as lu ;-) ...) ? Comment as-tu "concretisé" cette approche et implementé ton premier projet full DDD?**

**Cyrille**: Le livre est indigeste, c’est évident. Je l’ai lu en plusieurs fois et à plusieurs reprises au fil des années. Ma dernière lecture était passionnante par contre, le livre a une profondeur incroyable, chaque mot est soigneusement pesé. Pour être honnête, j’ai aimé DDD parce que ma démarche m’amenait déjà vers un style similaire, en 2005. J’ai donc profité des conseils de DDD pour aller plus loin et démultiplier mon efficacité dans les projets.

**La team du Lyon JUG : As-tu déployé DDD sur d’importants projets? Quelles difficultés as-tu pu rencontrer? Quel bilan peux-tu faire des projets ayant respecté cette approche?**

**Cyrille**: Bien sûr j’ai déployé DDD sur des projets, en startup, éditeurs et banque, et j’aime bien dire que c’est mon « arme secrète ». Les principales difficultés sont le manque de culture en design en général chez les développeurs. J’ai le sentiment que J2EE puis les gros frameworks ont fait des ravages en design, car leur puissance prête à l’emploi a longtemps donné l’impression qu’il n’était pas nécessaire de savoir designer pour livrer une grosse application.

En même temps, paradoxalement, une difficulté courante avec DDD est de faire accepter d’avoir plusieurs modèles, un par contexte, dans un même système, car ça ressemble à une duplication qui violerait le principe DRY. Je dois donc expliquer les avantages mais sans parler de DDD, sans faire de prosélytisme.

Coté bilan y’a pas photo, ça dépote ! D’ailleurs j’en ai parlé à plusieurs reprises lors de conférences en France ou ailleurs, sur un retour d’expérience dans un contexte legacy en plus.

**La team du Lyon JUG : Y a-t-il besoin d’outils / frameworks / librairies particuliers pour faire du DDD ?**

**Cyrille**: Non. J’insiste sur ce point, c’est non. Par contre certains outils et frameworks ne s’y prêtent pas très volontiers, comme les EJB… Et certains outils parasitent l’approche en revendiquant être des « outils DDD », mais bien entendu cela n’a guère de sens.

**La team du Lyon JUG : Est-ce une approche plus répandue dans d’autres langages qu’en Java?**

**Cyrille**: Bonne question ! Tu aurais pas déjà une petite idée de la réponse ? (rires) Tu as du remarquer que la communauté .Net était assez fan de CQRS, avec des leaders d’opinion tels que Greg Young ou Udi Dahan qu’on voit fréquemment en conférences. CQRS n’est pas DDD, mais construit sur certains aspects de DDD ce qui fait que j’ai aussi parfois le sentiment que les développeurs et développeuses .Net sont plus familiers avec DDD que leurs homologues Java.

**La team du Lyon JUG : Tu t'interesses aussi au sujet du Behavior Driven Development (BDD) , rencontres-tu beaucoup de contextes où les product owners sont reellement impliqués dans l'écriture des tests automatisés?**

**Cyrille**: Non, il faut les forcer ! (rires) BDD a emprunté le langage métier partagé par tous à DDD. BDD va très très bien avec DDD, aujourd’hui j’imaginerai mal faire du DDD sans BDD en complément. Mais en pratique ce sont les développeurs qui poussent la démarche, et à défaut d’avoir les 3 amigos autour de la même table, on essaie d’impliquer tout le monde au plus tôt, par exemple développeurs et testeurs, puis on va ensuite voir les BA's, car en banque on travaille avec des BA's, pour avoir leurs retours. D’ailleurs on parle de scénarios ou d’exemples, pas de « tests » :p

**La team du Lyon JUG : Quels sont tes outils/frameworks BDD de predilection?**

**Cyrille**: J’ai surtout utilisé JBehave, mais récemment j’ai découvert Cucumber-jvm, qui est bien mieux intégré et plus facile pour démarrer. Aujourd’hui mes collègues utilisent Specflow, en .Net, mais ça n’a aucune importance, la démarche est toujours la même et c’est ça qui importe.

 

### **Merci Cyrille!**

 

**Les inscriptions pour la session de Cyrille sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/ddd).**
