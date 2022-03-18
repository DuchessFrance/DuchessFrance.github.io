---
layout: "post"
author: 
  - "acrepet"
title: "GlassFish, OpenSource et SSII, rencontre avec des Serliens"
date: "2012-02-13"
categories: 
  - "les-conferences"
tags: 
  - "glassfish"
  - "lyon-jug"
  - "open-source"
---

| [![Marian Muller](/assets/2012/02/2012-02-13-glassfish-opensource-et-ssii-rencontre-avec-des-serliens/marianmuller.gif)](http://twitter.com/mullermarian "Follow Marian Muller on Twitter")[Serli](http://www.serli.com/ "Serli") est une SSII que vous connaissez sûrement! De part son implication dans l’opensource ou encore parce qu’[Orianne Tisseuil](https://twitter.com/oriannetisseuil "Twitter Orianne Tisseuil"), une Duchess française, en fait partie! Le [Lyon JUG](http://www.lyonjug.org "lyonjug") accueille, le 21 février prochain, deux Serliens : [Marian Muller](http://twitter.com/mullermarian "Twitter Marian Muller") et [Jérôme Petit](http://twitter.com/jeromepetit "Twitter Jerome Petit "). Marian commencera la soirée par un talk intitulé “GlassFish, Application versioning et rolling upgrade en haute disponibilité”. Dans le cadre des activités de R&D de la Serli, Marian participe au développement des serveurs Java EE GlassFish et JOnAS. Il a notamment conçu et développé la fonctionnalité de rolling upgrade pour GlassFish 4, et présenté le résultat de ses travaux à Devoxx 2011. |

[![Jérôme Petit](http://www.lyonjug.org/_/rsrc/1327487721497/speakers/jeromepetit.png?width=100)](http://twitter.com/jeromepetit "Follow Jerome Petit on Twitter") Jérôme qui dirige les activités Nouvelles Technologies du SI chez SERLI, société dont 80% de l’activité est tournée vers Java, enchaînera sur une session “Engagement des sociétés d’Ingénierie dans la contribution open source : un cercle vertueux”.  
Nous sommes allés à leur rencontre, leur poser quelques questions en amont de leurs talks, afin de vous donner envie d’aller les rencontrer à Lyon, ou lors d’une session d’un autre JUG, puisqu’ils ont déjà donné ces talks dans plusieurs villes! On commence Marian autour de GlassFish, l’Application versioning et le rolling upgrade, pour échanger ensuite avec Jérôme sur l’OpenSource et les SSII.

_Cet interview a été préparé par [Agnès Crépet](http://twitter.com/agnes_crepet "Twitter Agnès Crépet"), avec l’aide d’une partie de la team du Lyon JUG : [Cédric Exbrayat](https://twitter.com/#!/cedric_exbrayat "Twitter Cedric Exbrayat") et [Alexis Hassler](http://twitter.com/AlexisHassler "Twitter Alexis Hassler"). Merci à [Cyril Lacôte](http://twitter.com/clacote "Twitter Cyril Lacôte") pour la relecture._

**Agnès : Pouvez-vous vous présenter ? Vos missions au sein de Serli ?**  
**Marian:** Je travaille comme ingénieur Java chez SERLI. En dehors des missions plus “classiques”, je participe notamment au développement des serveurs Java EE GlassFish et JOnAS.  
En lien étroit avec Oracle, j’ai conçu et développé la fonctionnalité de rolling upgrade pour le futur GlassFish 4. 
**Jérôme:** Je suis entré en 1998 à Serli comme développeur. Depuis 2005, je dirige le pôle Nouvelles Technologies du SI, que l’on appelle aussi pôle Java compte tenu de notre forte spécialisation technologique.  
Avec Orianne Tisseuil, nous gérons les activités RH, commerciales, R&D et communautaires du pôle, qui regroupe 80% des effectifs de Serli.

**Agnès : Marian, tu vas présenter lors de ta session au JUG la feature “Application Versioning” disponible depuis peu dans Glassfish (3.1?). Cela permet donc de déployer plusieurs versions de la même application sur Glassfish, en précisant laquelle est active. Quels sont pour toi les avantages de cette feature “Application Versioning”, combinée avec le rolling upgrade (que tu présenteras également dans ta session) ?**  
**Marian:** Le versioning d’applications a également été réalisé par Serli pour GlassFish 3.1. Je pense qu’il apporte un grand confort dans les opérations de déploiement et de rollback.  
Couplé avec le rolling upgrade, il prend tout son sens en permettant d’assurer la disponibilité des applications lors d’un changement de version.

**Agnès : Ces features “Application Versioning” et “rolling upgrade” peuvent-elles, selon toi, nous dispenser d’un serveur de pré-production dédié?**  
**Marian:** Ces features peuvent vous dispenser d’un serveur de pré-production dans certaines conditions. Elles s’adressent notamment à des mises à niveau relativement mineures, qui n’affectent pas (ou peu) les ressources externes.  
Si la mise à niveau d’une application implique des changement majeurs, il est plus prudent de conserver un serveur de pré-production dédié.

**Agnès : Quel est le scope des ressources (datasource, queues JMS, etc.) à déclarer pour une application? Au delà du niveau global (visible par toutes les applications) et application, est-ce que je peux déclarer des ressources spécifiques pour une version donnée de l’application?**  
**Marian:** Du point de vue de GlassFish, deux versions d’une même application sont des applications distinctes. Les ressources de niveau application sont donc spécifiques à une seule version.

**Agnès : Les dernières versions (3.1 et 3.1.1) de Glassfish ont apporté leur lot de nouveautés concernant le déploiement et l’administration des applications. Peux-tu nous dire celles qui te semblent les plus utiles?**  
**Marian:** Le retour du clustering est la grande “nouveauté” de GlassFish 3.1. 
Dans les évolutions plus mineures, je trouve l’”active redeploy” très utile. C’est lui qui permet à la feature rolling upgrade de conserver l’état des sessions et des EJB stateful.  
Des progrès ont aussi été faits pour simplifier la procédure de rolling upgrade dans un cluster.

**Alexis : Avez-vous prévu d’implémenter des fonctionnalités similaires dans d’autre serveurs d’applications ? Et est-ce que les autres serveurs d’applications (Tomcat, TomEE, JBoss,…) seraient susceptible d’accueillir de telles fonctionnalités, ou y a-t-il des prérequis ?**  
**Marian:** L’implémentation de ce type de fonctionnalité requiert une collaboration étroite avec les équipes de développement, car on touche au cœur du serveur, et le feu vert du responsable produit car la fonctionnalité est critique.  
Notre proximité avec l’équipe GlassFish et la confiance d’Oracle nous permet de vivre cette aventure. Nous sommes tout à fait ouverts à la vivre avec d’autres communautés.  
Techniquement rien n’empêche les autres serveurs d’applications de proposer de telles fonctionnalités. Tomcat 7 a une fonctionnalité de “parallel deployment” assez similaire, JOnAS possède également des capacités de déploiement avancé.

**Agnès & Cédric: Dans quels projets open-source votre SSII Serli est-elle impliquée? Qui les choisit ? Est-ce une stratégie ou est-ce guidé par l’envie des développeurs ?**  
**Jérôme:** Serli est actuellement active sur les projets GlassFish, Ceylon, Weld, JOnAS.  
Nous avons aussi récemment travaillé sur Sonar, JBoss, Infinispan, Hibernate Validator…  
Le vivier de projets potentiels provient des échanges entre le management et les éditeurs, des propositions des développeurs Serliens ou encore des sollicitations directes de la communauté; puis nous décidons des moyens à allouer aux projets en fonction des objectifs stratégiques de l’entreprise.

**Agnès : Comment gérez-vous les budgets et ressources sur ces projets OSS ? Pouvez-vous donner des chiffres sur votre participation à l’OSS (combien de jours/mois sur les collaborateurs impliqués dans des projets OSS)?**  
**Jérôme:** Nous avons essayé divers modes de gestion des projets OSS, nous sommes arrivés à la conclusion que le plus simple et le plus efficace est de piloter ces projets comme tous les autres projets de la société, avec leurs objectifs de périmètre, qualité, coût, délai, et leur “client” qui est en général l’éditeur porteur de la solution, ou la structure de gouvernance pour les projets communautaires.  
Pour donner des chiffres, notre contribution non-commerciale représente environ 1200 jh/an soit 10% de la capacité de travail de Serli. A tout cela il faut ajouter le temps passé volontairement par les Serliens en dehors de leur temps de travail sur ces projets, ce qui n’est parfois pas négligeable.

**Agnès & Cédric: En quoi cela peut-il être bénéfique pour une SSII d’être impliquée dans l’OpenSource? As tu des chiffres sur ces retours ?**  
**Jérôme:**

- D’un point de vue qualité, c’est un moyen pour les Serliens de maintenir un haut niveau d’excellence technique et une culture de la diversité des process d’ingénierie (nous nous intégrons avec les équipes des éditeurs).
- En terme de positionnement d’entreprise, les bénéfices sont multiples : pour résumer je dirais visibilité, crédibilité & attractivité.
- D’un point de vue business, la contribution est clairement un facteur de croissance et de diversification, mais je serais bien en peine de calculer un retour sur investissement ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif) Globalement c’est un choix de mode de fonctionnement et d’attribution de budgets. Par exemple notre budget publicité “classique” ou communication “pure” est très faible.

**Agnès : Arrive-t-il que le client “paie” (sur un forfait par exemple, certaines parties du code peuvent être en licence OSS) : si c’est le cas, est-il toujours enclin à “donner” son code?**  
**Jérôme:** Nous rencontrons trois cas de figures :

- Le financement de la contribution par effet de bord : les forfaits ou une partie du code est en licence OSS, et/ou donnant lieu à des petites corrections / évolutions de librairies OSS. La valeur ajoutée de la reversion est maintenant bien comprise par les donneurs d’ordre, notamment par la mutualisation de la maintenance du code contribué.
- Certains clients nous achètent du temps de développement pour contribuer directement à des projets OSS, notamment pour accélérer la disponibilité de nouvelles fonctionnalités ou de corrections de bugs; la reversion est alors un des objectifs directs de la prestation.
- Enfin, le Graal : des éditeurs OSS nous commandent directement des développements, pour réduire le time-to-market de nouvelles fonctionnalités.

**Agnès : Au delà de l’OSS, quelles sont les activités “non commerciale” de Serli “pour la communauté (JUG Summer Camp…) ?**  
Serli anime le Poitou-Charentes JUG, et prend en charge chaque année l’organisation du [Jug Summer Camp](http://www.jugsummercamp.org/ "Jug Summer Camp"), une conférence ouverte et gratuite d’une journée, à La Rochelle, au soleil et avec des speakers de référence dans la communauté.  
Nous donnons aussi un coup de pouces aux événements communautaires comme, cette année, le [BreizhCamp](http://www.breizhcamp.org/ "Breizhcamp").  
Nous participons aussi à la diffusion du savoir en donnant des talks dans les Jugs, et dans les conférences comme Devoxx, JavaOne, JudCon.  
Serli contribue également à l’avancée de la spec Java par son activité au JCP, notamment au sein de l’expert group CDI 1.1.

**Alexis : Quelles sont les projets sur lesquels tu aurais envie que Serli participe et pour lesquels ce n’est pas (encore) fait ?**

- Jenkins : Nicolas Deloof, de CloudBees, nous a invité à collaborer à la création d’un plug-in pour gérer de façon simple et propre des build-pipelines, les premiers travaux sont prometteurs.
- J’aimerais bien que nous apportions notre savoir-faire en sécurité et gestion des identités à ForgeRock (nous avons commencé à en parler avec Ludovic Poitou).
- Il y a aussi des choses intéressantes que nous pourrions faire pour Play!, il y a déjà des initiatives personnelles de Serliens à ce sujet, comme le projet Play-CDI de Mathieu Ancelin.
- Je pense aussi à OpenJDK.

**Merci Marian et Jérôme!** Rendez-vous donc le 21 février prochain au Lyon JUG! Les [inscriptions](http://www.lyonjug.org/evenements/ssii--open-source "Lyon JUG inscription soirée 21 février") pour la soirée sont ouvertes!
