---
layout: "post"
author: 
  - "Audrey"
title: "Paris Jug Octobre (II) – Play!"
date: "2010-10-20"
categories: 
  - "les-conferences"
tags: 
  - "paris-jug"
  - "play"
---

| [![DebutPartie2](/assets/2010/10/2010-10-20-paris-jug-octobre-ii-play/5097058943_04db60d5b2_m.jpg)](http://www.flickr.com/photos/jduchess/5097058943/ "DebutPartie2 by jDuchess, on Flickr") |

Avant de reprendre, une petite aparté de [John Karp](http://twitter.com/#!/johnkarp) pour présenter un évènement qui a eu lieu le week end dernier [BeMyApp](http://www.iphon.fr/post/2010/10/19/Applications-iPhone%2C-iPod-Touch-et-iPad-ponctuellement-gratuites-du-soir). Cet évènement est un équivalent du startup weekend mais il réunit des personnes pour le développement d’applications sur mobile.

### Play! framework

Pour la deuxième partie de cette soirée spécial Web c’est au tour de Nicolas Martignole, président du fan club ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) , et de Guillaume Bort, responsable du projet chez [Zenexity](http://www.zenexity.fr/) de nous présenter [Play!](http://www.playframework.org/) Au passage, remercions Zenexity qui a sponsorisé la soirée avec un buffet généreusement fourni en bonbons, ce qui n’était pas pour me déplaire ![:D](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_biggrin.gif)

Si vous êtes un fidèle lecteur du blog de Nicolas [le Touilleur Express](http://www.touilleur-express.fr/?s=play!&x=0&y=0) ou que vous suivez son actualité sur [twitter](http://twitter.com/#!/nmartignole), je ne vous apprends rien en vous disant que Play! c’est génial, c’est la révolution, c’est l’avenir et ça va tout changer dans votre vie. Rien que ça. Mais plus sérieusement, Play! c’est surtout le petit framework qui monte, qui monte … jusqu’à jouer dans la cour des grands puisque Guillaume a pu le présenter à Jazoon et JavaOne cette année, excusez du peu !

![Play!](/assets/2010/10/2010-10-20-paris-jug-octobre-ii-play/play.png)

Pour reprendre l’image utilisée par Nicolas, Play! c’est comme un couteau suisse : il vous propose déjà tous les outils dont vous avez besoin pour monter rapidement un site web et vous dispense de vous promener avec la boîte à outils complète. Mettez au vestiaire votre costume de super héros, ici nul besoin de connaître sur le bout des doigts 5 frameworks pour développer quelque chose de sexy et performant. Votre framework est entièrement full-stack et vous propose nativement un serveur, une base de données, un IDE, un environnement de test et le support de JPA. Ça laisse rêveur hein ?

[![Paris JUG Octobre 2010 - Play!](/assets/2010/10/2010-10-20-paris-jug-octobre-ii-play/5097666672_c097580c66.jpg)](http://www.flickr.com/photos/jduchess/5097666672/ "Guillaume Bort Nicolas Martignole - Play!") Première chose intéressante à savoir sur Play! c’est qu’il n’est pas basé sur l’API Servlet, API que Nicolas compare volontiers à une énorme multiprise : un truc qui est là depuis super longtemps et sur lequel on a pluggé des tonnes et des tonnes de trucs. Sauf que la servlet, ce n’est pas forcément l’idéal pour gérer les fortes montées en charge … et pour nous expliquer cela, notre speaker va utiliser une image à la fois amusante et qui illustre bien son propos.

Nous nous sommes tous déjà retrouvés dans un MacDo à l’heure de pointe, à faire la queue pendant un temps qui semble interminable avant qu’une hôtesse de caisse ne prenne notre commande à une allure de sprinteuse, avant de courir dans tous les sens pour la préparer, de nous encaisser dans la foulée et au revoir madame et au suivant ! Pendant qu’elle est mobilisée de la sorte, elle ne peut pas traiter d’autres commandes, elle est entièrement “dévouée” à cette tâche et les autres clients doivent, eux, continuer à patienter. Ça ne vous rappelle personne ? Vraiment ? Même pas une certaine API précédemment citée ? Aaah je vois que la mémoire vous reviens ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) Continuons alors …

A l’opposé de cette organisation, celle définie par Starbucks pour ses magasins est la suivante : une personne dédiée à la prise de commande, une personne dédiée au café. Et pendant ce temps, un plus grand nombre de client sont servis car aucune des deux personnes n’est bloquée à faire plusieurs tâches. Et c’est ça le concept repris par Play : un worker dédié par tâche au lieu d’un thread multitâche pour une meilleure résistance à la montée en charge.

Pour pouvoir réaliser cela, Play! est livré avec son propre server stateless, et il va gérer les informations de la session dans un cookie de 3Ko. Cela vous paraît peut être bien peu mais c’est en réalité suffisant puisqu’il ne contiendra pas d’objet temporaire, uniquement les informations essentielles à la session, en crypté. De plus, le compilateur embarqué vous permet de tester les modifications à chaud (comme on le fait avec JRebel), ce qui, ajouté à des messages d’erreurs particulièrement explicites, va fortement diminuer vos temps de développement. En effet, et Guillaume nous le montrera lors de la démo, une fonctionnalité assez sympa dans Play! c’est un message d’erreur qui copie votre code en mettant en rouge le mot ou l’expression qui pose problème ainsi que la ligne concernée. Out la stacktrace de deux kilomètres et bonjour le gain de temps.

Autre petit plus sympa chez Play! c’est qu’il ne vous génère pas des urls à rallonge : une url se doit d’être parlante, bookmarkable, partageable, en un mot : lisible (par le commun des mortels cela va de soit). Et puis il existe aussi de nombreux modules (Scaffold, Database, etc …). Et pour finir, citons encore [PlaysApps](http://www.playapps.net/) qui vous permet de déployer vos projets Play! sur le Cloud.

[![JUG Octobre 2010 - Play!](/assets/2010/10/2010-10-20-paris-jug-octobre-ii-play/5097666674_3c8c0d8e0d.jpg)](http://www.flickr.com/photos/jduchess/5097666674/ "Guillaume Bort, Nicolas Martignole - Play!") Bref tout cela ayant été dit, la démo est arrivée pour enfoncer le clou auprès d’un auditoire déjà conquis, que dis-je ? sous le charme … En seulement quinze minutes, Guillaume va coder une application permettant d’enregistrer en base une liste de todos. Et pour les mauvaises langues qui diraient que Play! c’est bien pour le site web sur les ornithorynques de beau papa mais que ce n’est pas fait pour du lourd, du sérieux, du professionnel quoi ! Une petite vidéo donnant quelques exemples des sites réalisés en Play! devrait les faire se raviser. (Décathlon, le conseil départemental du Val d’Oise, etc …)

Alors il reste un point “épineux” qui a retenu mon attention et qui a d’ailleurs fait l’objet d’une question à laquelle Nicolas a répondu de manière très pertinente. Et mes bibliothèques de composants dans tout ça, j’en fais quoi ? Eh bien … tu les oublies et tu ressors trois langages dont, comme 95% des développeurs Java, tu n’aimes pas tellement te servir : HTML, CSS, JavaScript. Et pour appuyer sa réponse, Nicolas d’insister sur le fait qu’être développeur sans vouloir coder dans ces langages c’est comme vouloir être développeur sans vouloir parler anglais. Et comme il le dit si bien, le web est loin d’être mort, alors ne restons pas à la traîne en nous enfermant dans notre seul et unique langage, quand bien même il reste notre préféré.

Fin de la présentation tout le monde range les chaises et se dirige vers le Vavin pour la troisième mi-temps.

### La troisième mi-temps

Un peu moins de monde que d’habitude pour cette troisième mi-temps, les grèves en sont probablement la cause.  
[![FinSoiree3](/assets/2010/10/2010-10-20-paris-jug-octobre-ii-play/5097059363_1e7cb5746e.jpg)](http://www.flickr.com/photos/jduchess/5097059363/ "FinSoiree3 by jDuchess, on Flickr")[![FinSoiree2](/assets/2010/10/2010-10-20-paris-jug-octobre-ii-play/5097059253_90268f769c.jpg)](http://www.flickr.com/photos/jduchess/5097059253/ "FinSoiree2 by jDuchess, on Flickr")[![FinSoiree1](/assets/2010/10/2010-10-20-paris-jug-octobre-ii-play/5097655462_f39971bf69.jpg)](http://www.flickr.com/photos/jduchess/5097655462/ "FinSoiree1 by jDuchess, on Flickr")

Merci aux organisateurs et aux speakers pour cette belle soirée.

### Quelques liens sur d’autres retours de cette soirée

- Le [compte-rendu](http://blog.courtine.org/2010/10/15/compte-rendu-du-paris-jug-sur-les-technologies-web/) de [Benoit Courtine](http://twitter.com/#!/bcourtine)
- [Celui](http://www.touilleur-express.fr/2010/10/13/java-et-le-web-au-paris-jug/) du Touilleur Express
- Un [article](http://thecodersbreakfast.net/index.php?post/2010/10/18/Play-Framework-%3A-symphonie-technologique-ou-solo-de-pipeau) d’Olivier Croisier sur Play!

Si vous aussi vous avez fait un retour de cette soirée sur votre blog et que nous ne vous avons pas cité, ajoutez votre lien dans les commentaires ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) .
