---
layout: "post"
author: 
  - "aurelie"
title: "Retour sur l'EclipseCon France 2016"
date: "2016-07-06"
categories: 
  - "les-conferences"
coverImage: "IMG_20160609_202758.jpg"
---

| Tout comme l'année dernière, nous avons eu la chance d'assister à l'EcliseCon France qui a eu lieu à Toulouse du 7 au 9 Juin. |

Cette année, petite nouveauté, les workshops avaient lieu lors d'une journée complète. Je les ai trouvé de qualité, le format de 3h était top et du coup j'ai passé une excellente première journée. Je vous propose de me suivre dans les conférences que j'ai sélectionnée.

[![eclipsecon france 2016](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_202758-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_202758.jpg)

## 1ère journée :

Rendez-vous à l'ENSEEIHT de Toulouse, on suit les panneaux, on récupère son badge et on attend comme tout le monde le début des hostilités avec un petit déjeuner.

### [Connecting low power IoT devices with LoRa, MQTT, and The Things Network](https://www.eclipsecon.org/france2016/session/connecting-low-power-iot-devices-lora-mqtt-and-things-network)

Le premier workshop est présenté par [Benjamin Cabé](https://twitter.com/kartben) et [Johan Stokking](https://twitter.com/johanstokking) de The Things NetWork.

On commence par une introduction sur l'IoT par Benjamin, les objets connectés sont utilisés dans de nombreux domaines tel que pour optimiser la production d’électricité, dans les transports, les éoliennes, la santé ... puis Johan nous parle du réseau LoRa et de ses principales caractéristiques (long range, low power, license free, open, secure, radio protocol & strong alliance), puis de [The Things Network](https://www.thethingsnetwork.org/) ainsi que de quelques technologies comme MQTT et Paho.

**MQTT** => message queue for telemetry and transports

Messaging Q is not for Queue Publish/Subscribe protocol Lightweight (bandwtih, battery...)

Technologie basée sur TCP, inventée en 1999 pour des données de telemetrie.

**Eclipse Paho** : client mqtt open-source ([http://eclipse.org/paho](http://eclipse.org/paho)) **Eclipse mosquitto** : broker mqtt open-source (http://projects.eclipse.org/projects/technology.mosquitto)

 

Puis on passe aux choses sérieuses, on prend un petit kit prêté par Johan, on branche l'Arduino à notre PC et c'est parti. Étape par étape on monte notre petit objet connecté, on le relie à notre PC, on lance l'Arduino IDE et on suit les instructions ([https://github.com/TheThingsNetwork/examples/tree/master/workshops/TheThingsUno](https://github.com/TheThingsNetwork/examples/tree/master/workshops/TheThingsUno)).

Le workshop m'a plu, le seul bémol a été de ne pas garder le petit kit qui aurait pu permettre aux participants de s’approprier les technologies et de se familiariser correctement avec le monde de l'IoT via le réseau Lora et The Thnigs Network.

[![eclipsecon france 2016 lora iot](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160607_094801-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160607_094801.jpg) [![eclipsecon france 2016 lora iot](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160607_100515-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160607_100515.jpg)[![eclipsecon france 2016 iot the things network arduino](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160607_112022_2-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160607_112022_2.jpg) [![IMG_20160607_122435](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160607_122435-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160607_122435.jpg)

 

Après une matinée bien remplie, on prend quelques forces et on discute.

[![27467145071_27833c35b7_z](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/27467145071_27833c35b7_z-300x151.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/27467145071_27833c35b7_z.jpg)

### [What every Java developer should know about AngularJS](https://www.eclipsecon.org/france2016/session/what-every-java-developer-should-know-about-angularjs)

Ce second workshop est présenté par [Maximilian Koegel](https://twitter.com/mkoegel) et [Egar Mueller](https://www.eclipsecon.org/france2016/user/588), tout deux d'[EclipseSource](http://eclipsesource.com/en/home/). Quelques jours auparavant tous les participants ont reçu un mail avec les instructions afin d'installer tout ce qui est nécessaire pour assister et profiter du workshop.

1. Installation de Java 8 (déjà installé sur mon PC)
2. Node.js & npm
3. Installation de Firefox ou Chrome (déjà installé sur mon PC)
4. Télécharger l'instance d'Eclipse préparée
5. Configurer Eclipse
6. Télécharger et importer le premier exemple
7. Configuration des outils
8. Exécution (Run → Run As → npm Test)
9. Télécharger les slides

Personnellement j'ai eu des soucis lors de l'exécution de **npm Test**, après de longues heures à batailler avec mon Windows 10 (oui j'ai voulu faire ma warrior et tester une install sur du Windows au lieu de mon habituel Ubuntu ... bien mal m'en a pris), mais j'y suis arrivée :-D.

En complément du mail avec la procédure voici les commandes que j'ai dû exécuter sur mon Windows afin d'avoir tous les éléments nécessaires à la bonne exécution de npm Test : `npm install -g karma npm install webpack npm install karma-jasmine --save-dev npm install karma-firefox-launcher --save-dev npm install karma-webpack --save-dev npm install ts-loader npm install typescript`

 

J'ai l'habitude de développer des applications Java sur Eclipse et Javascript sur Vim, j'attendais ce workshop pour voir comment concilier les deux et les développer dans le même environnement. On devait étape par étape concevoir une petite application web sous Eclipse avec angular et typescript.

Slides : [https://drive.google.com/file/d/0B5KBA1bmsXepbzlVNWQ2ZzRjbG8/view?usp=sharing](https://drive.google.com/file/d/0B5KBA1bmsXepbzlVNWQ2ZzRjbG8/view?usp=sharing)

## 2ème journée :

### [Have fun and be recognized in your work by contributing to the Eclipse community](https://www.eclipsecon.org/france2016/session/have-fun-and-be-recognized-your-work-contributing-eclipse-community)

[Olivier Prouvost](https://www.eclipsecon.org/france2016/user/590) et [Wayne Beaton](https://www.eclipsecon.org/france2016/user/235) avaient comme mission de nous donner envie de contribuer à un projet Eclipse. Qu'est-ce qu'un commiter, lorsque l'on trouve un bug sous Eclipse ou se trouve le code bugué, comment le debuguer, ouvrir un ticket sous Bugzilla ...

<iframe src="https://www.youtube.com/embed/lp8zDwNmYhQ?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

Slides : [https://www.eclipsecon.org/france2016/sites/default/files/slides/Contributing%20to%20an%20Eclipse%20Project%20EclipseCon%202016.pdf](https://www.eclipsecon.org/france2016/sites/default/files/slides/Contributing%20to%20an%20Eclipse%20Project%20EclipseCon%202016.pdf)

### [What's new in Eclipse IDE and the ecosystem around it](https://www.eclipsecon.org/france2016/session/whats-new-eclipse-ide-and-ecosystem-around-it)

[![CkaiLx2WsAAcYd-](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/CkaiLx2WsAAcYd--300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/07/CkaiLx2WsAAcYd-.jpg)

[Mickael Istria](https://www.eclipsecon.org/france2016/user/546) et [Sopot Cela](https://www.eclipsecon.org/france2016/user/3380) nous ont présenté les nouveautés d'Eclipse IDE et de sa nouvelle version, neon : une nouvelle welcome page, un dark theme amélioré, une facilité d'accès aux raccourcis, word-wrap, la sauvegarde automatique configurable, le zoom, le nouvel assistant de création et quelques petites nouveautés pour le Java, le C/C++, le PHP et le JS.

<iframe src="https://www.youtube.com/embed/N_Y1_MGQhmQ" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

  Slides : [https://www.eclipsecon.org/france2016/sites/default/files/slides/ECF%20Presentation.pdf](https://www.eclipsecon.org/france2016/sites/default/files/slides/ECF%20Presentation.pdf)

 

### [Eclipse Kura & MODBUS - Monitor industrial automation equipment](https://www.eclipsecon.org/france2016/session/eclipse-kura-modbus-monitor-industrial-automation-equipment)

[![IMG_20160608_120339](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160608_120339-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/07/IMG_20160608_120339.jpg) [![IMG_20160608_121706](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160608_121706-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/07/IMG_20160608_121706.jpg)

 

[Tobias Dworak](https://www.eclipsecon.org/france2016/user/1090) de [Global Logic](http://www.globallogic.com/) a passé les 3/4 de la présentation a nous parlé de MODBUS. J'avoue qu'il m'a perdu dans la présentation, beaucoup trop électronique, "MODBUS-centrique", a mal geré le temps et à la fin, 30 minutes plus tard il a enfin parlé d'Eclipse Kura, ce qui nous intéressait.

<iframe src="https://www.youtube.com/embed/z5Keh6TVRm4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

 

Après une matinée bien remplie, on se restaure, on rencontre des personnes et une fois ceci fait, j'ai présenté Duchess France, en anglais, a quelques personnes dont [Tracy Miranda](https://twitter.com/tracymiranda) qui est très intéressée par le sujet de la mixité et qui se demande comment avoir plus de femmes aux conférences et en tant que speaker. Une petite aparté très intéressante loin du brouhaha ambiant ou chacune d'entre nous a pu apporter ses idées et son vécu.

 

### [Building a Global, Open Source, Crowd Sourced IoT Network](https://www.eclipsecon.org/france2016/session/building-global-open-source-crowd-sourced-iot-network-cassiop%C3%A9e)

On entame l'après midi avec une keynote de Johan, le CTO de The Things Network. Comme vu la veille, TTN a pour but de créer un réseau global à l'échelle mondiale (via LoraWAN) dont la couverture est créée par la communauté.

Tout a commencé il y a un an à Amsterdam, Johan Stokking et [Wienke Giezeman](https://twitter.com/wienke) ont eu l'idée de créer un réseau complètement ouvert, crowd-sourcé, et entièrement contrôlé par sa communauté d'utilisateurs. Vous pouvez [contribuer](https://www.thethingsnetwork.org/#contributors) à ce projet de plusieurs manières : en achetant une gateway, en contribuant au code sur [Github](https://github.com/thethingsnetwork) ou en créant une communauté dans votre ville.

<iframe src="https://www.youtube.com/embed/POPyA5tWvEQ?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

### [Code in the cloud with Eclipse Che and Docker](https://www.eclipsecon.org/france2016/session/code-cloud-eclipse-che-and-docker)

[Stevan Le Meur](https://twitter.com/stevanLM) et [Florent Benoit](https://www.eclipsecon.org/france2016/user/2825) de [Codenvy](https://codenvy.com/), ont présenté [Eclipse Che](http://eclipse.org/che/). Il s'agit d'un IDE Cloud open-source accessible depuis un navigateur Web. Che permet aux développeurs de s'affranchir de l'installation et de la configuration d'un environnement de développement et dispose d'outils transverses comme Git et Docker, permettant au développeur de retrouver un environnement de développement complet pour développer, déboguer, lancer, tester et profiler ses applications.

L'organisme hébergeant cet IDE, Codenvy, permet la sauvegarde de ce workspace collaboratif sur le Cloud, ce qui rend ce dernier accessible depuis n'importe quelle plateforme disposant d'un navigateur Web.

<iframe src="https://www.youtube.com/embed/ekTT36vwHJI?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

### [Java 9 support in Eclipse](https://www.eclipsecon.org/france2016/session/java-9-support-eclipse)

[![IMG_20160608_160045](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160608_160045-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160608_160045.jpg) [![IMG_20160608_160715](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160608_160715-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160608_160715.jpg) 

[Sasikanth Bharadwaj](https://www.eclipsecon.org/france2016/user/3785) nous a présenté le support de Java 9 dans Eclipse. Java 9 est prévu dans quelques mois et promet de nouvelles fonctionnalités très sympa telles que, le très (trop ?) attendu Jigsaw, les modular runtime images et les modules. Les modules, justement Sasikanth a passé la majeure partie de sa présentation à en parler, à nous en faire une démo, mais j'avoue n'avoir pas trop bien compris le réel intérêt de ces derniers et comment je pourrai m'en servir dans le futur concrètement.

<iframe src="https://www.youtube.com/embed/VWykDLRb8fs?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

 

## 3ème journée :

### [Explaining Code to My Mom (Cassiopée)](https://www.eclipsecon.org/france2016/session/explaining-code-my-mom-cassiop%C3%A9e)

[![27508692041_a88d7558ed_z](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/27508692041_a88d7558ed_z-300x199.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/07/27508692041_a88d7558ed_z.jpg) [](http://www.duchess-france.org/wp-content/uploads/2016/07/27304476960_0af8c5ddd8_z.jpg) [![27304476960_0af8c5ddd8_z](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/27304476960_0af8c5ddd8_z-300x210.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/07/27304476960_0af8c5ddd8_z.jpg)

Pour bien commencer la 3ème journée, nous assistons à la keynote de [Thomas Guenoux](https://www.linkedin.com/in/thomasguenoux?authType=NAME_SEARCH&authToken=KdHT&locale=fr_FR&trk=tyah&trkInfo=clickedVertical%3Amynetwork%2CclickedEntityId%3A6401489%2CauthType%3ANAME_SEARCH%2Cidx%3A1-3-3%2CtarId%3A1467574689786%2Ctas%3Athomas%20) ([Commitstrip](https://twitter.com/CommitStrip_fr)). En attendant que cette dernière commence, [Etienne Issartial](https://www.linkedin.com/in/etienne-issartial-3b2b2735) dessine un strip en live puis c'est parti, Thomas nous parle d'un sujet "Code explaining to my mum". J'ai trouvé cette keynote rafraîchissante et sympathique, excepté un strip qui parle de "l'unique fille" que l'on croise lors de ses études. A l'époque je n'avais pas aimé le strip, cette fois ci non plus, et lorsqu'une grande majorité des hommes de la salle rigole, tu te dis qu'il est vraiment temps que les choses évoluent.

[![CommitStrip EclipseCon](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/CommitStripFin900-300x228.png)](http://www.duchess-france.org/wp-content/uploads/2016/06/CommitStripFin900.png)

### [IoT Security in action!](https://www.eclipsecon.org/france2016/session/iot-security-action)

[![IMG_20160609_102856](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_102856-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_102856.jpg) [![IMG_20160609_105750](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_105750-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_105750.jpg)

[Julien Vermillard](https://www.eclipsecon.org/france2016/user/2683), de [Sierra Wireles](https://www.sierrawireless.com/)s, nous a présenté lors d'un tools in action les principaux problèmes de sécurité dans l'IoT et nous a donné quelques pistes pour être plus prudent. J'ai pu, notamment découvrir l'outil [Ettercap](https://ettercap.github.io/ettercap/) qui permet d'accomplir des attaques sur le protocole ARP pour se positionner en tant que "man in the middle". Présentation concrète et intéressante.

<iframe src="https://www.youtube.com/embed/jXfRDloqqZY?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

### [TypeScript: Feedback from a real life project within TypeScript and the future of JavaScript (sponsored by Microsoft)](https://www.eclipsecon.org/france2016/session/typescript-feedback-real-life-project-within-typescript-and-future-javascript-sponsored)

[![IMG_20160609_111101](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_111101-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_111101.jpg) [![IMG_20160609_113050](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_113050-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_113050.jpg)

Première présentation en anglais par [Sébastien Pertus](https://twitter.com/sebastienpertus), sous Mac ^^, qui s'est très bien déroulée. Il est temps de se mettre à Typescript, qui est scalable, open-source, fortement typé et utilisé par plusieurs frameworks tel qu'Angular 2, ionic, nativescript, aurelia et Dojo 2. Sous Eclipse il est recommandé d'utiliser le plugin d'angelozerr : [https://github.com/angelozerr/typescript.java.](https://github.com/angelozerr/typescript.java)

<iframe src="https://www.youtube.com/embed/pfbv9Xy656s?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

### [Your Agile project at Eclipse with Tuleap](https://www.eclipsecon.org/france2016/session/your-agile-project-eclipse-tuleap)

[![tuleap](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_122134-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_122134.jpg)

[Manuel Vacelet](https://twitter.com/vaceletm), d'[enalean](https://www.enalean.com/), a présenté [Tuleap](https://github.com/Enalean/tuleap), un outil open-source de gestion de projet agiles et relié aux outils de tracking de bugs et de versions. Voici quelques fonctionnalités intéressantes : backlog, release et sprint planning, sprint progress et Kanban board.

<iframe src="https://www.youtube.com/embed/nqbupYwinOo?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

Slides : [https://www.eclipsecon.org/france2016/sites/default/files/slides/Your%20Agile%20project%20at%20Eclipse%20with%20Tuleap.pdf](https://www.eclipsecon.org/france2016/sites/default/files/slides/Your%20Agile%20project%20at%20Eclipse%20with%20Tuleap.pdf)

 

Le dernier talk de la matinée s'est fini un peu en retard et du coup en arrivant dans le hall, il ne restait plus que deux nano hamburger. On a attendu et finalement lorsqu'il y a eu du ré-assort on a pu manger et se requinquer. Ouf ! :-)

### [One Cloud API To Rule Them All](https://www.eclipsecon.org/france2016/session/one-cloud-api-rule-them-all)

[![Ckgkre2XEAUeLoE.jpg large](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/Ckgkre2XEAUeLoE.jpg-large-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/07/Ckgkre2XEAUeLoE.jpg-large.jpg) [![Ckgm5x4WUAE4SLR](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/Ckgm5x4WUAE4SLR-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/07/Ckgm5x4WUAE4SLR.jpg)

[Marc Dutoo](https://www.eclipsecon.org/france2016/user/473) nous a présenté OCCI, sous forme de conte à la Tolkien. J'ai trouvé que ce type de présentation changeait de l'ordinaire mais ce qui était fort dommage était que le moindre mot qu'il prononçait se trouvait sur les slides. L'idée d'une interface, d'un endroit, d'une API Rest unifiée, pour gérer tous nos comptes Cloud je trouve l'idée très sympa et cela m'intéressait mais je n'ai malheureusement pas accroché en OCCI, trop complexe, pas super user-friendly.

<iframe style="border: 1px solid #CCC; border-width: 1px; margin-bottom: 5px; max-width: 100%;" src="//fr.slideshare.net/slideshow/embed_code/key/Kcq5YXMQnvaGyl" width="595" height="385" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" allowfullscreen="allowfullscreen"></iframe>

### [Introduction to the Arduino eclipse plugin](https://www.eclipsecon.org/france2016/session/introduction-arduino-eclipse-plugin)

[![IMG_20160609_145330_2](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_145330_2-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_145330_2.jpg) [![IMG_20160609_145424](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_145424-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_145424.jpg)

C'est maintenant l'heure de voir la présentation, de [Jan Baeyens](https://twitter.com/Arduino_jantje), sur le plugin Arduino pour Eclipse : [Sloeber](https://github.com/jantje/arduino-eclipse-plugin). La version 3.0 est sortie cette année. Programmez sous l'IDE d'Arduino c'est cool, mais c'est assez sommaire, ayant testé la veille je confirme. Il n'y a pas de support pour le refactoring, pour le versioning, il faut charger ses librairies ... Bref, ce n'est pas évident à part pour du one shot. Le plugin pour Eclipse permet de gagner du temps, d'être dans un vrai environnement de développement, de créer plus facilement des projets, d'avoir l'auto-complétion, de faire du debuging ... Je vous laisse regarder la vidéo pour en savoir plus.

<iframe src="https://www.youtube.com/embed/QWEvO2DztoI?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

Slides : [https://www.eclipsecon.org/france2016/sites/default/files/slides/EclipseConSubmission.pptx](https://www.eclipsecon.org/france2016/sites/default/files/slides/EclipseConSubmission.pptx)

### [Continuous Delivery: Pipeline As Code With Jenkins](https://www.eclipsecon.org/france2016/session/continuous-delivery-pipeline-code-jenkins)

[![IMG_20160609_154944_2](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_154944_2-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_154944_2.jpg) [![IMG_20160609_155946_2](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_155946_2-300x225.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_155946_2.jpg)

Cette fois-ci il y avait deux sessions intéressante, "[Boosting the performance of your Eclipse IDE](http://www.slideshare.net/kthoms/boosting-the-performance-of-your-eclipse-ide-eclipsecon-france-2016)" et la session sur Jenkins. J'ai choisi d'aller voir la session de [Baptiste Mathus](https://twitter.com/bmathus) et je verrai en "replay" celle sur les performances. Baptiste a rappelé l'historique de Jenkins : anciennement Hudson, créé en 2005, un framework d'Intégration continue développé en Java par [Koshuke Kawaguchi](https://www.linkedin.com/in/kohsukekawaguchi) chez Sun Microsystems, puis cédé par Oracle en 2011 au profit de la fondation Eclipse. Jenkins est un fork de la version de la fondation Eclipse. Il nous a ensuite présenté la notion de "pipeline as code" avec Jenkins.

<iframe src="https://www.youtube.com/embed/ORNDwYXa4nQ?list=PLy7t4z5SYNaRJff0KBMbubOaj8gevvML4" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>

Slides : [http://batmat.github.io/presentations/jenkins-pipeline-as-code/prez.html](http://batmat.github.io/presentations/jenkins-pipeline-as-code/prez.html)

### Closing session

![devoxx united states](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/27482497522_9881c02ca4_z-300x224.jpg) ![IMG_20160609_164237](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/IMG_20160609_164237-300x225.jpg)

L'année dernière c'était super donc il me tardait cette closing session. Lors de cette dernière session, nous avons appris qu'il va y avoir un [Devoxx US](https://www.devoxx.com/) du 21 au 23 Mars 2017 à San José puis Gaël Blondelle le maître de cérémonie, a commencé par remercier toutes les personnes qui ont participé à l'organisation de la conférence et quelques étudiants de l'IUT de Blagnac qui se sont occupés d’enregistrer toutes les présentations (dont [Alexa Noel](https://twitter.com/Alexa_Noel) une filleule d'[#AdoptADuchess](https://twitter.com/search?q=%23AdoptADuchess&src=typd) :-)). Ensuite [Mickael Istria](https://twitter.com/mickaelistria) a obtenu un joli prix afin de le remercier de son rôle de Program Comitee Chair de l'EclipseCon France durant ces 2 dernières années et nous avons appris que ce rôle sera repris par Tracy Miranda, personnellement je trouve que c'est une excellente idée, c'était vraiment la femme de la situation ;-).

Et pour bien finir, il n'y a rien de tel qu'un jeu. On se munie de nos cartes de couleur verte et rouge, on se met debout et c'est parti. J'avoue, les questions et les réponses étaient super étrange, à la question "si Eclipse était une couleur, ce serait le violet ou l'orange ?", à la vu du logo je me suis dit que la réponse était simple ... et ben non, la réponse a été l'orange. En une question les 3/4 de la salle ont perdu ! (moi y compris) :-).

![27508720341_d2035915c6_z](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/27508720341_d2035915c6_z-249x300.jpg) ![27508716501_b8bd6b1b92_z](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/27508716501_b8bd6b1b92_z-300x201.jpg) [![27547249706_ae13d4ab48_k](/assets/2016/07/2016-07-06-retour-leclipsecon-2016/27547249706_ae13d4ab48_k-199x300.jpg)](http://www.duchess-france.org/wp-content/uploads/2016/06/IMG_20160609_164237.jpg) 

## Conclusion

Le temps de battement entre 2 sessions était suffisant cette année, même si le talk finissait en retard on avait généralement le temps d'aller au talk suivant sans que ce dernier ait commencé ... sauf quelques exceptions ^^. J'ai trouvé que la journée spéciale workshop était une bonne idée, cela permet de se concentrer uniquement sur les ateliers, 3 heures par atelier c'est très bien.

La qualité des talks était bonne, excepté deux pour ma part. A chaque fois, on avait le choix et il y en avait pour tous les goûts : IoT, Science, Eclipse Technologies & Community, PolarSys, Cloud & DevOps ou Others Cool Stuff.

A quand un slot spécial Big Data, histoire de vraiment contenter tout le monde ? :-)

Mention spéciale aux cannelés et aux macarons, c'était parfait pour le goûter.
