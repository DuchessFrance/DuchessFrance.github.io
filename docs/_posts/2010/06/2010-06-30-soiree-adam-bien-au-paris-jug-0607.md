---
layout: "post"
author: 
  - "Katia"
title: "Soirée Adam Bien au Paris JUG (06/07)"
date: "2010-06-30"
categories: 
  - "les-conferences"
tags: 
  - "ddd"
  - "design-patterns"
  - "ejb3"
  - "jee6"
  - "lsoa"
  - "paris-jug"
---

| Le mardi 6 Juillet est le dernier Paris JUG avant la rentrée. Pour cette occasion, on compte sur la présence d’un speaker d’excellence : **Adam Bien.** Il va nous présenter deux architectures opposées – Lean Service Oriented Architecture (SOA) et Domain Driven Architecture – ainsi que la façon dont on les implémente sous la plateforme JEE 6 grâce aux EJB 3. |

Histoire de vous mettre l’eau à la bouche, je vais vous présenter rapidement Adam Bien et les sujets qui seront traités plus en détail, argumentés, et accompagnés d’exemples pratiques et de retours d’expérience le **mardi 6 juillet au Paris JUG**.

### **Une conférence à laquelle assister absolument !!**

## **Qui est Adam Bien ?**

Adam Bien est un consultant indépendant, formateur Java, architecte du software et développeur qui  implémente des architectures Java à grande échelle au sein des entreprises allemandes.

Nommé Java Champion en Janvier 2007,  il est membre de NetBeans Dream Team, de Sun Advantage Partner, Glassfish System Integrator, du groupe d’experts Java Community Process (EJB 3.1, JPA 2.0, Java EE 6) et il est fortement impliqué dans les technologies Cloud, Grid et P2P. Actuellement, il travaille en parallèle comme architecte et développeur au sein de plusieurs projets d’architecture J2EE/Java EE 5/MDA et au sein des architectures EAI basés en composants pour Java EE et .Net.

Il est aussi connu pour ses nombreux articles et livres publiés dans le cadre Java/J2EE/J EE et l’architecture distribuée. Parmi ses livres, on peut trouver plusieurs ouvrages en allemand (_“Enterprise Architekturen”, “Java EE 5 Architeckturen”, “Struts” etc._ ) ainsi que son dernier livre publié en 2009 et écrit en anglais : _“Real World Java EE patterns”_ où il explore les défis de Cloud Computing.

## **EJB3 légers et pouvoir des annotations  
**

Depuis des années, les EJB ont toujours été identifiés comme une technologie trop lourde. Effectivement, jusqu’à la version EJB 2 cette réputation était justifiée. Mais depuis la version EJB 3 tout a changé et on peut affirmer à présent que les EJB sont très légers. Ils sont configurés par annotation (non par de tonnes de XML), intégrés avec JPA (Java Persistence API), scalables au sein des machines multicore et avec multiples CPU, et constituent une solution standard et portable pour les applications métiers d’entreprise.

### “Convention over configuration”

Le principe du design pattern “Convention over configuration” est le suivant : Les applications se basent sur des conventions au lieu de se baser sur la configuration. Ainsi, elles chercheront à réduire le nombre de fichiers de configuration, fourniront une configuration par défaut (convention par règle de nommage) mais permettront aussi la substitution des valeurs par défaut via la configuration (à partir des fichiers ou une autre source de données).

La mise en place de ce pattern passe par l’utilisation des annotations. Les EJB 3 ont toujours besoin de la même quantité d’information pour fonctionner. Cette information étant la même dans 80% des cas, il suffit, par exemple, de placer l’annotation @Stateless sur une classe POJO (Plain Old Java Object) pour lui donner le comportement de base d’une entité de session.

### Injection de dépendances

Il s’agit de retirer des objets la gestion des dépendances entre les objets et de la confier à un conteneur, le conteneur des EJBs dans ce cas.  Ainsi, pour utiliser une instance EJB, on se servira de l’annotation @EJB pour l’injecter, pour utiliser une ressource (JMS, Datasource) on utilisera l’annotation @Ressource etc.

ex : Voici un EJB qui “injecte” un autre EJB de service. Le conteneur des EJBs s’occupe de chercher l’instance du Service pour que le client puisse l’utiliser.

@Stateless
public class ClientBean implements Client {
     @EJB
     private Service service;

     public String sayHello() {
          return this.service.getMessage();
     }
}

La plateforme JEE 6 permet grâce aux EJBs d’implémenter deux approches d’architecture opposées :

- Lean Service Oriented Architecture (SOA) – Architecture légère Orientée au Service
- Domain Driven Architectue – Architecture pilotée par le Domaine

## **Approche 1 : Lean Service Oriented Architecture (SOA)**

Dans le modèle d’architecture SOA, comme son nom l’indique, l’entité la plus importante est le **Service**. On peut considérer un service comme un contrat, un use case, même un story, qui exécute une ou plusieurs opérations (transactions). Le principe est de l’exposer au système d’information et d’encapsuler non seulement son implémentation mais aussi sa localisation.

### Interfaces et packages

Les bases d’une implémentation avec Java/JEE sont les interfaces et les packages. La fonctionnalité d’un package est exposée via une interface (parfois par plusieurs). On définira d’abord les interfaces des services à exposer, pour ensuite créer les classes qui implémenteront leur logique métier.

