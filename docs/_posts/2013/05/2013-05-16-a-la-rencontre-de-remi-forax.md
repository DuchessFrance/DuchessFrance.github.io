---
layout: "post"
author: 
  - "acrepet"
title: "A la rencontre de Rémi Forax"
date: "2013-05-16"
---

| Le 21 mai prochain, [Rémi Forax](http://monge.univ-mlv.fr/~forax) est invité par le [Lyon JUG](http://www.lyonjug.org) pour une session intitulée ["Dans les traboules de l'implantation des lambdas"](http://www.lyonjug.org/evenements/lambdas). Nous lui avons proposé de lui poser quelques questions en amont de sa session, pour le connaître un peu plus... et vous ne serez pas déçus des réponses ;-) |

[![Rémi Forax](/assets/2013/05/2013-05-16-a-la-rencontre-de-remi-forax/forax.gif)](http://monge.univ-mlv.fr/~forax/)

_Cet interview a été préparé conjointement par la team élargie du Lyon JUG : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)._

**La team du Lyon JUG : Peux-tu te présenter ? Quelles sont tes activités ?**

**Rémi**: Rémi Forax, Papa et Enseignant Chercheur à l'UPEM, l'université Paris-Est Marne-la-Vallée. Pour la partie boulot, je partage mon temps entre l'enseignement et la recherche.

**La team du Lyon JUG : Tu enseignes à l'Université. Quels sont tes trucs pour arriver à passionner les étudiants à l’activité de développement, et au langage Java?**

**Rémi**: Je n'ai pas vraiment de trucs, en classe, je fonctionne beaucoup à l'improvisation, sinon ça sent le réchauffé. J'essaye de parler de ce que je trouve intéressant, et de ne pas tomber dans les raccourcis faciles. Passionner les étudiants, c'est pour moi d'abord avoir des projets intéressants, souvent un poil au dessus de leur niveau pour les tirer vers le haut. Pour ce qui est de les intéresser à Java, je triche, les cursus sont fait de telle façon à ce que les étudiants aient fait pas mal de C avant de faire du Java, donc ils ont déjà vu un certain nombre de problèmes classiques de programmation et sentent les limites du C.

**La team du Lyon JUG : Peux-tu nous expliquer ton activité dans les JSR ? Qu’est-ce qui t’a poussé à t’investir aussi fortement dans ce domaine?**

**Rémi**: Déjà, je n'ai fait que deux JSRs, et mon travail dans les deux est assez différent, pour la JSR sur invokedynamic, on était plutôt à la recherche de l'abstraction idéale pour que les implémenteurs de langage dynamique puissent expliquer à la VM ce qu'ils voulaient et que la VM soit capable d'optimiser cela. Donc plus à chercher une solution à des problèmes assez précis. Dans le cas de la JSR sur les lambdas, c'est assez différent parce que l y a en fait deux JSRs en une, une sur les lambdas et une sur l'API de support des lambdas pour les collections. Pour la partie sur les lambdas, c'est plus un problème d'adaptation, le concept de lambda date des années 30, il y a déjà beaucoup de langages qui le supportent, donc la question est comment avoir des lambdas qui s'intègrent parfaitement avec le langage Java, et pas un affreux furoncle. Pour la partie API, le but est d'avoir une API pas trop compliquée sachant que le nombre de use-cases est très important. Donc plus un travail de généralisation tout en essayant de faire quelque chose de simple. Pas la partie la plus évidente car les discussions peuvent rapidement dégénérer en “je préfère glup plutôt que borg”.

Maintenant, il y a une excellent raison de participer à une JSR, basiquement, être expert dans une JSR c'est écrire le futur. Comme j'avoue avoir du mal à prévoir le futur, je préfère l'écrire :)

**La team du Lyon JUG : Comment en es-tu venu à plonger dans les entrailles de la JVM? Quelles compétences sont nécessaires pour ça ? Comment t’es-tu formé sur le sujet?**

**Rémi**: J'ai choisi de faire un thèse sur l'implantation d'appels de méthodes particuliers que l'on appelle le multi-dispatch, on trouve par exemple ces appels à l'interface entre un langage dynamiquement typé comme Groovy par exemple et un langage statiquement typé comme Java. Comme je ne connaissais rien aux machines virtuelles, j'ai fait en sorte de tout implanter dans un bibliothèque écrite elle même en Java.

Lors des tests pour un cas très particulier, les appels "dynamic" utilisant une bibliothèque Java étaient plus rapides que des appels classiques Java. J'en ai conclu qu'aller voir comment marchait la machine virtuelle me permettrait de savoir pourquoi. A l'époque le code n’était pas open-source, donc ça m'a pris pas mal de temps. Pour finir, la petite histoire, il y avait un bug dans la VM :)

