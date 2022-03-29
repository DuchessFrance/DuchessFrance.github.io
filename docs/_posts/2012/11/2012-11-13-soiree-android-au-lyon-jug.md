---
layout: "post"
author: 
  - "acrepet"
title: "Soirée Android au Lyon JUG!"
date: "2012-11-13"
categories: 
  - "les-conferences"
tags: 
  - "android"
  - "lyon-jug"
---

| Le 20 novembre prochain, le [Lyon JUG](http://www.lyonjug.org/) propose une soirée spéciale Android. Vous aurez la chance d'assister, en première partie, à une session Livecoding Android pour une introduction les mains dans le cambouis. Plutôt que de s'endormir devant des slides surchargés de code, le livecoding permettra de vous présenter progressivement tous les concepts clés. Suivra ensuite un talk sur le projet [Android Annotations](http://androidannotations.org/) qui est un framework Open Source visant à simplifier et industrialiser les développements Android. |

[![@Piwai](http://www.lyonjug.org/_/rsrc/1351183103122/speakers/pyricau.jpg?height=180&width=180)](https://fr.twitter.com/Piwai)Pour vous accompagnez tout au long de cette soirée, deux speakers vont co-animer les sessions! Tout d'abord Pierre-Yves Ricau qui est le créateur du projet [Android Annotations](http://androidannotations.org/). Après des expériences en tant que consultant Java/JEE, il tente désormais d'amener des bonnes pratiques au développement Android. Il a rejoint la startup [Siine Ltd](http://www.siine.com), basée notamment à Londres et Barcelone, fondée en 2007, qui édite un clavier Android révolutionnaire.

[![@dam_villeneuve](http://www.lyonjug.org/_/rsrc/1351183222856/speakers/dvilleneuve.jpg?height=180&width=180)](https://fr.twitter.com/dam_villeneuve)Damien Villeneuve est le deuxième speaker! Damien est un développeur Web et mobilité. Axé principalement Java/JEE, Android et iOS, il aime savoir comment les choses fonctionnent pour mieux les simplifier. Il travaille avec [Android Annotations](http://androidannotations.org/) au sein du groupe [Excilys](http://blog.excilys.com/), sponsor du projet.

Pour vous donner tout de suite un avant-goût de la soirée, allons à la rencontre des speakers.

_Cet interview a été préparé par la team du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/guillaumeehret), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler), ainsi que _[Guillaume EHRET](https://fr.twitter.com/guillaumeehret).__

**La team "élargie" du Lyon JUG : Peux-tu te présenter ? Comment es-tu arrivé dans le monde de la mobilité ?**

**Pierre-Yves** : Bonjour ! Je suis [Pierre-Yves Ricau](http://piwai.info), [@Piwai](https://twitter.com/piwai) sur Twitter. Il y a 3 ans, j'ai découvert le développement Android au cours de mon stage ingénieur et j'ai ensuite alterné les expériences Android et JEE / GWT au sein d'[eBusinessInformation](http://www.ebusinessinformation.fr). Je travaille en freelance depuis un an, pour [Siine](http://siine.com).

**Damien** : Bonjour. Je suis [Damien Villeneuve](http://dvilleneuve.fr). J'ai toujours été passionné par les nouvelles technologies et la programmation. Après avoir testé du J2ME il y a 5 ans, j'ai eu l'occasion de travailler sur un projet Android et ça m'a tout de suite plu. Depuis je travaille principalement sur Android et JEE au sein d'[eBusinessInformation](http://www.ebusinessinformation.fr).

 

**La team "élargie" du Lyon JUG : Quelles sont les nouveautés notables des dernières versions Android ?**

**Pierre-Yves** : L'essentiel est écrit [ici](http://www.android.com/whatsnew/) et [là](http://developer.android.com/about/versions/jelly-bean.html). D'un point de vue utilisateur, on s'oriente vers une intégration plus forte entre les produits Google, et une cohérence globale de la plateforme. D'un point de vue développeur, d'une part l'outillage (IDE, Lint, build, émulateurs) a beaucoup progressé, et d'autres part le design est devenu une préoccupation majeure des équipes Android.

**Damien** : Pierre-Yves a plutôt bien résumé la situation. J'ajouterais juste que l'expérience utilisateur est beaucoup plus simple et agréable depuis la version 4.0. On peut aussi noter des animations beaucoup plus fluide, ce qui commence à placer Android comme un sérieux concurrent à l'iPhone pour les fans du shiny.

 

**La team "élargie" du Lyon JUG : As-tu déjà testé les frameworks qui permettent de faire des applications multiplateformes ? [PhoneGap](http://phonegap.com/) a notamment une grande popularité actuellement. L’as-tu testé et qu’en penses-tu ?**

**Pierre-Yves** : Il y a un an j'ai testé [PlayN](http://code.google.com/p/playn) en réimplémentant [2H4U](http://sourceforge.net/projects/toohardforyou/) (voici le résultat [en html5](http://forplay-2h4u.appspot.com/)). C'était marrant et pas très compliqué, mais encore beaucoup trop jeune. Je n'ai pas utilisé PhoneGap. Les retours qu'on m'a fait indiquent que [PhoneGap](http://phonegap.com/) permet d'arriver très rapidement à un premier résultat, mais qu'il est difficile de créer une application performante et iso-fonctionelle sur toutes les plateformes.

**Damien** : Il y a un an, on m'a demandé une étude préliminaire sur [PhoneGap](http://phonegap.com/). On arrivait effectivement à avoir des résultats assez rapidement, mais on était assez limités pour l'accès aux ressources physiques (accéléromètre, gps, etc...). Aujourd'hui l'API semble avoir évolué, mais il reste toujours des contraintes de compatibilité entre les différentes plateformes.

 

**La team "élargie" du Lyon JUG : En 2012, quand faut-il développer en natif et quand faut-il faire du Web ?**

**Pierre-Yves**: Ça ne va pas plaire à tout le monde, et c'est pourtant une évidence : le Web sert à faire des sites Web, le natif des applications natives. Un site web mobile et une application native servent des objectifs différents, et sont souvent complémentaires en termes stratégiques.

Évidemment, développer une application native pour chaque plateforme est un investissement. On serait tenté d'utiliser un outil comme [PhoneGap](http://phonegap.com/) pour mutualiser ses développements. C'est payant à court terme, cela permet d'arriver rapidement à un prototype multiplateforme en utilisant des compétences Web répandues. Mais c'est une garantie d'échec à plus long terme. Les paradigmes de UI sont largement différents d'une plateforme à l'autre, en tentant de les unifier on réalise un produit médiocre sur toutes les plateformes. De même, les implémentations de "webview" varient, il vous faudra donc une équipe d'experts (chers?) pour résoudre les bugs et autres problèmes de performance.

**Damien** : Encore une fois, mon point de vue est très similaire à celui de Pierre-Yves. Je n'ai pas grand chose à ajouter, tout a été dit.

 

**La team "élargie" du Lyon JUG : Comment se porte le marché des applications mobiles? À part les hits à la Angry Birds, est-il possible de vivre facilement du développement mobile?**

**Pierre-Yves** : Oui! Au delà du développeur qui se lance seul, créé ses propres applications et devient riche, les entreprises ont besoin de développeurs mobiles. Les utilisateurs sont à la recherche d'applications qui soient plus que des _applications vitrines développées en 3 semaines par une web agency_. Le mobile est donc en train de quitter la direction marketing pour intégrer la DSI.

**Damien** : Les entreprises commencent effectivement à se tourner de plus en plus sur l'utilisation d'appareils mobiles en interne. Que ce soit dans les bureaux ou à l'extérieur dans des conditions plus difficiles, le marché du mobile n'explose pas que pour les particuliers.

 

**La team "élargie" du Lyon JUG : Quelles sont les solutions actuelles aux problèmes de fragmentation des systèmes Android : versions, résolutions et capacités différentes ?**

**Pierre-Yves** : Côté design, il vaut mieux fournir une expérience identique quelle que soit la version, le constructeur, etc. Le style [Holo](http://developer.android.com/design/style/themes.html) est top, pourquoi ne pas en faire bénéficier tous vos utilisateurs ? C'est pourtant simple en utilisant les bons outils : [AndroidKickstartR](http://androidkickstartr.com/), [HoloEverywhere](https://github.com/ChristopheVersieux/HoloEverywhere), [ActionBarSherlock](http://actionbarsherlock.com/), [Action Bar Style Generator](http://jgilfelt.github.com/android-actionbarstylegenerator), [Android Holo Colors](http://android-holo-colors.com/), …

Pour les versions, on décide d'une version minimale supportée (cf [les stats](http://developer.android.com/about/dashboards/index.html)), mais on configure la dernière version du SDK dans le projet, ce qui permet d'utiliser les dernières features. [Lint](http://tools.android.com/tips/lint) se charge de nous avertir sur l'utilisation d'API non supportées dans la version minimale. Ensuite, on utilise d'une part le mécanisme de [resources alternatives](http://developer.android.com/guide/topics/resources/overview.html), et d'autre part des branchements dans le code avec des implémentations alternatives de classes.

En pratique, les différences de résolution et de dimension posent peu de problèmes : on utilise des layout fluides, des dimensions indépendantes de la résolution. Côté images, il faut à minima les fournir dans 2 dimensions (hdpi, xhdpi). C'est vraiment une question de bonnes pratiques, une fois qu'on a choppé le coup on n'y pense même plus.

Côté capacités, on note principalement des différences en terme de CPU et de mémoire.

Les problèmes de CPU concernent plutôt des usages spécifiques, comme les jeux, auquel cas on pourra utiliser le [NDK](http://developer.android.com/tools/sdk/ndk/index.html). En général, les lags sont dus aux erreurs classiques comme des opérations d'IO sur le thread de la UI ou des hiérarchies de vues trop profondes. [StrictMode](http://developer.android.com/reference/android/os/StrictMode.html) et [Traceview](http://developer.android.com/tools/help/traceview.html) aident bien.

Pour la gestion de la mémoire, il faut penser à utiliser des caches ayant une taille maximale et une politique d'éviction, par exemple le [LruCache](http://developer.android.com/reference/android/util/LruCache.html). Petite anecdote marrante, le clavier Android standard (LatinIME) catch les OutOfMemoryError en plusieurs endroits, [par exemple ici](http://grepcode.com/file/repository.grepcode.com/java/ext/com.google.android/android-apps/4.0.1_r1/com/android/inputmethod/latin/LatinIME.java#479).

**Damien** : Que dire de plus... Google fourni régulièrement des [stats sur cette fragmentation](http://developer.android.com/about/dashboards/index.html). Je pense qu'il est important d'aller y jeter un œil régulièrement et tailler son application en conséquence.

 

**La team "élargie" du Lyon JUG : Quelles sont les difficultés pour un développeur Java pour commencer à développer pour Android ?**

**Pierre-Yves** : Vous ne retrouverez pas vos outils habituels: pas de Spring, pas d'Hibernate, Maven est un enfer, l'introspection explose les perfs, les [Logs](http://developer.android.com/reference/android/util/Log.html) fonctionnent différemment.

La documentation est telle qu'il est difficile de suivre un chemin d'apprentissage linéaire. Le web regorge de mauvais conseils (Read the source Luke). Les conventions de nommages internes au SDK nous viennent d'un autre siècle.

Bref, il faut s'armer de patience et savoir se faire aider.

 

**La team "élargie" du Lyon JUG : Tu seras à Devoxx en novembre, tu vas présenter un Tools in Action sur ton projet [AndroidAnnotations](http://androidannotations.org). Peux-tu nous présenter ce projet?**

**Pierre-Yves** : [AndroidAnnotations](http://androidannotations.org), AA pour les intimes, est un framework Open Source visant à simplifier et industrialiser les développements Android, sans impacter les performances.

AA utilise l'API d'Annotation Processing de Java 6 pour générer à la compilation le code d'infrastructure de vos applications Android, et permettre au développeur de se concentrer sur le code métier.

Ce projet est né il y a deux ans d'une frustration que j'ai ressenti en travaillant pendant un an sur un projet Android. J'avais du abandonner [RoboGuice](http://code.google.com/p/roboguice/) pour des raisons de performances. [Olivier Croisier](http://thecodersbreakfast.net/) a [présenté](http://www.parisjug.org/xwiki/bin/view/Meeting/20101214) l'Annotation Processing au ParisJUG, et 8 jours plus tard AA [était né](https://github.com/excilys/androidannotations/commit/df8981f2e224bb0e85f0c299c03945ceaf9e2ec7).

 

**La team "élargie" du Lyon JUG : Utilises-tu des tests unitaires dans tes projets Android ([http://developer.android.com/tools/testing/testing\_android.html](http://developer.android.com/tools/testing/testing_android.html)) et est-ce que la simplification de l'écriture de ces tests est dans le scope d'AndroidAnnotations ?**

**Pierre-Yves** : Pour tout ce qui est logique métier et composants techniques, j'écris des tests JUnit hors conteneur ne nécessitant pas de démarrer un émulateur, grâce à [Robolectric](http://robolectric.org) qui reproduit le comportement du SDK. Combiné avec [infinitest](http://infinitest.github.com/), ça permet un feedback très rapide.

AA n'a pas pour objectif de simplifier l'écriture des tests, mais c'est effectivement un effet induit par le découplage qu'il permet.

Je ne code pas de test d'IHM tournant sur de vrais devices, j’attends encore de découvrir comment faire ça simplement. C'est complexe à mettre en place, dur à maintenir, et long à exécuter.

 

**La team "élargie" du Lyon JUG : Est-ce que l'utilisation d'AndroidAnnotations ne pose pas de problème avec Lint comme on peut avoir par exemple quand on utilise Lombok avec Sonar ?**

**Pierre-Yves** : Non, car le code généré par AA est visible par Lint. Le problème de Lombok est que les modifications du bytecode ne sont pas visibles dans les sources. Ce n'est pas le cas d'AA, qui se contente de générer des classes supplémentaires, sans modifier le code existant.

 

_Merci à Anne-Laure Rigaudon pour sa relecture._

 

### **Merci Pierre-Yves et Damien!**

 **Les inscriptions pour la session de Pierre-Yves et Damien au [Lyon JUG](http://www.lyonjug.org) le 20 novembre sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/android) pour vous inscrire!**
