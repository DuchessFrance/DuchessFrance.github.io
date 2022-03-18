---
layout: "post"
author: 
  - "acrepet"
title: "Découvrons Cloud Foundry!"
date: "2013-02-12"
categories: 
  - "les-conferences"
tags: 
  - "cloud"
  - "cloudfoundry"
---

| Deux soirées plutôt qu'une! Le 19 février prochain, le [Lyon JUG](http://www.lyonjug.org/) invite [Eric Bottard](https://twitter.com/ebottard) pour un talk sur Cloud Foundry. Eric est Developer Advocate chez [VMware](http://www.vmware.com/fr/), la société derrière [Spring](http://www.springsource.org/) et [Cloud Foundry](http://www.cloudfoundry.com/). Passionné d’informatique depuis l’arrivée du TO7, il a notamment consulté pendant 10 ans autour des technologies Java. Maintenant, il va beaucoup mieux. Le lendemain, Eric revient, accompagné de [Florent Biville](https://twitter.com/fbiville) pour un atelier sur Cloud Foundry, pour voir de prêt à quoi ressemble la bête! Florent est développeur chez [Lateral Thoughts](http://www.lateral-thoughts.com/), la NoSSII transparente, fun et auto-organisée par une bande de geeks. Il n’a pas connu le TO7, mais il aime bien les technologies Java, les nouveaux langages et il va, ma foi, plutôt bien. |

Pour vous donner tout de suite un avant-goût des soirées, allons poser quelques questions à Eric sur Cloud Foundry.

