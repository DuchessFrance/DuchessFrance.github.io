---
layout: "post"
author:
  - "laila"
title: "Retour sur Devoxx France 2023"
date: "2023-04-18"
categories:
  - "devoxx"
  - "event"
---


| ![Devoxx France 2023](/assets/2023/04/retour-sur-devoxx-france-2023/devoxx-france-2023.jpg){: width="300"} | Retour sur Devoxx France 2023 par Laïla Atrmouh |


J'ai eu la chance d'assister à mon premier Devoxx grâce à une place offerte généreusement par la communauté Duchess !

La taille de l'événement est impressionnante: il y avait plusieurs tracks en parallèle avec des conférences / universités très variées mais il a fallu faire des choix.

Heureusement, les replays seront bientôt disponibles sur [la chaîne Youtube de  Devoxx France](https://www.youtube.com/@DevoxxFRvideos) !

Voici un petit extrait de quelques conférences auxquelles j'ai pu assister et ce que j'en ai retenu.

## Rendons le DDD aux Devs !

Le mercredi matin ne listait que des "Universités": ce sont des formats plus longs qu'un talk classique qui durent 3h et j'ai adoré ! Les speakers peuvent prendre le temps d'entrer plus en profondeur dans leur sujet.
Cette université, organisée par [Dorra Barraguiz](https://twitter.com/DorraBartaguiz) et [Arnaud Thiefaine](https://twitter.com/ArnaudThiefaine), alternait entre recettes de refactoring et application en direct dans un kata où on a pu refactorer pas à pas une méthode de plus d'une centaine de lignes avec une complexité assez grande !


![Schéma d'architecture hexagonale durant la présentation DDD](/assets/2023/04/retour-sur-devoxx-france-2023/devoxx_architecture_hexagonale_ddd.jpg)


Différentes techniques ont été abordées:
- "Extract Value Type Operation": des variables typées ne devraient pas se balader dans le code métier et devraient être encapsulées dans une classe.
- "Clean The Deck", commencer par le nettoyage de code trivial (commentaires, variables inutilisées...) pour y voir plus clair.
- "Pattern Sandwich": on met le metier au coeur et le code lié à la technique (déclaration de variables, etc.) aux extrémités.

Je vous la recommande particulièrement si vous ne savez pas comment appliquer le DDD à votre application logicielle. Le kata de l'université est en Java mais les recettes peuvent s'appliquer à tout type de projet, quelque soit le langage.

## Ctrl + Alt + Dépression

Une de mes sessions préférées de ce Devoxx, mais attention: elle n'est pas simple à regarder et il y a eu beaucoup d'émotion dans la salle.
[Manon Gruaz](https://twitter.com/manongruaz) nous raconte avec transparence sa dépression et ce qui a pu se passer dans sa vie à ce moment là. C'était un partage très précieux, plein de conseils pour préserver sa santé mentale (thérapie d'acceptation et d'engagement, se parler avec bienveillance...).

Même si chaque dépression est différente, Manon donne des pistes pour faciliter les interactions avec une personne dépressive (éviter les questions ouvertes de type "Comment ça va?")

## Avoir un journal de codeur-se

Le quicky de [Sandrine Banas](https://twitter.com/cosjava) revient sur la notion de journal et son importance.

Ecrits depuis la nuit des temps par de grands scientifiques (Charles Darwin, Léonard De Vinci, Marie Curie...), c'est un véritable outil pour pouvoir tracer ses succès, ses tâches faites dans la journée et capitaliser sur des informations...

Elle donne quelques tips pour capitaliser sur son journal comme :
- Utiliser des indicateurs SMART pour indiquer son avancement sur un objectif.
- Être le plus spécifique possible dans ses notes ("J'ai amélioré une procédure stockée": trop vague quand on revient dessus 6 mois après!)
- Relire ses notes pour voir comment les améliorer dans le temps

Ce talk est très complémentaire au voyage au coeur de la veille dont je parle plus bas.

[Les slides sont déjà disponibles.](https://speakerdeck.com/sbanas/devoxx2)


## Tu peux faire ça en CSS maintenant ?

On est passés de 50 propriétés CSS à l'époque de CSS1 à ... plus de 550 propriétés aujourd'hui. Raphaël Goetter, créateur d'Alsa Créations, revient sur toutes les nouveautés parfois méconnues de CSS et qui évitent pourtant bien des déboires.

Un kuddo particulier pour la mention de `@layer` que je connaissais pas du tout et qui peut éviter bien des utilisations intempestives de `!important`.

Sa présentation est un concentré des dernières sorties CSS et [les slides sont déjà en ligne](https://speakerdeck.com/goetter/ah-tu-peux-faire-ca-en-css-maintenant).

## Démystifions les composants Kubernetes
Inspiré par ["Kubernetes, the hard way" de Kelsey Hightower](https://github.com/kelseyhightower/kubernetes-the-hard-way), Denis Germain déploie sur un cluster kubernetes, une bonne vieille page HTML basique, à travers d'une démo. L'objectif de la présentation est de démontrer qu'il n'y a rien de magique dans Kubernetes, que tout composant est API et qu'il y a des dépendances entre eux.


![Présentation démystifions les composants kubernetes](/assets/2023/04/retour-sur-devoxx-france-2023/devoxx_kubernetes.jpg)


A chaque étape, on voit les liens nécessaires entre les différents composants Kubernetes (sans le scheduler, les pods restent en Pending par exemple!).

Les ressources pour rejouer la démo sont disponibles [sur le blog de Denis](https://blog.zwindler.fr/2023/04/14/devoxx-2023-recap-jour-2/#d%C3%A9mystifions-les-composants-internes-de-kubernetes
).

## Le post-mortem

[Lise Quesnel](https://twitter.com/QuesnelLise) (Zenika) explique l'importance du post-mortem et comment l'organiser pour qu'elle se passe le mieux possible.

Ce que j'en retiens:
- Elle est différente de la rétro classique: on revient sur un projet précis et non un sprint..
- L'animateur doit être idéalement à l'extérieur du projet pour garantir un oeil neutre.
- Différents rôles sont à prévoir dans l'animation de cette réunion: un garant du temps, un scribe et un animateur. Ces rôles ne sont pas cumulables.
- On critique les process, pas les personnes.


![Présentation Post Mortem](/assets/2023/04/retour-sur-devoxx-france-2023/devoxx_postmortem.jpg)


Elle partage aussi la méthode des 5 pourquoi pour identifier la cause originelle d'un problème (Pourquoi la machine a planté en prod ? Parce qu'il y a eu une erreur. Pourquoi est-ce qu'il y a eu cette erreur ? And so on jusqu'à trouver la racine du souci...).


## Clean As You Code
Nolwenn Cadic et [Marco Comi](https://www.twitter.com/@marcocomi85) de Sonar ont parlé de leur approche par rapport au Clean Code: ils ne réécrivent pas leur code legacy pour éviter de bloquer les releases évolutives mais s'engagent à ce que tout nouveau code doit respecter un certain standard de qualité contrôlé par les outils [SonarLint](https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarlint-vscode) et [SonarCloud](https://www.sonarsource.com/products/sonarcloud/) (gratuit pour les projets opensource!)

J'ai découvert à travers ce talk l'outil [Git of Theseus](https://github.com/erikbern/git-of-theseus) qui permet de faire un graph de pourcentagnes de lignes de code présentes après n années.

## Le Craft: des concepts au déploiement à l'échelle

Il y avait plusieurs talks sur le *craft* (l'artisanat logiciel en bon français!), mais ce talk axait plus sur l'aspect "mise en place organisationnelle". [Guillaume Le Dain](https://twitter.com/gniadel) et [Mathieu Vincent](https://twitter.com/yodamad03) de Sopra Steria ont donc fait un retour d'expérience sur le déploiement de ces pratiques à l'échelle du groupe.

![Rituels Bonnes pratiques Craft chez Sopra Steria](/assets/2023/04/retour-sur-devoxx-france-2023/devoxx_craftsmanship.jpg)

- **Convaincre les chefs de projets**

Différents arguments ont été présentés: l'importance du pair pour former les nouvelles recrues, favoriser le partage de connaissances et l'amélioation de la qualité qu'apporterait ces pratiques.

- **Acculturer les clients**

Certains clients n'étaient pas forcément contre, d'autres se demandaient combien ça allait leur coûter. Contractualiser la dette technique déjà existante et comment elle serait gérée permet de mettre au clair l'ensemble des parties prenantes du projet.

- **Embarquer l'équipe**

A travers des rituels de partage de connaissance (conférence interne à Sopra), coding dojo ...

## Avoir de l'impact en tant qu'Engineering Manager

L'an dernier, [Dimitri Baeli](https://www.twitter.com/@dbaeli) (Staff BackMarket, cofondateur de TechRocks) avait présenté avec [Hugo Lassiège (CTO Malt)](https://twitter.com/hugolassiege) la Dual Career Ladder en grattant comment évoluer en tant que dev senior, vers le chemin du contributeur individuel


![Dual Career Ladder - Devoxx France](/assets/2023/04/retour-sur-devoxx-france-2023/dual_career_ladder.png)

[Extrait de la présentation disponible ici]( https://www.youtube.com/watch?v=X5MYKj1C2qM).

Cette année, c'est la suite de l'exploration de l'autre branche, l'Engineering Management que [Dimitri Baeli](https://www.twitter.com/@dbaeli) présente avec [Benoît Guillon](https://www.twitter.com/@benoitguillon), VP Engineering chez Malt.

J'en retiens surtout la boussole d'un Engineering Manager, les signaux qu'il doit surveiller :
-  Livraisons en production basses: qu'est-ce qui freine les livraisons ?
- Output vs Outcome : quel est l'impact de ce que produit l'équipe ?
- Culture d'entreprise: quelle est l'intégration de l'équipe tech dans la boîte au global? Y a-t-il un effet de "Nous vs Les autres" ?
- Pas d'innovation, d'amélioration continue *de la part des membres* de l'équipe


## Tests de montée en charge
[Stéphane Landelle](https://twitter.com/slandelle), CTO de Gatling, partage des bonnes pratiques sur les tests de montée en charge.

J'en retiens surtout ces erreurs à éviter
- Avoir un scénario de test pas assez proche de la production
	- On peut se baser sur des valeurs
- Tester le cache sans le savoir
	- Toujours mettre des valeurs aléatoires pour être
- Ne pas être focus sur les erreurs applicatives: porter une attention à la *big picture*


## Voyage au coeur de la veille technologique
Clairement ma session préférée des 3 jours, elle résonnait particulièrement avec mes besoins du moment !

On a tendance à consommer de la veille en lisant des articles mais qu'en retient-on ? Comment capitalise-t-on sur ces connaissances consommées ? Qu'en reste-t-il dans le temps ?

Dans ce talk, [David FRANCK](https://www.twitter.com/@dayoud) et [Fabien Hiegel](https://www.twitter.com/@fhiegel) nous donnent de nouvelles clés pour faire une veille plus efficace:
- **Sourcer** : L'étape la plus intuitive en général, trouver des articles via Twitter / Dev.to / Medium / Mastodon / ...
- **Traiter**: L'objectif est de sélectionner un article issu du sourcing et résumer ce qu'on a compris de l'article pour mieux mémoriser et en évitant de paraphraser. On les classe pour mieux retrouver la connaissance derrière (*Building a Second Brain*)
- **Valoriser** : On restitue ce qu'on apprend dans le format de son choix (article, blog, podcast, vidéo, en parler à un collègue lors d'une réunion...). C'est un bon moyen de s'assurer que l'information a bien été comprise !

Ce que je retiens de cette présentation, c'est l'importance de faire une veille **plus qualitative que quantitative**.

On a tendance à consommer des articles sans en tirer bénéfice derrière (*veille passive*) ce qui est ok, une veille active apporte plus de bénéfices à long terme!

## Bilan

C'était deux jours et demi **hyper riches**, et il y a encore beaucoup de conférences auxquelles je n'ai pas pu assister et qui m'auraient pourtant intéressé. J'en sors énergisée et inspirée par les différentes rencontres et conférences absorbées.

Mon seul regret est de ne pas avoir plus profité du format "Université" sur les jeudi/vendredi d'autant que les conférences "classiques" sont rediffusées gratuitement sur leur chaîne Youtube quelques semaines après l'événement. On retrouve peu de formats longs dans les autres conférences tech.

Ca sera pour la prochaine édition :)