Diviser les responsabilités – “divide and conquer”- facilite la réutilisabilité et améliore la maintenance du code. Ainsi, sans trop détailler :

- Une **classe** annotée @Stateless et @Remote servira de façade. Cet EJB fournira le contrôle d’accès aux services, ainsi que le comportement transactionnel; il **implémentera l’interface** à exposer.
- Une **classe** annotée @Stateless et @Local servira de service. Cet EJB implémentera le métier et ne sera accessible qu’à partir de la façade.

Les **annotations** des EJBs seront placées **sur la classe d’implémentation** et jamais sur l’interface; ainsi, **les services exposés sont indépendants de l’API EJB** et leur implémentation est complètement encapsulée.

### Les objets du domaine

Si les façades implémentent la logique d’accès et les services la logique métier, il ne reste plus grand chose aux objets du domaine. Ils encapsulent un état mais n’ont  aucune logique métier. Les entités JPA sont des classes annotées @Entity qui contiennent des attributs, des accesseurs (getter/setter) et c’est tout. Ce pattern (même considéré un anti-pattern par les puristes de la POO) est connu sous le nom “Anemic Object Model” et colle parfaitement avec les besoins de SOA.

La majorité des applications d’entreprise J2EE/ J EE d’aujourd’hui sont proches de l’architecture décrite précédemment. Néanmoins, elle convient parfaitement jusqu’au moment où le comportement dépend du type des objets. L’implémentation des services utilise alors des instructions du type _“instanceof”_ ou encore des blocs_“if/else”_ et _“case”_ pour s’y adapter. Ceci est la conséquence directe du  “Anemic Object Model” qui déplace le contrôle en dehors des entités au détriment des services et façades où se trouve la vrai logique métier.

## **Approche 2 : Domain Driven Architecture Design**

L’architecture pilotée par le domaine est basée sur l’utilisation de **vrais objets** (true objects). Ces objets encapsulent leur état et fournissent également des  comportements, bien définis en fonction du type.

### PDO

Les objets du domaine sont le socle de l’application. Ils gèrent leur état,  la persistance de leur état et implémentent la logique métier. Il arrive même dans certains cas que l’on n’ait pas besoin d’utiliser de service.

Les entités PDO (Persistent Domain Object) sont persistantes. Ainsi, chaque changement, au niveau de leur état ou de leurs relations, sera automatiquement synchronisé avec le moteur de persistance à la fin de la transaction. Ils seront exposés publiquement; cela oblige le concepteur à bien réfléchir à l’API qui sera fournie au client.

### Gateways

Les PDO sont passifs et ne démarquent pas de transactions ; ils ont besoin d’un contexte d’exécution pour fonctionner.

Cela va nous poser un  problème à cause de la **nature stateless** des applications Java EE : après l’invocation d’une méthode transactionnelle, via un service ou un service façade, toutes les entités JPA – les PDO – sont détachées. Le client perd le contexte transactionnel; on est constamment obligé de transporter et de “merger” tout le contexte entre le client et le serveur avec les difficultés que cela implique.

**Solution:** Créer un **“anti service façade”** \- un **gateway**. On ne cache plus les entités derrière une façade, on les expose  le plus possible aux couches supérieures telles que la couche Présentation et on permet à ces couches de les modifier directement . Cette stratégie, contradictoire avec les principes J2EE classiques sur la maintenance, semble dans certains cas plus pratique dans les projets du monde réel. Il s’agit tout simplement de se débarrasser des couches inutiles et d’exposer la couche domaine à la couche présentation. Chaque changement du domaine est directement visible depuis l’IHM.

Une gateway est implémentée par une classe annotée @Stateful et @Local – un EJB – qui manage aussi les transactions et contient l’EntityManager et le contexte persistent.

## ****Conclusion****

Ce qui est une bonne pratique chez l’un est un anti-pattern chez l’autre. Or, les deux approches opposées sont applicables, parfois complémentaires et nécessaires.

Java EE 6 et les EJBs permettent les deux types d’implémentations. Un point à  noter, l’approche SOA semble avoir une bonne affinité avec SOAP et les WebServices. Par contre, l’approche Domaine semble mieux s’accorder avec des architectures de type REST qui est focalisé sur une manipulation directe des ressources.

### Des démos, du code et toutes les réponses à vos questions, directement adressées à Adam… 

### **dans le prochain Paris JUG !!**

### **[Inscrivez-vous !!](http://parisjug.org/xwiki/bin/view/Meeting/20100706)**

**Les inscriptions ouvriront Jeudi 1er le matin. Soyez prêtes, ces temps-ci les place partent très vite.  Si vous voulez recevoir la notification de l’ouverture par e-mail jeudi matin pour pouvez vous abonner à la mailing list [Annonces](http://parisjug.org/xwiki/bin/view/Main/MailingList) du JUG.**

Les sources utilisées pour cet article sont les suivantes :

- [EJB3](http://www.javaworld.com/javaworld/jw-10-2008/jw-10-ejb3.html)
- [Lean Service Architecture](http://www.javaworld.com/javaworld/jw-04-2009/jw-04-lean-soa-with-javaee6.html)
- [Domain Driven Architecture](http://www.javaworld.com/javaworld/jw-05-2009/jw-05-domain-driven-design.html)

Il arrive même dans certains cas que l’on ait pas besoin d’utiliser de service