Une machine virtuelle, exactement comme un compilo ou le noyau linux, est un programme comme les autres mais bourré d'astuces donc il n'y a pas vraiment besoin de compétence particulière, mais juste de temps pour comprendre le contexte particulier. Donc la compétence s'il y en a une c'est savoir s'adapter à un contexte particulier avec un jargon et des préoccupations particulières. Mais bon, c'est une compétence de base d'un informaticien.

**La team du Lyon JUG : Les lambdas vont arriver dans la prochaine version de Java. Quelle pourrait être la prochaine avancée majeure, pour Java 9 ?**

**Rémi**: Pour Java 9, mon agenda perso contient une seule feature pour l'instant. La simplification de JavaEE par l'introduction d'un mécanisme d'interception (aussi appelé meta-protocole) dans le langage Java.

Coté JVM, il y a l'introduction des value-type, pour éviter le boxing des types primitifs et permettre la création de tableaux de valeurs, c'est encore très expérimental, mais si ça marche ça sera bien cool. Et sinon, il y a jigsaw ... si cela pouvait nous délivrer de Maven, ça serait déjà pas si mal.

**La team du Lyon JUG : Java est-il encore le meilleur langage pour la JVM ? Que penses-tu de la profusion de langages alternatifs, comme Groovy, Scala, Clojure, Ceylon,... ? Et Golo ?**

**Rémi**: Java, en terme d'environnement de dev, de librairies existantes, il n'y a pas mieux, certes le langage est verbeux, il montre son âge à certains endroits mais moi qui passe mon temps à relire des codes d'étudiants, cela reste le meilleur langage de ce point de vue.

Est-ce le meilleur langage pour la JVM ? Difficile à dire, dans un sens, la JVM a un gros biais vers Java car quasiment tout les benchs de test de la JVM sont écrits en Java (sinon il y a un bench qui utilise Nashorn et un qui utilise JRuby) en même temps il est facile pour un langage de tourner rapidement sur la VM, il suffit de générer le même code que javac.

**Groovy**, j'aime le coté amateur et malin du langage, pour mes projets, si je peux me passer de Maven, je suis un grand fan de Gradle qui pour moi offre un bon compromis pour un système de build. Bon, j'avoue habiter à moins de 5 kilomètres de Guillaume Laforge et donc je ne permettrais pas de critiquer le langage de peur qu'il débarque chez moi avec une tronçonneuse.

**Scala**, j'aime le fait que le type system soit turing complete ou pas loin, le coté si ton DSL compile, c'est OK t'as fini, et aussi, c'est un peu plus technique, la façon dont le compilo Scala fait de la spécialisation de code suivant les types. Maintenant, j'aime pas Scala pour exactement ces deux raisons, je ne suis pas assez bon pour comprendre le système de type de Scala, et la spécialisation de code, les implicites, ça devient rapidement un cauchemars à débugger. Bon ça fait un peu bipolaire, mais j'assume.

**Clojure**, Rich Hickey est un génie, raisonner sur les valeurs et pas sur les états est vraiment une bonne idée. Maintenant, dès que cela devient un peu compliqué, je trouve qu'il est plus facile de raisonner sur un programme écrit dans un langage qui permet de créer ses propres structures de données que dans un langage dont les structures de données sont imposées (j'ai le même problème en PHP :)

**Ceylon**, comme **Kotlin** car ils sont assez similaires, autant dans leurs features que dans la façon dont ils ont été créés. Ce sont des sortes de Java2, leur système de type plus avancé que celui Java sans cela soit le système de type de Scala. Il y a un truc impressionnant avec Ceylon, le langage a déjà une spec rédigée alors qu'il est encore en cours de création, c'est d'autant plus fort que pas mal de langages utilisés en prod n’ont pas de spec du tout ! Pour Java, je pense que c'est une chance, on avait tendance à piller C# lorsque l'on voulait ajouter des features mais comme Microsoft n'investit plus sur C#, Ceylon et Kotlin sont de bon réservoirs à idées pour le futur.

**Golo** est à ma connaissance le premier langage dynamique sur la VM Java post-invokedynamic. Donc Julien a une assez bonne idée de ce que la VM peut faire et de ce qu'elle ne peut pas faire en terme d'optimisation d'un langage dynamique. D'un certain coté, on peut dire qu'il triche car il n'a pas à implanter une sémantique d'un langage préexistant :)

 

### **Merci Rémi!**

 

**Les inscriptions pour la session de Rémi sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/lambdas).**
