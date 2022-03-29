---
layout: "post"
author: 
  - "Audrey"
title: "USI 2012 - Interview de Meriem Berkane"
date: "2012-07-10"
categories: 
  - "les-conferences"
tags: 
  - "usi"
---

| ![Meriem Berkane](/assets/2012/07/2012-07-10-usi-2012-interview-de-meriem-berkane/MeriemBerkane.jpg "MeriemBerkane")Nous continuons cette semaine notre retour sur l'USI 2012 avec l'interview de Meriem Berkane. Meriem a co-présenté avec Antoine de Kerviler, DSI de Corsairfly, une session intitulée : [Des tablettes dans l'avion, gadget ou réelle évolution ?](http://www.usievents.com/fr/conferences/11-paris-usi-2012/sessions/1040-des-tablettes-dans-l-avion-gadget-ou-reelle-evolution "USI 2012 - Des tablettes dans l'avion, gadget ou réelle évolution ?") que vous pouvez d'ailleurs revoir en ligne. |

**Audrey : Peux tu te présenter ? Quel est ton parcours professionnel et ta mission actuelle chez Octo Technology ?**

**Meriem :** Meriem Berkane, consultante chez Octo Technology depuis 2007, dans le secteur des médias, internet et loisirs.

Pendant les 5 années passées chez Octo, j’ai effectué des missions diverses : Développement agile, mise en place de bonnes pratiques de développement, etc. Et ce, dans plusieurs technologies : Java/JEE, .Net et récemment de la mobilité et du Web mobile sur la plateforme iOS.

Depuis Septembre 2011, j'accompagne Corsair dans son changement stratégique, à savoir la dématérialisation de ses documents et de ses rapports de vol à bord de ses appareils.

**Audrey : Y a t’il des différences majeures entre la création d’application pour un SI traditionnel et un SI mobile ? Si oui, quelles sont-elles ?**

**Meriem :** Dématérialiser la saisie et le traitement de documents et de rapports n’est pas une problématique nouvelle. Bien au contraire, cela a été fait et éprouvé dans bien des organisations et dans bien des domaines, notamment la banque.

La particularité du SI Corsair tient du fait qu’il s’agisse d’une compagnie aérienne. Nos utilisateurs sont, entre-autres, des personnels navigants. Ils sont par définition nomades et ont comme lieu de travail l’avion. Cela veut dire : l’indisponibilité du réseau Internet pendant le vol et parfois au sol, un contact constant avec des clients, une luminosité parfois réduite, des turbulences, et surtout, et avant tout, un vol à assurer! Tous ces éléments sont à prendre en compte quand on dématérialise des documents liés aux vols. C’est la raison pour laquelle une telle dématérialisation n’était pas envisageable avant l’avènement des tablettes mobiles.

Le SI fournit des applications mobiles à ces utilisateurs pour les accompagner pendant leur vol et leur permettre de saisir leurs rapports. Elles sont donc connectées au reste du SI Corsair par des services. Elles fonctionnent également en offline, pour permettre une autonomie aux utilisateurs dans l’avion et dans les destinations n’ayant pas une couverture réseau (Madagascar par exemple).

Par ailleurs, la dotation de tablettes aux personnels navigant apporte des problématiques nouvelles. Protection des données personnelles et d’entreprise, déploiement d’applications à distance, suivi des versions, etc. C’est la raison pour laquelle nous avons mis en place un outil de MDM (Mobile Device Management).

**Audrey : Quelles sont les difficultés que tu as rencontrées lors de la mise en place du SI mobile de CorsairFly ?**

**Meriem :** Certaines difficultés ne sont pas spécifiques à l’aspect mobile, mais liées à la dématérialisation. Quand on dématérialise des processus métier, on optimise certes la fluidité et le traitement de l’information, mais on rend le processus de traitement plus rigide. Nous avons donc eu du travail d’accompagnement des utilisateurs dans les nouveaux processus métier.

Un de nos plus gros enjeux aujourd’hui se situe autour du BYOD (Bring Your Own Device). Beaucoup de nos utilisateurs avaient déjà un iPad ou comptent en acquérir un pour leur utilisation personnelle. La protection des données personnelles et d’entreprise, la sécurisation des iPads mais tout en gardant en vue l’utilisabilité et la simplicité pour nos utilisateurs composent nos enjeux d’aujourd’hui.

**Audrey : Pour toi cette évolution vers un usage nomade du SI qui a lieu actuellement dans le milieu de l’aérien est elle appelée à se propager à tous les domaines de la vie d’entreprise ? De quelle manière cette transformation affectera-t-elle notre vie de développeur ?**

**Meriem :** Les terminaux mobiles utilisables ont radicalement changé les usages. 50% des accès internet sont faits depuis un terminal mobile aujourd’hui. Nous sommes libérés d’une contrainte, qui est de devoir rester assis sur un bureau et d’avoir un ordinateur pour transmettre ou recevoir de l’information.

Même si le monde de l’entreprise suit plus lentement cette tendance, je pense que les enjeux de la DSI seront de plus en plus liés à l’aspect mobile des utilisateurs et des équipes. Je vous renvoie vers la session USI de Ludovic Cinquin qui s’intitule : [Les nouvelles tendances technologiques qui changent les DSI](http://www.usievents.com/fr/conferences/11-paris-usi-2012/sessions/1062-les-grandes-tendances-technologiques-qui-changent-la-dsi "USI  2012 - Les changements technologiques qui changent les DSI ").

Ce que ça change pour nous développeurs? Cela demande de l’organisation, de la rigueur et de l’outillage.

Les utilisateurs mobiles ne sont pas facilement accessibles. Nous, développeurs, devons comprendre le besoin de nos utilisateurs et avons besoin de les observer travailler pour mieux les appréhender. Pour cela, le GEMBA ou le terrain (au sens Lean management du terme) est notre meilleur allié. Une anecdote intéressante à ce sujet : pendant un vol d’observation, j’ai testé la première version d’une application à destination du personnel navigant qui visait à dématérialiser les rapports faits lors d’un vol. Le vol était de nuit, et les passagers étaient endormis. En testant l’application, je me suis rendu compte de l’effet gênant pour les passagers qu’avait le fond clair de l’application, et je l’ai remplacé dès l’itération suivante par un fond foncé. Une telle observation ne peut être faite que sur le terrain, et nulle part ailleurs!

Aller sur le terrain et tester souvent ce que l’on développe implique de livrer souvent (toutes les deux semaines dans notre cas). Livrer souvent à une population nomade, sans lui imposer des nouvelles contraintes implique d’être outillé.  Intégration continue, déploiement continu (outils de Mobile Device Management ou des stores privés comme Appaloosa-store.com), suivi des déploiements etc., sont des outils sur lesquels on doit s’appuyer pour atteindre nos utilisateurs sans leur imposer plus de contraintes.

Enfin, les technologies Web et hybrides sont les technologies de l’avenir. Ce sont les technologies qui s’adaptent à la mouvance que l’on est en train de vivre. Nous développeurs devons nous intéresser en permanence aux enjeux du développement Web, mobile et hybride et notamment les performances (cf. la session de Joshua Bixbie autour [des performances Web mobile](http://www.usievents.com/fr/conferences/11-paris-usi-2012/sessions/1024-retour-d-experience-de-la-sphere-mobile-la-relation-entre-les-sites-mobiles-rapides-et-les-indicateurs-metiers "USI 2012 - http://www.usievents.com/fr/conferences/11-paris-usi-2012/sessions/1024-retour-d-experience-de-la-sphere-mobile-la-relation-entre-les-sites-mobiles-rapides-et-les-indicateurs-metiers"))
