---
layout: "post"
author: 
  - "Katia"
title: "Soirée Java Avancé &#8211; Paris JUG Décembre 2010 pour finir en beauté"
date: "2010-12-07"
categories: 
  - "les-conferences"
tags: 
  - "java"
  - "paris-jug"
---

| Le 2ème mardi du mois décembre s’approche, et avec lui **la prochaine édition de Paris JUG** qui termine l’année avec une soirée **Java Avancé** ! Ce sera donc l’occasion d’assister à la session d’un speaker d’excellence et assistant assidu au Paris JUG : **Olivier Croisier**. |

![Olivier Croisier](/assets/2010/12/2010-12-07-soiree-java-avance-paris-jug-decembre-2010-pour-finir-en-beaute/OlivierCroisier.jpg "Olivier Croisier")  
Olivier a commencé le développement Java il y a 10 ans, dont 8 en entreprise. Actuellement il est consultant et formateur chez [Zenika](http://www.zenika.com/?fg=50013 "Zenika"). Il détient la **certification Java** – avec le score impressionnant de **100%** – et celle de Spring. Il est formateur [Java spécialiste](http://javaspecialists.eu/) et [Terracota](http://www.terracotta.org/ "Terracota"). Olivier est très connu par son blog [“The coder’s breakfast”](http://thecodersbreakfast.net "The Coder's breakfast") où il écrit non seulement des **articles techniques** ou des **comptes rendus de conférences**, mais également des **Quiz Java**. Son parcours comme speaker aux JUGs a commencé récemment avec des sujets comme “Java et la programmation concurrente”.

[**@OlivierCroisier**](http://twitter.com/#!/OlivierCroisier "Follow Olivier on Twitter")

Nous avons demandé à Olivier, dans un **interview en exclusivité JDuchess**, de nous répondre à quelques questions par rapport à la soirée de mardi prochain afin de découvrir ce qu’on va pouvoir apprendre.

### Olivier, qu’est-ce que tu vas nous présenter Mardi prochain et pourquoi venir à la prochaine soirée du JUG ?

Cette année, le Paris JUG a organisé des soirées passionnantes autour des frameworks à la mode et des technologies innovantes. Mais il existe tellement de sujets potentiellement intéressants que le langage Java lui-même a été un peu oublié. L’équipe du JUG a souhaité réparer cette injustice en lui consacrant une soirée complète, pour conclure en beauté l’année 2010.

J’aurai donc l’honneur de présenter ma conférence intitulée **“Les annotations enfin expliquées simplement”**. Le sujet peut paraître “bateau” (tout le monde a déjà utilisé une annotation, qu’y a-t-il de plus à en dire ?), mais nous allons voir qu’il est en réalité plus vaste et complexe qu’on ne l’imagine.

### Parle-nous un peu des annotations, qu’est-ce que nous allons découvrir ?

Introduites avec Java 5 en 2004, les annotations sont maintenant omniprésentes ; Java EE, Hibernate, Spring en font un usage extensif. Elles ont notamment permis un découplage plus net entre le code technique et le code métier, améliorant la robustesse et la souplesse des architectures.

La conférence couvrira les annotations de A à Z en suivant le cycle développement – compilation – runtime, qui correspond également à une montée en complexité : comment utiliser une annotation et en développer une, comment étendre le compilateur avec les Annotation Processors, et enfin la détection et la manipulation des annotations au runtime, par réflexion. La dernière partie est un peu “hardcore” et devrait donner du grain à moudre même aux meilleurs experts.

Chacun devrait donc y trouver son compte !

### Tu es certifié Java avec un score de 100%. La difficulté et le niveau de préparation requis afin d’obtenir un tel score est énorme. Qu’est-ce qu’elle t’a apporté vis-à-vis de tes connaissances ?

J’ai passé la certification SCJP 5.0 il y a quelques années, comme un défi personnel.

Je pensais être plutôt bon à l’époque, mais j’ai rapidement mesuré l’ampleur du travail : cette certification est réellement difficile. J’ai donc pas mal travaillé pour la préparer – près de 6 mois bien chargés -, et j’ai beaucoup appris. J’ai découvert des classes dont j’ignorais l’existence, j’ai compris le fonctionnement des generics et de la synchronisation… Cela m’a donné une plus grande confiance en mon code, et a élargi ma palette de compétences.

### Et professionnellement ?

Professionnellement, la certification m’a indéniablement ouvert des portes.

En particulier lors des présentations auprès des clients, où elle me distingue immédiatement des autres candidats ; il est même arrivé que des clients me dispensent des tests techniques !

Ensuite, il faut avouer qu’un bon score fait toujours forte impression et contribue à construire une réputation d’expertise auprès de la communauté – votre meilleure carte de visite si vous souhaitez passer indépendant par la suite.

Au final, je ne peux que conseiller à tous les développeurs de préparer le SCJP (maintenant OCJP) : c’est un excellent premier pas vers l’expertise Java. Pour les plus courageux, je recommande également ma formation Java Spécialiste, qui couvre le multithreading, la réflexion, la gestion de la mémoire, l’optimisation de la sérialisation… On s’amuse bien ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif)

Et puis vous verrez, l’expertise c’est comme le chocolat : une fois qu’on y a goûté, impossible de s’arrêter !

### Chez Duchess nous adorons tes quiz ! Un petit quiz de ton palmarès à reprendre ?

J’ai publié ce Quiz en Janvier 2010 :

_Faites en sorte que_ _chaque instanciation de la classe SubClass affiche “foo” “bar” dans la console.  
Seul le contenu de la classe SubClass peut être modifié._

      public class BaseClass {
            public BaseClass() {
                 this(null);
             }

            public BaseClass(Object... params) {
                 System.out.println("bar");
             }
      }

      public class SubClass extends BaseClass {
      }

### **Merci Olivier !**

**Les inscriptions seront ouvertes le jeudi matin !**  
Vous le savez déjà, elles **partent** **extrêmement vite** !! Surveillez vos mails et **venez nombreux et nombreuses** à cette soirée qui promet d’être très inspirante et très pratique pour nos développements !
