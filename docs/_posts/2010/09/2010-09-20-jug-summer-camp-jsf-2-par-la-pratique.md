---
layout: "post"
author: 
  - "edijoux"
title: "JUG Summer Camp – JSF 2 par la pratique"
date: "2010-09-20"
categories: 
  - "les-conferences"
tags: 
  - "jsf"
  - "jsf2"
  - "jug-summer-camp"
---

| ![](/assets/2010/09/2010-09-20-jug-summer-camp-jsf-2-par-la-pratique/4983715237_3fa04a2196_o.jpg "aquarium")   |
**JSF 2**– Damien Gouyette ([présentation](http://sites.google.com/site/jugsummercamp/presentations))  
_par Ellène Dijoux  
_

Damien Gouyette, auteur du blog [C’est pas dur](http://www.cestpasdur.com/), nous présente au travers d’un cas concret l’utilisation de JSF 2. Son projet disponible sur [github](http://github.com/dgouyette/jugsummercamp) est un projet de blog réalisé avec JSF 2.

**Le rendu visuel avec Facelets**

JSF est un framework orienté composant, et pour réaliser son projet il a utilisé Facelets pour la vue. Facelets permet de réaliser le templating des pages et des composants. Il a été utile pour le découpage et l’organisation des composants du blog. Il évite l’apparition des classes Java dans les pages JSP et participe au respect du pattern MVC (Modèle Vue Contrôleur).

**Le traitement**

L’annotation @ManagedBean permet d’identifier la classe qui réalise le traitement, plusieurs annotations sont disponibles pour définir le cycle de vie des Managed Beans : @ApplicationScoped, @SessionScoped, @ViewScoped, @RequestScoped, @NoneScoped.

**La navigation**

Aves JSF 2, il n’est plus nécessaire de définir et maintenir le verbeux faces-config.xml. Le ManagedBean peut maintenant retourner une valeur qui sera considérée comme étant le nom de la page sans l’extension. S’il ne trouve pas de fichier par défaut, il se conforme aux règles de navigation définies. Un autre souci auquel nous pouvons être confrontés avec JSF est la double validation de formulaire, le problème peut être résolu en passant par la méthode GET. Les URLs peuvent être bookmarkables grâce à trois composants : `<h:link />`, `<h:button />`, `<h:viewParam/>`.

**Validation**

Grâce à Hibernate Validator, la définition des contraintes sur les champs ne se fait qu’à un seul endroit. Il est possible de valider des adresses email, la taille d’un texte, …

**Requête Ajax**

La balise `<f:ajax />` permet de définir une requête Ajax avec les attributs :

- **execute** qui a plusieurs valeurs possibles : @all, @none, @form, @this ;
- **render** qui indique les composants à soumettre côté serveur.

**Composant composite**

Le composant composite permet de créer ses propres composants réutilisables. Pour son projet de blog, Damien a créé un composant Twitter. Pour ce faire, il définit des ressources statiques tel qu’un twitter.xhtml où le code du composant est défini avec sa CSS et ses images. On utilise ensuite les balises  `<cc:interface />` et `<cc:attribute />` pour définir les paramètres d’entrée à fournir au composite que l’on pourra utiliser lors de l’appel au composant. On peut ensuite associer du code métier à notre composant. Le principe est simple : créer une classe java respectant la même hiérarchie que le composant XHTML. Par exemple pour un composant mycomponents/Twitlistjava, on crée une classe mycomponents. Twitlistjava qui implémente l’interface NamingContainer.

**Outils**

Pour développer en JSF 2 actuellement, plusieurs librairies de composants sont à notre disposition : RichFaces 4.0 M2, IcesFaces 2.0 béta 1, PrimeFaces 2.0 … Les serveurs d’application disponibles sont : Glassfish, Tomcat, JBoss et Jetty. Pour développer, vous aurez à votre disposition NetBeans 6.9, Eclipse, JBoss Tools et IntelliJ IDEA.

**Synthèse**

Parmi les nouvelles fonctionnalités, nous avons maintenant :

- Ajax inclus et optimisé ;
- les profils d’utilisation ;
- externalisation des ressources statiques ;
- 2 nouveaux scopes : ViewScope et FlashScope ;
- le support du GET en plus du POST.

On peut aussi noter les améliorations suivantes :

- le développement de composant plus facilement ;
- la navigation n’est plus aussi lourde à définir (plus de faces-context.xml) ;
- la configuration XML est maintenant remplacée par des annotations.
