---
layout: "post"
author: 
  - "acrepet"
title: "Entretien sur DevOps avec Henri Gomez"
date: "2011-12-01"
categories: 
  - "les-conferences"
tags: 
  - "devops"
  - "lyon-jug"
---

| ![Henri Gomez](/assets/2011/12/2011-12-01-entretien-sur-devops-avec-henri-gomez/henri_gomez.jpeg) Le [Lyon JUG](http://www.lyonjug.org) accueille [Henri Gomez](http://twitter.com/hgomez) le 20 décembre prochain pour une soirée autour de DevOps. L’idée DevOps est de favoriser la collaboration et la communication entre les équipes de développement logiciel et les équipes d’exploitation. Henri Gomez partagera son retour d’expérience et démarche de mise en place chez [eXo Platform](http://www.exoplatform.com/), un éditeur logiciel. Henri travaille dans l’industrie logicielle depuis plus de 20 ans. Il a travaillé pour différentes sociétés développant des logiciels pour la finance, les flux financiers et le trading. Avant de rejoindre eXo, il a travaillé comme Chef de Projet puis Architecte Logiciel. Avant son talk, nous avons voulu lui poser quelques questions, nous nous y sommes mis à plusieurs avec quasi toute l’équipe du Lyon JUG, à savoir [Cédric Exbrayat](http://twitter.com/cedric_exbrayat), [Alexis Hassler](http://twitter.com/AlexisHassler) et moi-même, [Agnès Crépet](http://twitter.com/agnes_crepet). |

**Lyon JUG Team : Peux tu nous dire en quelques mots quel a été ton parcours avant Exo et quelle est ta mission aujourd’hui chez eux? As-tu commencé ta carrière par le coté Dev ou Ops?**

**Henri :** J’ai commencé ma carrière comme développeur sous Mac, C et 68000, pour une société qui faisait un logiciel pour salle de marchés.  
Environnement donc temps réel mais aussi interface graphique sous Mac OS 5/6/7 (et oui ça date)… Puis nous sommes passés à proposer des services de fournitures de cotations temps réelles pour des compagnies de gestion de portefeuilles. Là, découverte des environnements Unix et notamment Linux dans ses toutes premières versions 0.99999. Surtout premiers contacts avec le monde OpenSource, Linux certes mais surtout Gnu. Dans cette petite société, j’avais une activité qui couvrait développement (la nuit), support client et production (le jour). Donc une approche de développement très teintée des besoins de productions (en plus des attentes clients).  
Après quelques rachats, me voici à m’occuper de développement en Powerbuilder (no comment) mais surtout mise en place de stations Sparc sous Redhat Linux. Deuxième contact avec l’OpenSource, Apache HTTPd serveur et découverte du système de packaging RPM. Voici une solution qui permet d’installer et supprimer des applications mais gère en plus très finement les dépendances.  
Nouvelle aventure professionnelle dans la patrie des Gones cette fois-ci, dans une maison traditionnellement AS400. Cela correspond au démarrage de Java (1998) et va suivre une longue période de prosélytisme et lobbying pour pousser des technologies OpenSource et Java. Tout d’abord Chef de Projet sur les projets Nouvelles Technologies (Java l’était à l’époque), avec encadrement d’une bande de jeunes loustics et quelques projets majeurs autour de Java. En parallèle, je découvre Apache JServ puis [Tomcat](http://tomcat.apache.org/), et devient commiter sur Tomcat et le [connecteur mod\_jk](http://tomcat.apache.org/connectors-doc/), puis membre de [l’Apache Software Fondation](http://www.apache.org/).  
Mais je n’oublie pas mes premières amours sur le packaging et le déploiement et lance le projet [JPackage](http://www.jpackage.org/) dont le but était d’apporter à l’écosystème Java ce qui existait en Perl via CPAN. Le bébé a bien grandi par la suite puisqu’on le retrouve maintenant dans des distributions comme CentOS, RHEL, Suse ou Amazon (AWS).  
Après quelques années comme Chef de Projet, je deviens Architecte, où j’assure la veille technologique autour de Java et OSS, développe des protos et assiste les chefs de projets et équipes de développements. Une fois le passage de Ant à Maven finalisé pour l’ensemble des projets, j’en ai profité pour monter une usine logicielle basée sur [Subversion](http://subversion.tigris.org/), [Nexus](http://nexus.sonatype.org/), [Hudson](http://java.net/projects/hudson/) et [Sonar](http://www.sonarsource.org/).

**Lyon JUG Team : Aujourd’hui : fais-tu plutôt du Dev ou de l’Ops (Exo/hors Exo) ? Et est-ce temporaire ou cela peut changer du jour au lendemain?**

**Henri :** Chez eXo, j’ai commencé avec 2 casquettes, Ops et QATech et j’ai donc monté une usine de QA, permettant d’automatiser les tests de performances et fonctionnels, taches autrefois faites manuellement et en journée.  
Actuellement je ne fais quasiment que de l’Ops, administration des infrastructures dédiées et Cloud (Amazon). J’ai aussi une mission de conseil sur nos produits pour traduire aux équipes de développement les attentes d’équipes de production (interne ou externes).

**Lyon JUG Team : Aujourd’hui : Suite à ton expérience, quelles sont les trucs en terme d’organisation d’équipe, de répartions des tâches et des rôles qui vont faciliter le fait que les Ops bossent réellement et “main dans la main” avec les équipes de dev (Casser les équipes? Travailler en peer-mode? Préférer travailler en itératif / mode agile etc.? Assigner des tâches purement de prod à des devs? L’inverse peut-être également?) En synthèse : Comment intéresser réellement les uns aux sujets des autres?**

**Henri :** Le premier pré-requis, c’est de sortir des guerres de clocher. Qu’on soit Ops, Devs ou QA, on travaille tous ensemble pour des clients, qui s’attendent à un résultat. S’il y a incident, que la faute soit à un Dev, un QA ou un Ops, leur importera peu. En finir donc une bonne fois pour toute avec la patate chaude.  
Il n’y a pas solution unique, mais casser les équipes et mélanger Ops/QA/Devs n’est pas forcément facile à réaliser en terme d’organisation interne. Ce que j’ai expérimenté et qui marche bien, est un travail en peering, Ops/Devs (voir QA) qui permet à chacun d’apprendre l’environnement de l’autre, notamment les contraintes.  
Au risque de sortir une évidence, le message fort dans DevOps, c’est DIALOGUE. On verra lors de la présentation comment on peut utiliser de l’outillage plutôt Devs pour des Ops et des QA, de façon à ce que l’information soit disponible à tous et de la même manière.

**Lyon JUG Team : Sur le mouvement Devops : Quand as-tu entendu parlé du mouvement pour la première fois? Qu’est ce représente ce mouvement pour toi aujourd’hui? Comment y participes-tu? DevOps faisait partie des sujets tendance à Devoxx 2010 et absent à Devoxx 2011. Est-ce déjà passé de mode ?**

**Henri :** J’en ai entendu parlé comme beaucoup dans le courant 2010 mais j’ai commencé à m’y intéresser début 2011. Ce mouvement m’apparait un rien BuzzWord, un peu comme Agile en son temps. Tweeter sur un produit avec un tag #devops est un bon moyen d’attirer des clients potentiels, il faut aller au delà.  
Il y a de vraies bonnes idées dans DevOps, sur de l’outillage certes, mais aussi sur le débordement Ops/Devs. Trop souvent on cloisonne Devs ou Ops alors qu’ils peuvent parfaitement se recouvrir ou à ma préférence travailler ensemble.  
Ma participation à DevOps est en premier lieu sur des présentations dans les JUG afin de faire mieux comprendre ce que cache ce mot “magique”.  
On trouve beaucoup de présentations techniques mais peu sur les contextes humains et la réalité du terrain, c’est ce que j’essaie d’adresser dans mes talks en 2011. 
Pour l’absence à Devoxx 2011, je ne serais dire pourquoi, l’actualité Devs était déjà très riche notamment avec tous les nouveaux langages autour de la VM et n’a pas laissé de places disponibles. De plus, il existe maintenant des conférences spécifiques comme les [DevOps Days](http://devopsdays.org/).

**Lyon JUG Team : Quels sont les bons blogs/tweets a suivre pour découvrir/se perfectionner sur la culture Devops**

**Henri :** [Devops Weekly](http://devopsweekly.com/) en tout premier lieu. C’est un excellent résumé de ce qu’il faut voir et savoir. Tout n’est pas utilisable forcément immédiatement, on le garde dans un coin pour y revenir quand le besoin sera là. Je suis aussi les listes Paris et Lille Devops, mais il y a quand même moins d’activité. Autre source d’informations, l’ami [Patrick Debois](http://twitter.com/patrickdebois), à suivre sur Twitter!  
Au final, ce qu’il manque, ce sont des DOUG (DevOps User Groups) comme cela existe pour Java et les JUG.

**Lyon JUG Team : On parle beaucoup de “Continuous Delivery” depuis quelque temps… Quelles sont ta pratique et ton retour sur le sujet?**

**Henri :** Continuous Delivery (CD) est un sujet intéressant puisqu’il est clairement à cheval entre Devs et Ops. C’est d’ailleurs généralement un domaine qui peut se retrouver dans le giron d’un ForgeMaster (clin d’oeil à mon camarade [Arnaud Héritier](http://blog.aheritier.net/)). Pour moi, il y a 2 types de Continuous Delivery :

- Celui pour de la pré-prod et notamment des tests unitaires ou de charges, mais sans nécessité d’assurer un service de type production
- Et il y a le Continuous Delivery directement vers la production. Là je dois dire que ce n’est pas une mince affaire, surtout lorsqu’on a des SI complexes et des référentiels chargés.

J’aurais tendance à privilégier le CD type pré-prod, qui renforce les garanties sur le CD pur prod. Et rien n’empêche d’utiliser l’outillage mis en place pour le CD pré-prod une fois qu’il est bien rodé pour du CD prod, mais gardons la surveillance des Ops et Devs.

**Lyon JUG Team : Est-ce que les langages comme Java sont compatibles avec DevOps ? Quand on parle de DevOps, on pense plus facilement à du Ruby par exemple.**

**Henri :** DevOps, ou la vengeance de Ruby passé du coté obscur ? ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif)  
La grande majorité de l’outillage DevOps est développé en Ruby voir Python et très peu est fait en Java. Plusieurs raisons :

- Pour les Ops, la JVM donne toujours l’impression d’être gourmande en mémoire et longue à démarrer.
- La simplicité apparente de Ruby ou Python car Java apparait encore trop pour les Ops comme un outil de développement pur, ce qui n’est pas vrai.
- Copy/Paste effect, quand un écosystème est construit avec un outil, on va le voir grandir et s’étoffer autour du même outil.

Après Java sert souvent en DevOps. Typiquement lorsqu’on utilise un repositiory de livrables Maven, comme [Nexus](http://nexus.sonatype.org/) ou [Artifactory](http://www.jfrog.com/products.php), c’est bien une application Java qui est dans la boucle. Il n’est pas impossible que, dans les années à venir, on voit apparaitre de plus en plus de solutions en Java suite au basculement de certains développeurs Java vers le coté obscur ![;-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)

**Lyon JUG Team : En Java, est-ce qu’il y a des architectures ou frameworks plus adaptés que d’autres au DevOps (Full JavaEE, Spring+Tomcat,…)**

**Henri :** Pour moi, c’est moins une question de frameworks que d’architecture du produit. Si on a des systèmes bien découplés, légers et rapidement déployables, on a les pré-requis DevOps. Si votre application nécessite des opérations complexes, par exemple sur un référentiel au démarrage ou pour une migration, on s’est déjà tiré une balle dans le pied.  
De même, ne pas espérer faire du DevOps si les opérations de mise en place ou démarrage/arrêt des composants de l’application ne peuvent se faire qu’à la main. DevOps c’est aussi l’automatisation de taches de production.

**Lyon JUG Team : Quelle serait la technique de ninja du Devops pour déployer des applis web Java ?**

**Henri :** Tout dépend, mais je répondrais le Packaging Natif (dont je parlerai dans des présentations futures). Pourquoi?  
Parce qu’il permet non seulement de déployer une application, mais de se garantir que les pré-requis seront présents. Et que l’ensemble des composants suivront un cycle de mise à jour comme des composants OS.  
Une application est un ensemble de composants logiciels, qu’ils soient fournis par le système d’exploitation ou par nous. Autant utiliser le même outillage pour s’assurer du cycle de vie des composants.

**Lyon JUG Team : Est-ce que DevOps et PaaS sont des tendances distinctes, communes, convergentes,… ?**

**Henri :** PaaS, c’est quoi ? Platform as a Service, autrement dit, un couple hardware/middleware est prêt à recevoir vos développements. Si votre fournisseur du PaaS vous permet de déployer vos applications via scripting par exemple, vous pourrez faire du DevOps avec. On mélange souvent Iaas, Paas, Saas et DevOps, les uns n’impliquent pas les autres. On peut parfaitement faire du DevOps sur une infrastructure interne traditionnelle ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif)

**Lyon JUG Team : Est-ce que DevOps et outsourcing ou infogérance sont compatibles ?**

**Henri :** J’aurais tendance à demander si Agile et outsourcing/infogérance sont déjà compatibles ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) Si la communication est bonne entre Dev et Ops, qu’elle passe par mail, skype, chat, la distance compte peu. On a tous connu des situations/compagnies où des personnes à 1 mètre les unes des autres ne communiquaient pas.  
De même, l’OpenSource démontre tous les jours que des personnes de nationalités différentes, ne parlant pas la même langues et n’étant pas sur les mêmes fuseaux horaires peuvent collaborer et fournir des résultats exceptionnels.  
Mon retour d’expérience me ferait donc dire que l’important c’est le dialogue et la volonté de travailler ensemble.

**Lyon JUG Team : Quels sont tes outils préférés, ceux qui représentent ce mouvement?**

**Henri :** J’ai plusieurs outils dans ma musette qui me semblent indispensables :

- [Jenkins](http://jenkins-ci.org/): Le couteau suisse avec lequel on peut pratiquement tout faire, du build/ci traditionnel mais aussi du contrôle d’instances via les agents remote (ex: ssh agent). C’est le composant principal des usines eXo (dev, qa et continuous deployment)
- [VirtualBox](https://www.virtualbox.org/) : C’est LA solution permettant de monter rapidement des VM Linux ou autres pour faire des expérimentations ou simuler des déploiements.
- [Vagrant](http://vagrantup.com) / [Veewee](https://github.com/jedi4ever/veewee) : 2 outils pour construire des VM Linux opérables en VirtualBox via scripting. Idéal pour construire des images précises d’OS.
- [SuseStudio](http://susestudio.com/) : Si on est utilisateur [OpenSuse](http://www.opensuse.org/en/) ou [SLES](http://www.suse.com/products/server/), [SuseStudio](http://susestudio.com/) est un superbe outil Web, gratuit, qui permet lui aussi de construire des images OpenSuse avec une grande facilité et à destination de VBox, VMWare, DVD ou même Amazon EC2. Si vous souhaitez couvrir plus d’OS, [UShareSoft Builder](https://www.usharesoft.com/home/) est excellent aussi.
- SCM : [Subversion](http://subversion.tigris.org/) ou [Git](http://git-scm.com/), par qu’on ne doit jamais perdre la trace des opérations. Ops ou Devs, toute modification du SI doit pouvoir être suivie et connue.
- [JIRA](http://www.atlassian.com/software/jira/overview)/[Confluence](http://www.atlassian.com/software/confluence/overview) : Que ce soit pour des sprints Devs ou pour des taches Ops, je trouve le couple JIRA/Confluence parfait pour tout le suivi activités et la partie documentaire.
- shell & co : quoi qu’on en dise, on se retrouve fatalement un jour dans la console et une bonne pratique des outils shells permet d’à peu prêt tout faire.

Vous me direz qu’il n’y a ni [Puppet](http://projects.puppetlabs.com/projects/puppet) ni [Chef](http://www.opscode.com/chef/) dans ma musette et je répondrai qu’après les avoir évalué, je les ai trouvé un poil complexes à mettre en oeuvre pour mes besoins. On finit tôt ou tard à sortir du DSL fourni (Puppet) et/ou devoir développer en Ruby (Chef), ce qui peut complexifier la tache dans un mode Devs + Ops, ajoutant un nouveau langage comme pré-requis de discussions.  
Par contre, si on a déjà du monde connaissant bien Puppet ou Chef en interne, ce sont de bons outils pour le DevOps.

_  
**Merci Henri! Rendez-vous sur [le site du LyonJUG pour vous inscrire à sa session du 20 décembre](http://www.lyonjug.org/evenements/devops)!**_
