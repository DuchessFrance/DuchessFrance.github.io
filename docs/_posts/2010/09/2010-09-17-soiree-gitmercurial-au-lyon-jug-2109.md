---
layout: "post"
author: 
  - "acrepet"
title: "Soirée Git/Mercurial au Lyon Jug (21/09)"
date: "2010-09-17"
categories: 
  - "les-conferences"
tags: 
  - "dvcs"
  - "git"
  - "lyon-jug"
  - "mercurial"
---

| Session de rentrée pour le Lyon JUG le 21 septembre, avec au programme une soirée consacrée aux nouveaux systèmes de gestion de configuration décentralisée : GIT et Mercurial. Et attention, cette soirée sera aussi l’occasion de lancer l’antenne lyonnaise de **JDuchess**.   |
Un peu de teasing sur cette soirée… Pour vous donner envie de venir, nous avons posé quelques questions aux speakers de la soirée, Loïc Frering et Sébastien Deleuze…

**Agnès : Alors, en quelques mots, comment peut-on définir les systèmes de gestion de version décentralisés? Quelles sont les grandes différences avec les systèmes centralisés tels que SVN?**

_Loïc et Sébastien : Les systèmes de gestion de versions décentralisés permettent à chaque contributeur de disposer de la totalité du dépôt dans une copie locale, sans être dépendant d’un serveur central. Chaque copie d’un dépôt contient donc l’historique complet du projet qui peut être manipulé localement.  
En conséquence, les DVCS sont beaucoup plus performants que les systèmes centralisés pour les opérations telles que le clone (copie d’un dépôt distant), la manipulation de branches ou la recherche dans l’historique qui ne nécessitent plus de communication avec un serveur central : plus besoin de réseau pour pouvoir travailler.  
Autre spécificité, il est maintenant possible de mettre en place des workflows de travail entre collaborateurs bien plus évolués. Il est en effet très simple de se synchroniser avec n’importe quel dépôt distant via des pull et push.  
Ces nouveaux systèmes sont également bien plus efficaces par leur mécanique de stockage : Git et Mercurial stockent des fichiers entiers au lieu d’une suite infinie de diff, ce qui accélère grandement la manipulation d’historique et la reconstitution de révision.  
Enfin, contrairement aux systèmes centralisés, la création et le merge de branches sont enfin utilisables facilement. Ceci favorise le développement dans des branches isolées de plusieurs sujets en parallèle. Il est aussi possible de mettre en place différentes stratégies de gestion des branches évoluées, avec des branches dédiées par exemple aux ajouts de fonctionnalités ou correction de bugs, alors que d’autres reflètent l’état de différents environnements : qualification, production._

**Agnès : Les DVCS ont un fort succès dans le monde des logiciels libres. En quoi se prêtent-ils mieux aux pratiques des développeurs des logiciels libres? Permettent-ils d’être plus “agiles”?**

_Loïc et Sébastien : Effectivement, de plus en plus de logiciels libres migrent vers des DVCS, nous identifions trois principales raisons :_

_- La nature même des DVCS : la distribution rend la collaboration plus aisée en laissant chacun des contributeurs travailler localement sur un fork pour ensuite émettre une pull request vers un dépôt désigné comme référent. Il est bien plus simple de faire participer les contributeurs qui n’ont plus à faire partie d’un groupe privilégié et restreint de core commiters comme c’était le cas avec Subversion. Les contributions se multiplient ainsi que le nombre de committers.
- Sans même prendre en compte leur nature distribuée, les DVCS corrigent les défauts les plus criants des systèmes traditionnels. Par exemple rendre de nouveau simples des opérations telles que le déplacement ou le renommage d’un répertoire, opérations qui très souvent aboutissaient à une corruption du dépôt local en raison du principe de stockage des métadonnées non adapté (un répertoire .svn par répertoire du dépôt avec Subversion).
- La popularité et la montée en puissance des forges collaboratives basées sur des DVCS telles que Github, Bitbucket ou Gitorious. Elles mettent en avant la puissance des DVCS en permettant de facilement faire des clones et d’émettre des pull requests. Certaines s’orientent même vers le social coding en implémentant un ensemble de fonctionnalités tels que les commentaires sur les commits, la création de réseaux et l’abonnement à des flux d’activités._

**Agnès : Parmi les avantages des DVCS souvent mis en avant, il y a la facilité de faire des branches, et plus particulièrement de merger. Par quelle “magie” les DVCS opèrent-ils pour rendre les merges plus simples?**

_Loïc et Sébastien : Les DVCS ont en grande partie dédramatisé le processus de merge en le rendant bien plus puissant et intelligent pour que le maximum soit fait automatiquement.  
Soulignons plus particulièrement que dans les DVCS :_

_- Chaque révision connaît son parent direct. Le graphe des évolutions du dépôt peut donc être simplement reconstitué.
- L’historique est conservé lors d’un merge, au contraire de Subversion qui considère que c’est l’utilisateur qui merge qui a écrit tout le code.
- De bien meilleurs algorithmes de résolution des conflits sont utilisés, basés notamment sur le 3-way merge qui prend en compte les 2 fichiers à merger et leur parent commun le plus récent.
- Les algorithmes de détection des renommages sont plus évolués.
- Les branches sont locales, ce qui accélère énormément le merge ou le passage d’une branche à une autre._

**Agnès : Vous allez comparer dans votre présentation Mercurial à Git. D’autres DVCS existent (Bazaar, etc.) : parmi les outsiders, Fossil et le tout nouveau Veracity de SourceGear, des DVCS avec bug-tracking intégré pour l’un et base de donnée distribuée pour l’autre. Vous paraissent-ils prometteurs?**

_Loïc et Sébastien : Voici notre avis sur les outsiders._

_

Bazaar  
Il a la réputation d’être assez lent et semble être sévèrement distancé par Git et Mercurial.

Fossil  
Ce que nous recherchons, c’est “the right tool for the right job”. Il y a de nombreux ponts entre les systèmes de gestion de versions et les bugtrackers, notamment via des outils intelligents comme Mylyn ou Jira. Il est déjà compliqué de trouver un super outil de gestion de versions et un super bugtracker pour nos besoins. Alors les chances pour qu’un produit présente ces 2 caractéristiques à la fois paraissent réduites ![;-)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)

Veracity  
Si nous reprenons les points mis en avant par SourceGear sur leur site :

- Un avantage affiché est une vrai gestion des comptes utilisateurs qui effectivement n’est pas présente dans Git ou Mercurial. Néanmoins, cet avantage est modéré par le fait que la quasi totalité des entreprises utilisent maintenant des gestions d’identité centralisées, externes au système de gestion de version (LDAP, SSO). Cette fonctionnalité ne sera donc pas différenciante la plupart du temps.
- Pluggable storage layers : les répertoires de metadonnées .hg et .git permettent une gestion de l’historique extrêmement optimisée. Une abstraction en terme de stockage, c’est risquer des performances moindres pour des avantages qui nous paraissent aujourd’hui difficiles à identifier.
- Bon point : un vrai support des répertoires, même vides, ce qui manque actuellement sous Git/Mercurial.
- Licence : le fait que la licence GPL soit une licence virale n’est pas un frein pour ce type d’outils. La licence Apache2 utilisée par Veracity n’est donc pas un atout majeur pour l’adoption en entreprise._

**Inscription et informations pratiques sur la soirée sur la [page officielle du Lyon JUG](http://www.lyonjug.org/bin/view/Main/20100921)**
