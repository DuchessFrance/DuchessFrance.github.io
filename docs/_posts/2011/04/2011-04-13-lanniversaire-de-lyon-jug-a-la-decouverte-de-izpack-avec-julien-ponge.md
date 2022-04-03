---
layout: "post"
author: 
  - "acrepet"
title: "L’anniversaire de Lyon JUG : à la découverte de Izpack avec Julien Ponge"
date: "2011-04-13"
categories: 
  - "les-conferences"
tags: 
  - "izpack"
  - "lyon-jug"
---

| [![izpack](/assets/2011/04/2011-04-13-lanniversaire-de-lyon-jug-a-la-decouverte-de-izpack-avec-julien-ponge/logo-medium.png "IzPack")](http://izpack.org/)Le 19 avril prochain, nous allons fêter les 2 ans du Lyon JUG. A cette occasion, les open-sourceurs lyonnais sont à l’affiche. J’ai posé quelques questions à Julien Ponge, actif sur le projet [IzPack](http://izpack.org/), une solution pour le packaging, la distribution et le déploiement d’applications pour la plateforme Java. Il s’agit d’un projet opensource mature démarré il y a 10 ans. Il est aujourd’hui hébergé sur [Codehaus](http://docs.codehaus.org/display/IZPACK/Home) et il est publié sous les termes de la licence Apache. Sa mission est de vous faciliter la création d’installateurs multi-plateformes sans gâcher l’expérience utilisateur qui doit mener à l’utilisation de votre produit. |

[![Follow Julien on Twitter](/assets/2011/04/2011-04-13-lanniversaire-de-lyon-jug-a-la-decouverte-de-izpack-avec-julien-ponge/at-devoxx.png)](http://twitter.com/jponge)

[](http://twitter.com/jponge)

[](http://twitter.com/jponge)[**@jponge**](http://twitter.com/jponge "Follow Julien on Twitter")

**Agnès: Mais qui est Julien Ponge? Le jour? La nuit?**  
**Julien**: D’après ce que me dis [ma page web](http://julien.ponge.info/), je suis donc Maître de Conférences à l’INSA/Telecom, et chercheur dans un laboratoire associé INRIA qui se nomme le [CITI](http://www.citi.insa-lyon.fr/). Volet recherche je travaille sur des middlewares pour systèmes contraints. Coté enseignement j’aborde Java, le middleware / Java EE, le web, et le développement sur iOS (iPhone / iPod / iPad).  
Ceci étant je suis aussi un développeur opensource dans l’âme. Ma réalisation la plus connue reste [IzPack](http://izpack.org/), mais je contribue aussi à [Codehaus Mojo](http://mojo.codehaus.org/), j’ai contribué à [GlassFish](http://glassfish.java.net/), et d’autres projets encore. Ceci m’amène à donner des talks dans des conférences industrielles (JavaOne 2008, Devoxx 2010, etc) et dans des JUGs.  
Je travaille également à la rédaction d’articles techniques pour le compte d’un acteur bien connu de la communauté Java, avec un logo à couleur assez rouge, et qui devrait sortir un produit aux alentours de Juillet en cette belle année.  
C’est ainsi que le jour, je revendique ouvertement cette dualité entre vision industrielle et vision académique. En revanche concernant la nuit, j’essaie de ne pas y faire déborder le backlog du jour ![:-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif)

**Agnès: Tu vas nous présenter, lors de la prochaine session du lyon JUG, [IzPack](http://izpack.org/), à savoir une solution open source pour le packaging, la distribution et le déploiement d’applications pour la plateforme Java. Peux-tu nous présenter succinctement le projet, ces principales fonctionnalités. Comment le situer vis-à-vis d’autres outils comme [install4j](http://www.ej-technologies.com/products/install4j/overview.html)?**  
**Julien**: [IzPack](http://izpack.org/) est un projet de 10 ans d’âge qui a démarré comme un hobby, et qui a fini par être utilisé par des gens très sérieux.  
La spécificité de [IzPack](http://izpack.org/) est de générer 1 installateur qui fonctionne peu importe le système d’exploitation, tant qu’une machine virtuelle Java est disponible. Il est opensource sous une licence libérale (ASL 2), ce qui le rend facilement extensible pour s’adapter aux besoins métiers de chacun. Il n’impose pas de canevas prédéfini d’installateur et en ce sens fait plutôt office de framework. Il sait également s’adapter aux spécificités natives des systèmes d’exploitation (raccourcis, élévation de droits, etc).  
Un outil comme [install4j](http://www.ej-technologies.com/products/install4j/overview.html) génère 1 installateur natif par plateforme. Cela peut être intéressant dans certains cas, mais il y a un coût de test / validation qui persiste. Il est plus rigide dans sa définition de ce que doit être un installateur, il n’est pas opensource, et on ne peut pas facilement y apporter des extensions.

**Agnès: Comment utiliser [IzPack](http://izpack.org/) conjointement avec des outils comme Maven?**  
**Julien**: Nous livrons un [plugin Maven](http://izpack.codehaus.org/izpack-maven-plugin/) et un [plugin Ant](http://izpack.codehaus.org/izpack-ant/project-info.html), c’est donc un assemblage très naturel.

**Agnès: [IzPack](http://izpack.org/) a déjà plus de 10 ans. Comment a démarré ce projet? Quel est ton rôle aujourd’hui sur ce projet?**  
**Julien**: Au départ je voulais apprendre Java qui était en version 1.2 toute fraîche à l’époque. J’étais aussi intrigué par cette chose émergente qu’était l’opensource. Un installateur en Java me paraissait être un besoin réel et motivant, je me suis donc lancé. De fil en aiguille, la mayonnaise a pris jusqu’à en faire un projet reconnu, utilisé et établi. J’en suis parfois encore le premier surpris.  
J’y ai appris énormément sur la gestion d’un projet et d’une communauté. Aujourd’hui mon rôle est celui d’un _benevolent dictator for life_ en tant que créateur du projet. Je veille à la vie du projet et de sa communauté. Je continue de coder. Une part non négligeable du travail est de refuser ou d’accepter les patches.

**Agnès: On peut lire sur le site d’[IzPack](http://izpack.org/) : “_IzPack is an opensource project that values meritocracy. Code speaks louder than endless discussions!_” Je suis bien en phase avec l’idée que de longues discussions peuvent parfois ne pas faire beaucoup avancer les choses, et qu’il vaut mieux coder ([Programming, Motherfucker](http://programming-motherfucker.com/)…!) Mais sur l’aspect de la méritocratie : comment jugez-vous de la qualité des contributions? Si une proposition est perfectible, est-ce que vous prenez le temps d’indiquer à l’auteur les possibilités d’améliorations de son code (ou le jetez-vous comme un malpropre ![;-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) …) ? Combien de personnes sont actives aujourd’hui sur [IzPack](http://izpack.org/)?**  
**Julien**: Nous jugeons sur la pertinence de la contribution par rapport à la vision du projet. Le code est évidemment important : tant en termes de style que de choix techniques. Pour une fonctionnalité, il est impératif d’avoir la documentation idoine. Il est important de savoir rejeter. Si un patch est perfectible, nous demandons au contributeur potentiel de l’améliorer en lui mentionnant les points, et dans 99.9999% des cas cela ce passe très très bien.  
Il a un roulement de 3-4 personnes réellement actives sur le projet. Il faut garder à l’esprit que [IzPack](http://izpack.org/) n’est pas financé, et que ses développeurs le font par passion. En général les gens viennent pour les besoins de leur entreprise, et restent pour contribuer parce qu’ils ont apprécié la collaboration.  
Vu le nombre d’utilisateurs de [IzPack](http://izpack.org/) (et non des moindres), [IzPack](http://izpack.org/) a un manque plus que criant de main d’œuvre et de financement. C’est notre gros point noir. Travailler sur un projet qui ne rapporte pas de salaire a forcément ses limites.

**_(vraie fausse dernière question)_ Agnès: whaouuuu vous avez refusé l’offre de rachat de Google, pour privilégier celle d’IBM… Bravo! Qu’est-ce qui a guidé votre choix? Peut-être les arguments touchant à la plateforme technique d’IBM et ses choix pérennes (CVS, etc.) ? ![;-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)**   
**Julien**:  
_Disclaimer : ceci est un passage humoristique et ne reflète pas la position de mon employeur, ni forcément la mienne, vous l’aurez deviné._  
Disons sobrement que nous avons préféré le sérieux d’un cadre où on encore a du respect pour les fleurons de l’industrie française qui migrent tout juste leurs projets vers Java 5, Struts 2 et Subversion. Et puis franchement, les pubs IBM, c’est un vrai régal pour l’esprit.

### **Merci Julien!**

**Les inscriptions sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/2eme-anniversaire)**
