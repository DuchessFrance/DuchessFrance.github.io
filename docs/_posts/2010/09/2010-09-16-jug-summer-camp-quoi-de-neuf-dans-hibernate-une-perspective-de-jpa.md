---
layout: "post"
author: 
  - "Audrey"
title: "JUG Summer Camp &#8211; Quoi de neuf dans Hibernate : une perspective de JPA"
date: "2010-09-16"
categories: 
  - "les-conferences"
tags: 
  - "criteria"
  - "hibernate"
  - "hibernate-envers"
  - "hibernate-search"
  - "hibernate-validator"
  - "jpa"
  - "jug-summer-camp"
---

| ![](/assets/2010/09/2010-09-16-jug-summer-camp-quoi-de-neuf-dans-hibernate-une-perspective-de-jpa/4983715117_321524cffa_o.jpg "aquarium")   |
**Quoi de neuf dans Hibernate : une perspective de JPA**– Emmanuel Bernard ([présentation](http://sites.google.com/site/jugsummercamp/presentations))  
_par Audrey Neveu_

Emmanuel Bernard nous a présenté les évolutions de JPA 2.0 et les nouveautés à venir d’Hibernate, petit tour d’horizon …

NB : la présentation étant riche en code, plutôt que de recopier tous les exemples proposés par celle ci, nous vous proposons de la télécharger en cliquant sur le lien présentation dans le titre de l’article, chaque partie de l’article citant la/les slide(s) concernée(s) lorsqu’il y a lieu.

**Côté ORM :**

Standardisation des annotations spécifiques du mapping JPA 2.0 (support des map, list avec index etc …) et création de l’API de critère sont au menu.

Voici certaines des nouveautés d’Hibernate 3.5.x, hors implémentation de JPA 2.0, mentionnées par Emmanuel.

_Le Foreign generator :_  
L’annotation @MapsId est utilisée pour dans les relations @ManyToOne et @OneToOne. Elle permet de mapper la relation avec une clé primaire ou encore une clé composite. (slide 5)

_Le Partial Generator :_  
L’utilisateur a désormais la possibilité de créer son propre générateur d’id en définissant, par l’intermédiaire de deux annotations, les propriétés qui doivent être utilisées  :

- @GeneratedValue(generator=”inventory”) permet de donner le nom du générateur qui doit être utilisé pour créer l’id de cet objet,
- @GenericGenerator(name=”inventory”, strategy=”uuid2″) permet de donner sa définition.

Néanmoins, comme son nom l’indique, le partial generator ne génère qu’une parcelle de l’id seulement, il est donc plutôt recommandé pour mapper un modèle existant. (slides 6 et 7)

_Les propriétés Read / Write sur une définition de Column :_  
Cette propriété n’est pas disponible en annotation mais elle permet d’insérer les fonctions de décryptage et d’encryptage à la lecture et l’écriture en base de données. (slide ![8)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_cool.gif)

_Les fetch profile multiples :_  
Un fetch profile permet de définir la stratégie de chargement des relations (Lazy, Eager, etc …) définies pour une entité qu’on remonte par une requête. La stratégie de chargement définie directement sur les relations s’applique par défaut , mais l’utilisateur peut la surcharger par celle définie par un profile qu’il peut activer ou désactiver au runtime. (slide 10)

**L’API Criteria**

Criteria est une façon de construire les requêtes purement orientée objet : elle est type-safe, fortement typée et peut même générer un méta-modèle qui décrit le modèle métier, grâce à l’outil annotation processor. L’annotation processor va ainsi, via un plugin Maven / script ANT / votre EDI, générer le méta-modèle à partir de votre entité annotée. Ce méta-modèle va se présenter sous la forme d’une classe qui aura le même nom que votre classe de départ, suivie de \_ . Chaque attribut monovalué sera par exemple déclaré via un SingularAttribute qui reprendra le nom de la classe de référence et le type de la variable. (slide 12)

_Construire une requête avec CriteriaBuilder_

On démarre un entity manager avant d’utiliser la classe CriteriaBuilder qui est une aide à la construction des requêtes. Cette classe contient toutes les fonctions utiles pour la création d’une requête telles que from et fetch (slide 14). Elle permet également de récupérer un CriteriaQuery typé, l’objet requête passé au CriteriaBuilder étant déjà typé, inutile de re-préciser le type de l’objet. Criteria Builder est une véritable boîte à outils qui va permettre d’effectuer des jointures, des clauses where avec des alias, et de faire des fonctions plus avancées dans les requêtes telles que des greaterThan. (slide 15), having et count (slide 16), etc … Il est également possible de faire des sous-requêtes (requête imbriquée dans une autre requête) et des requêtes de type unique / distinct. (slide 17)

_Quand utiliser JP-QL Query ou Criteria ?_

Criteria étant plus naturel pour les gens habitués à écrire des requêtes objet, elle est particulièrement indiquée pour obtenir des requêtes complètes ou plus complexes.

**Lock Mode**

Le lock mode permet d’appliquer un lock au niveau de la base de données pour éviter un certain nombre de phénomènes lors de l’accès concurrent aux données, si on ne veut pas lire ce qui n’a pas encore été commité par exemple (prevents from dirty read).

On distingue différents types de locks, parmi lesquels :

- le lock optimiste : avec un numéro de version incrémentale, à vérifier avant la transaction. Seule la modification n’est pas accessible pendant la transaction ;
- le lock pessimiste ou read/write : avec un numéro de version utilisé pour vérifier les problèmes potentiels. La lecture et la modification ne sont pas accessibles pendant la transaction.

**Cache de second niveau et Infinispan**

Le nouveau cache de second niveau va permettre d’accéder à un degré de configuration plus fin (par type d’entité, par type de collection ou par requête) et à un tuning plus important (éviction, niveaux de cohérence).

Le cache de données JBoss Infinispan permet de copier une information partiellement sur un ou plusieurs noeuds. Plus léger que le JBoss Cache, il permet d’obtenir de meilleures performances pour l’accès aux données que ce soit en local ou lorsqu’elles sont distribuées. La configuration est embarquée dans la configuration xml traditionnelle (persistence.xml ou hibernate.cfg.xml) pour plus de simplicité.

**Changement de packaging**

Le core en version 3.5 contient actuellement les modules Annotations, Entity Manager et Envers en plus du core bien entendu. La 3.6, quant à elle, exclut annotation, cette api n’étant supportée que par le JDK 1.5 et au dessus.

**Hibernate Search**

Hibernate Search est le désormais célèbre module qui permet de faire de la recherche full text à la google et de la recherche rapide avec plusieurs mots, le tout avec de l’approximation et un tri par pertinence. C’est cette partie qui fait le lien entre la recherche Hibernate et le projet Apache Lucene qui est un moteur de recherche full text.

Le mantra d’Hibernate Search est simple : «you focus on the search, we focus on the infra», en bref simplicité d’utilisation :

- Lucene ne met pas à jour les index lui même, HibernateSearch oui et il applique les modifications à la base de données.
- Lucene parle chaine de caractère, HibernateSearch convertit en objet.

De plus il propose un modèle de programmation unifié en gérant Criteria, HQL, SQL et full text et une indexation massive via l’API fullTextSession. (slide 25). L’API permet quand à elle de définir le méta modèle en lieu et place de ce que permettent les annotations placées directement sur un objet (slide 26).

Deux approches à Lucene sont possible : la version text (champs : champs) ou la version programmatique : range(), onField(), from(), exclude(), to() … depuis la version 3.3.0. (slide 27)

**Hibernate Envers**

Grâce à l’Entity Versionning on stocke tout ce qui se passe en base de données, sans toucher au schéma existant. Cette approche est proche de celle du SVN : elle permet de rajouter des révisions sur les commit et de savoir quels champs ont été supprimés, ajoutés, quelles étaient les relations etc ….

En rajoutant simplement l’annotation @Audited sur les entités concernées, on va pouvoir connaître la date et le numéro de révision, la nature de l’opération, ainsi que les informations enregistrées. (slide 30)

Le Lookup permet quant à lui de savoir, pour telle entité, à quelle moment la valeur ‘a’ s’est changée en ‘b’, ce qui peut être particulièrement utile pour les actions en bourse par exemple. Il est ainsi possible de voir l’état d’un ensemble d’entités pour une révision donnée (slide 31) ou de voir tout l’historique d’une instance particulière à travers le temps (slide 32).

**Hibernate Validator**

Comme son nom l’indique Hibernate Validator est un système validation de données implémentant la spécification BeanValidation et va permettre d’appliquer une validation homogène des données sur chacun des tiers Présentation (ex. JSF, Wicket), persistance (JPA 2.0) et base de données (définition des contraintes).

Il va nous permettre de définir un certain nombre de contraintes sur une propriété, de créer ses propres contraintes, de composer, de grouper en sous éléments (pour valider un sous ensemble de propriétés), etc …