[![Eric Bottard](http://www.lyonjug.org/_/rsrc/1357294433574/speakers/Eric%20Bottard%203.JPG?height=200&width=135)](http://twitter.com/rgirodon)

_Cet interview a été préparé par la team "élargie" du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/cedric_exbrayat), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler) et [Cyril LACOTE](http://twitter.com/clacote)_.__

**La team du Lyon JUG: Peux-tu te présenter? Qu'est-ce que cela signifie d'être "Developer Advocate" chez VMware?**

**Eric** : J'ai commencé ma carrière dans les années 2000, chez une startup incubée au sein d'Unilog. A l'époque, Java côté serveur venait juste de percer et j'étais un des seuls de ma boîte à connaître ce "nouveau" langage. On travaillait sur un super produit nommé ATG (depuis racheté par Oracle). C'était vraiment une super solution, avec de l'IoC et un ORM avant que le monde n'entende parler de Spring ou d'Hibernate. Du coup, je me suis très vite intéressé à Spring justement et j'ai continué là dessus quand plus tard j'ai rejoint eBusiness Information/Excilys. Au bout de 10 ans de consulting, je me suis dis que j'avais eu de supers opportunités pour découvrir le monde de l'entreprise, plein de domaines fonctionnels différents et évidemment plein de technos, mais que ce serait bien de m'investir chez un client final. Je suis rentré chez Metaboli, une boîte de distribution de jeux PC dématérialisés, en tant que responsable de l'équipe de développement. J'y suis resté un peu plus de 2 ans et depuis, je suis donc dev advocate chez VMware.

Le métier de developer advocate (parfois ça s'appelle aussi tech evangelist) regroupe deux aspects, mais c'est toujours l'intéraction entre le développeur que j'ai toujours été et la communauté de passionnés. Il s'agit d'une part de présenter nos solutions de manière concrète aux gens qui mettent les mains dans le cambouis tous les jours et d'autre part de recueillir leur feedback pour influencer nos développements avec les vrais besoins du terrain. Personnellement, je m'occupe principalement de Cloud Foundry et de Spring, mais au sein de l'équipe nous avons chacun nos domaines de prédilection.

**La team du Lyon JUG: Tu vas nous présenter Cloud Foundry, en deux mots quels sont les usages de cette solution ?**

**Eric** : Cloud Foundry est une solution de Platform as a Service, c'est à dire un système qui permet de déployer ses applications dans le cloud, mais à un niveau d'abstraction beaucoup plus haut que l'IaaS. Sur Cloud Foundry, tu arrives avec ton application (par exemple dans le monde Java, avec un war) et tu la déploies en 2 minutes, sans te soucier de qui va installer Tomcat, qui va créer ta base de données ou qui va mettre à jour l'OS avec les derniers patchs de sécurité. Un autre aspect de Cloud Foundry (outre le fait qu'il s'agisse d'un projet open-source) est qu'il supporte plusieurs langages, permettant ainsi de facilement assembler un système "polyglote". Ta logique métier est en Java mais tu penses que ton équipe frontend sera plus productive en Ruby on Rails, voire en Node.js? Pas de problème!

**La team du Lyon JUG: Quelle est la différence entre [cloudfoundry.com](http://www.cloudfoundry.com/) et [cloudfoundry.org](http://www.cloudfoundry.org/) ? Vas-tu nous parler des deux solutions ?**

**Eric** : Comme je le disais plus haut, le projet est open-source (hébergé sur github, license ASLv2) ce qui signifie que tout le monde peut récupérer le code pour se monter son PaaS privé dans son Data Center (ou sur AWS). Le site [cloudfoundry.org](http://www.cloudfoundry.org/) est le site communautaire qui présente tous ces aspects open-source: comment récupérer le code, comment contribuer, comment installer son PaaS, etc.

Le site en .com héberge quant à lui un cloud Cloud Foundry sur des infrastructures VMware. C'est notre cloud public, sur lequel tu peux te créer un compte gratuit et héberger tes applications Java, Ruby ou Node.

**La team du Lyon JUG: Si demain je veux monter moi-même ma propre plateforme Paas pour héberger mes applications sur un runtime Java, est-ce vraiment aujourd'hui la seule solution open source disponible?**

**Eric** : Ce n'est pas la seule, mais c'est certainement la plus aboutie! Ça me rappelle un peu une pub pour le café, "sans doute le meilleur café du monde" :) Plus sérieusement, l'autre projet qui se rapproche le plus de ce que Cloud Foundry propose est [OpenShift](https://openshift.redhat.com/app/), lancé à peu près en même temps par RedHat. Mon point de vue est qu'OpenShift est un petit peu en dessous en terme de niveau d'abstraction, se rapprochant parfois plus de l'IaaS. Vu que je suis Dev Advocate et pas commercial, j'invite chacun à essayer et se faire une idée :)

**La team du Lyon JUG: En plus de solution comme Node.js, vous supportez beaucoup de langages tournant sur la JVM (Java, Groovy, Scala, etc.) : mais qu'en est-il du support des frameworks basés sur ces langages (Play! 1 et 2, Grails, etc.)? de JavaEE? Et des systèmes de persistance (Sql / NoSql)?**

**Eric** : C'est une très bonne question et à mon avis un des points forts de Cloud Foundry. Au moment du déploiement, le système reconnait le framework utilisé et applique ce que l'on appelle "l'auto reconfiguration". Suivant les langages et les framework, cela prend des formes différentes d'un point de vue technique, mais la finalité est la même: tu déploies ton appli telle que tu l'as écrite en local et elle fonctionne automatiquement dans Cloud Foundry, sans aucune modification de code ou de configuration, se connectant par exemple au store mongo que tu as provisionné dans le cloud. Cela fonctionne pour Play! et pour Spring (et donc pour Grails), mais aussi en Ruby et Node.

En terme de persistence (ce que Cloud Foundry appelle des "services"), le cloud public [cloudfoundry.com](http://www.cloudfoundry.com/) supporte MySQL et Postgres en RDBMS, Redis en tant que stockage clef-valeur, Mongo pour l'approche documents et RabbitMQ comme bus de messages. Le code disponible sur Github contient le support d'autres langages et services de persistence (par exemple PHP et Neo4j)

**La team du Lyon JUG: De quels moyens (console, cmd,...) dispose-t'on pour administrer (deploiement, exploitation, monitoring,...) une application hébergée sur Cloud Foundry?**

**Eric** : Tous les clouds Cloud Foundry (car il est important de préciser que des sociétés tierces ont monté des offres s'appuyant sur le runtime Cloud Foundry, comme par exemple [appfog.com](https://www.appfog.com/) ou [ironfoundry](http://ironfoundry.org/)) exposent une API REST permettant d'intéragir avec le système. Tous les outils s'appuient dessus. C'est le cas de "vmc" qui est l'outil en ligne de commande de référence. Il te permet de déployer des applis, de provisionner des services, de scaler ton appli en changeant la mémoire ou le nombre d'instances, etc. Dans le monde Java, il y a aussi un plugin Maven (très utile pour l'intégration continue avec Jenkins par exemple) et un plugin Grails. En terme d'IDE, SpringSource/VMware fournit un plugin Eclipse, IntelliJ intègre le support Cloud Foundry depuis la v12 et Tier3 propose un plugin pour Visual Studio et une appli MacOS. Les gars d'AppFog ont fait une appli iPhone et j'ai été assez fou pour développer une appli Android, dispo sur le Play Store. Bref, ya de quoi faire :)

_Merci à Anne-Laure Rigaudon pour sa relecture._

**ET Merci Eric!**

**Les inscriptions pour les sessions sur Cloud Foundry proposées par le [Lyon JUG](http://www.lyonjug.org) sont ouvertes! Rendez-vous sur le site du Lyon JUG pour vous inscrire [au talk d'Eric](http://www.lyonjug.org/evenements/cloudfoundry) le 19 février, et toujours sur le même site pour vous inscrire [à l'atelier d'Eric et Florent](http://www.lyonjug.org/evenements/atelier-cloud-foundry) le 20 février!**
