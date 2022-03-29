---
layout: "post"
author: 
  - "acrepet"
title: "Bienvenue dans le monde d&#8217;Amazon Web Services!"
date: "2011-05-12"
categories: 
  - "les-conferences"
tags: 
  - "amazon"
  - "aws"
  - "cloud"
  - "lyon-jug"
---

| [![izpack](/assets/2011/05/2011-05-12-bienvenue-dans-le-monde-damazon-web-services/logo_aws.gif "AWS")](http://aws.amazon.com/)Le 17 mai prochain, le [Lyon JUG](http://www.lyonjug.org/) propose une soirée autour d’[Amazon Web Services](http://aws.amazon.com/). Le speaker, Fabien Bousquet, s’est prêté au jeu des questions/réponses et nous donne un avant-goût de sa session. Fabien est ingénieur R&D chez [Kalistick](http://www.kalistick.com/). Il est responsable de l’infrastructure et de l’exploitation de la plate-forme, qui gère l’analyse de millions de lignes de code sur un environnement Cloud. Adepte de la polyvalence, il intervient également sur les développements Java et C#, qui sont sa première spécialité.   |
Cet interview a été préparé conjointement par [Agnès](http://twitter.com/agnes_crepet) et [Cyril](http://twitter.com/clacote)

[![](/assets/2011/05/2011-05-12-bienvenue-dans-le-monde-damazon-web-services/photo_fabien_bousquet.jpg)](http://twitter.com/fafanoulele)

[](http://twitter.com/fafanoulele)

[](http://twitter.com/fafanoulele)[**@fafanoulele**](http://twitter.com/fafanoulele "Follow Fabien on Twitter")

**Agnès & Cyril: Avant de parler d’Amazon Web Services, peux-tu nous en dire un peu plus sur toi, ton parcours? Qu’est-ce qui t’a mis la tête dans les nuages aujourd’hui ?**  
**Fabien**: J’ai un parcours des plus classiques en informatique. A la sortie de mes études, j’ai commencé comme développeur dans une SSII pendant 2 ans où j’ai touché un peu à tout. Ensuite je me suis lancé depuis 3 ans dans l’aventure Kalistick en tant que développeur dans l’objectif d’ajouter C# (.NET) à l’offre [Kalistick](http://www.kalistick.com/). Ceci étant fait, je continue mon activité de développeur, mais je travaille aussi sur la partie infrastructure et hébergement de nos serveurs. C’est dans cette dernière activité que j’ai l’occasion d’utiliser [Amazon Web Services](http://aws.amazon.com/) (AWS).

**Agnès & Cyril: Peux-tu nous situer AWS et ses produits dans l’écosystème Cloud ?**  
**Fabien**: AWS couvre un large spectre de services allant des services d’infrastructure (Iaas – bas niveau – machine …) à des services PaaS (haut niveau). On va donc pouvoir créer des serveurs virtuels (EC2), accéder à des espaces de stockage (S3), mais on va pouvoir aussi s’affranchir de l’infrastructure en utilisant le service [Amazon Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/) en déployant directement une application Web Java. AWS donne aussi accès à des bases de données relationnelles (RDS), des bases de données NoSQL (SimpleDB), un content delivery network (CloudFront) etc…. En tout, 25 produits sont proposés par AWS. Tout le monde devrait trouver son bonheur !

**Agnès & Cyril: Tu travailles pour Kalistick, peux-tu nous présenter cette société? Qu’est-ce que vous apporte AWS ? Pourquoi avoir choisi AWS plutôt que d’autres solutions ?**  
**Fabien**: Kalistick offre un service en SaaS qui permet de radiographier une application pour aider l’équipe de développement à améliorer la qualité en détectant les problèmes techniques, et l’équipe de test/validation à orienter son effort sur des zones à risques notamment pour les tests de régression.  
Mais mieux que de longs discours, je vous propose de tester par vous même gratuitement notre offre sur [https://cockpit.kalistick.com](https://cockpit.kalistick.com) (hébergée sur AWS !) directement sur votre projet et en quelques minutes.

On s’est tourné vers AWS afin de bénéficier du Cloud :  
\- Elasticité : On peut moduler la puissance des machines en fonction des demandes. Nos serveurs d’analyse n’ont pas besoin de marcher si aucune analyse ne tourne mais au contraire, on doit augmenter le nombre de serveurs d’analyse lorsque il y a plusieurs analyses en même temps.  
\- A la demande : On ne paye que ce qu’on consomme réellement sans engagement. En effet, on a des pics de charge à certaines périodes de la journée.  
\- Réactivité : on dispose d’un nouveau serveur en quelques secondes sans aucun investissement.

Une autre raison nous a incitée à utiliser AWS : le fait de pouvoir monter des environnement de tests identiques très rapidement (pour qualification ou pré-production par exemple). On s’est rendu compte qu’au fur et à mesure de notre développement, nos machines internes limitaient notre capacité de test car elles étaient trop différentes de nos machines de production et ne permettaient pas d’exécuter de vrais tests quotidiennement. Faire cela sur nos serveurs internes devenait trop lent et trop coûteux, et cela ralentissait le déploiement de nos nouvelles versions.

**Agnès & Cyril: Aller c’est décidé, je veux me mettre à AWS. En tant que développeur, quel est l’outillage nécessaire sur mon poste de développement : que dois-je installer ? Amazon fournit-il des outils ou préconises-tu d’autres outils tierces ?**  
**Fabien**: Il faut tout d’abord s’inscrire à AWS et rentrer sa carte bancaire ! Une fois fait, on a alors accès à une console Web. A partir de cette console, on va déjà accéder aux principales fonctionnalités. Si on veut interagir avec tous les services AWS et automatiser certains traitements, on va utiliser les outils ou [SDK](http://aws.amazon.com/eclipse/#java) fournis par AWS. Par exemple, pour le produit EC2, on utilisera [http://docs.amazonwebservices.com/AWSEC2/latest/CommandLineReference/](http://docs.amazonwebservices.com/AWSEC2/latest/CommandLineReference/).

Si on utilise [Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/) (offre PaaS destinée au développeur), on pourra alors utiliser [le plugin Eclipse dédié à ce service AWS](http://aws.amazon.com/eclipse/#aeb). Ce plugin permet entre autres de déployer son application Java directement sur [Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/).

**Agnès & Cyril: Quels sont les besoins et contraintes au niveau développement? Y’a-t-il des principes de design à respecter qui bouleversent les habitudes? Par exemple, on nous explique qu’un système distribué doit être tolérant aux pannes d’un composant : comment le tester en local?**  
**Fabien**: C’est un des avantages de AWS, il ne chamboule pas les habitudes de développement. On peut très bien reprendre son application existante : c’est ce que l’on a fait chez Kalistick. On a historiquement une offre hébergée privée que l’on a directement déployée sur AWS. Comme on était en mode SaaS, on avait déjà inclus la vision “extensibilité” dans notre infrastructure, ce qui a facilité la migration. En gros, on a des serveurs virtuels sur AWS avec les mêmes configurations que notre hébergement existant. Ainsi, pas de mauvaise surprise.

Après tout dépend des services AWS que l’on va utiliser. Chez Kalistick, on a fait le choix d’utiliser une couche plutôt basse d’AWS pour garder la main, ne pas devenir “AWS dépendant”, et avoir deux hebergements identiques entre AWS et notre offre privée. Mais par exemple, si on utilise l’offre PaaS d’AWS (Amazon Elastic Beanstalk), alors on va devoir développer une application Web Java au format WAR pour tomcat 6 ou 7 et se limiter à cela.

**Agnès & Cyril: La grille tarifaire AWS semble très complexe. Comment estimez-vous et maîtrisez-vous cet aspect ?**  
**Fabien**: Oui, je confirme ce n’est pas évident d’estimer en amont le coût d’AWS.  
On peut tout d’abord utiliser la [calculette AWS](http://calculator.s3.amazonaws.com/calc5.html). En gros, il va falloir estimer la durée d’utilisation de la (des) machine(s) virtuelle(s) (EC2) et la quantité de données à stocker. Mais il y a aussi d’autres coûts plus difficiles à estimer comme la quantité de données qui va transiter entre internet et nos machines virtuelles ou comme le nombre d’entrée/sortie sur nos disques virtuels.

Le paiement se fait au mois. Il n’y a aucun coût de mise en place ou d’installation. La règle, c’est qu’on ne paye que ce qu’on utilise. A noter que les tarifs varient en fonction de la région géographique où l’on va utiliser les services AWS (US, Europe, Asie).

Dans notre cas, après l’utilisation de la [calculette AWS](http://calculator.s3.amazonaws.com/calc5.html), pour être plus précis dans cette estimation, nous avons monté un environnement sur AWS pendant un mois en condition de production. Le résultat est que finalement, on n’était pas très loin de l’estimation de départ.  
Le point à noter est que le coût des machines (CPU/Mémoire, partie EC2 de l’offre) est de loin l’élément le plus important mais aussi le plus simple à estimer. Les autres sont presque négligeables.  
A noter qu’il est possible d’utiliser AWS gratuitement pendant un an avec pas mal de limites (attention on doit quand même rentrer sa carte bancaire….). Voir [http://aws.amazon.com/fr/free/](http://aws.amazon.com/fr/free/).

**Agnès & Cyril: Une fois l’application développée et déployée, peux-tu nous expliquer comment il est possible de la monitorer et de l’exploiter ?**  
**Fabien**: Vu qu’on a accès au serveur virtuel (et donc à l’OS) sur lequel on a déployé son application, on peut alors monitorer son application comme on a l’habitude via une sonde SNMP et des outils de vérification comme [IPCheck Server Monitor](http://www.paessler.com/ipcheck). A noter que AWS fournit aussi un service de monitoring pour les serveurs virtuels : [Amazon CloudWatch](http://aws.amazon.com/cloudwatch/).

### **Merci Fabien!**

**Les inscriptions sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/amazon-aws)**
