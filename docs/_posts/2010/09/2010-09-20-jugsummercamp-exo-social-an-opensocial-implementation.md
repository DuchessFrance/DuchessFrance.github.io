---
layout: "post"
author: 
  - "Audrey"
title: "JugSummerCamp – eXo Social, an OpenSocial implementation"
date: "2010-09-20"
categories: 
  - "les-conferences"
tags: 
  - "exo-social"
  - "gatein"
  - "jug-summer-camp"
  - "open-social"
---

| ![](/assets/2010/09/2010-09-20-jugsummercamp-exo-social-an-opensocial-implementation/4983715173_e314b29668_o.jpg "aquarium")   |
**eXo Social, an OpenSocial implementation**– Tugdual Grall et Jérémi Joslin  
_par Audrey Neveu_

Faisant suite à la création de [GateIn](http://www.jboss.org/gatein), développé avec les équipes de JBoss, eXo Platform a présenté en mai dernier [eXo Social 1.0](http://wiki.exoplatform.org/xwiki/bin/view/Social/), une implémentation de OpenSocial permettant d’ajouter du contenu orienté réseaux sociaux à votre portail d’entreprise.

**Qu’est ce qu’OpenSocial ?**

[OpenSocial](http://code.google.com/intl/fr-FR/apis/opensocial/) est un ensemble d’API développées par Google destinées au développement d’applications de réseau interopérables.

Un réseau social pourrait se résumer en 3 points :

- mon identité : qui suis-je ?
- mes relations : qui est-ce que je connais ?
- mes activités : quoi de neuf ?

Ces 3 points vont aboutir à la nécessité de créer diverses applications pour la gestion de document par exemple, ou encore la création de groupe, les forums de discussion, les messages, etc …

La plupart des API existantes sont en JavaScript, REST pour le transfert et RPC. Pour la partie visuelle il s’agit essentiellement de gadgets en HTML à la iGoogle. Les conteneurs open sociaux sont déjà nombreux compte tenu de l’explosion du nombre de réseaux sociaux et de leur fréquentation.

**Le cas eXo Social**

eXo Social a pour vocation de permettre le développement d’applications de réseaux sociaux pour un portail d’entreprise, en se basant sur l’intranet existant par exemple. Pour l’entreprise, c’est la possibilité d’avoir des gadgets pour gérer l’activité, tout en modérant leur visibilité avec une gestion des droits par utilisateur.

Au sein d’Exo, le choix a été fait de se baser sur [Apache Shindig](http://shindig.apache.org/), qui est considéré comme l’implémentation de référence d’OpenSocial, pour l’intégrer au coeur de la plateforme GateIn. La plateforme apporte déjà le support pour les gadgets , le tout étant intégré au modèle de stockage (JCR) et de sécurité de GateIn.

**En pratique**

Un gadget ce n’est rien d’autre que du xml avec des portions HTML, CSS, et JavaScript, intégré dans la page via une iframe. Chaque gadget étant parfaitement indépendant, le coût d’affichage d’un gadget ne pénalise pas les autres et il en va de même pour une possible erreur de développement. Contrairement aux portlets qui sont une technologie serveur, les gadgets sont une technologie cliente reposant sur les API JavaScript OpenSocial et eXo Social. Il ne s’agit que d’une page html avec de l’ajax. L’utilisation sous-jacente de REST permet de mettre à disposition l’information rapidement, le tout formant une application réactive, riche et dynamique.

Chaque gadget est éditable facilement, via un IDE en ligne développé par eXo et basé sur GWT. Grâce à l’utilisation d’une registry (JCR), il est ainsi possible de prévisualiser le gadget, de le versionner ou de faire un revert, puis de le mettre à disposition des utilisateurs. L’authentification quant à elle repose sur [oAuth](http://code.google.com/intl/fr-FR/apis/accounts/docs/OAuth.html), un protocole de propagation d’identité. Aucune information personnelle n’est envoyée, c’est un token d’accès renvoyé par le provider qui permet l’accès aux données.
