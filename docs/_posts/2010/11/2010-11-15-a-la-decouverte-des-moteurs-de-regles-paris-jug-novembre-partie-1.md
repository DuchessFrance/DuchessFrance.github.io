---
layout: "post"
author: 
  - "Katia"
title: "A la découverte des moteurs de règles – Paris JUG Novembre (partie 1)"
date: "2010-11-15"
categories: 
  - "les-conferences"
tags: 
  - "brms"
  - "moteurs-de-regles"
  - "paris-jug"
---

| La soirée a commencé par la réunion d’une quinzaine de personnes à l’Avant JUG, dont l’un de nos speakers de la soirée : Emmanuel Bonnet ! Ce dernier nous a d’ailleurs parlé du JUG qu’il fréquente régulièrement : le [JUG Toulouse](http://www.jugtoulouse.org/). |

Puis départ vers les locaux de l’ISEP et pour commencer la soirée, un petit retour d’Antonio sur la réunion à laquelle les JUGs leaders européens étaient conviés par Oracle le mois dernier. Pour un résumé de cette rencontre, [voir ici.](http://www.parisjug.org/xwiki/bin/view/Blog/To%20be%20or%20not%20to%20be%20%28part%20of%20IOUC%29%2C%20that%20is%20the%20question "To be or not to be") Pour continuer un retour sur le fonctionnement du site javablackbelt par le responsable du site mais qui ne vient jamais au JUG ![;)](/assets/2010/11/2010-11-15-a-la-decouverte-des-moteurs-de-regles-paris-jug-novembre-partie-1/icon_wink.gif)

Et pour finir avec l’introduction de la soirée, présentation d’Ippon, sponsor de la soirée qui mettait en jeu deux places pour Devoxx, hébergement et transport inclus.

### Les BRMS (Business Rules Management Services) ou plus simplement les moteurs de règles

Durant cette première moitié de soirée (ils sont comme ça au JUG, ils n’hésitent pas à passer sur la quantité, pourvu que la qualité soit au rendez vous ![;)](/assets/2010/11/2010-11-15-a-la-decouverte-des-moteurs-de-regles-paris-jug-novembre-partie-1/icon_wink.gif) ) Emmanuel Bonnet, consultant et expert en BRMS chez Génigraph nous a présenté les concepts fondamentaux liés aux BRMS et les moteurs des règles.

![Les BRMS](/assets/2010/11/2010-11-15-a-la-decouverte-des-moteurs-de-regles-paris-jug-novembre-partie-1/5163849886_437a7ece50.jpg "Emmanuel Bonnet")

Emmanuel Bonnet - Photo : José Paumard

Et pour commencer nous apprenons que le concept des BRMS n’est pas nouveau. En effet, notre speaker travaille depuis 10 ans maintenant dans l’implémentation de solutions d’architecture basés sur les moteurs de règles.

Les moteurs de règles s’articulent autour de trois concepts :

- l’écriture des règles métiers,
- l’exécution de ces règles par le moteur de règle,
- la gestion de ses règles et de leurs versions par un BRMS.

**La recette du moteur de règle en trois ingrédients :**

_Prenez quelques règles métier …_

Une règle métier, c’est du contenu métier exprimé sous forme intelligible par tous, y compris (et surtout en fait) le commun des mortels. Traditionnellement une règle métier est exprimée sous la forme “Si … Alors …”.

_… ajoutez-y un un moteur d’inférence …_

Sous ce mot quelque peu barbare se cache en fait le “cœur” du moteur de règle : les algorithmes et ensemble d’API qui exécutent les règles précédemment énoncées.

_… et faites cuire le tout dans un BRMS !_

Le BRMS est là pour assembler les règles métiers et le moteur d’inférence. C’est lui qui est responsable du cycle de vie des règles, de leur écriture et de leur exécution. Il doit permettre de gérer une configuration qui s’avère souvent problématique, permettre d’avoir des version des règles et de mettre en place des processus de test et de validation.

**Quand utiliser un moteur de règle ?**

Dans la demande du client peut se faire sentir le besoin de changement qui peut parfois être extrêmement difficile à atteindre. Deux cas nous sont proposés :

- Le métier du client est trop compliqué pour être mis dans une architecture traditionnelle,
- Le cycle de vie des règles change plus souvent que celui de l’application.

Emmanuel illustre son propos avec des exemples parfaitement concrets dans un cas comme dans l’autre :

- Comment détecter les problèmes de pannes d’un hélicoptère tout en évitant la déperdition d’information ? Le métier demande des connaissances dans des domaines pointus et assez différents de ceux de la programmation, il vaut mieux déléguer la rédaction des règles aux experts de ces domaines, qui seront eux à même de les expliciter.
- Comment gérer le cycle de développement d’une application où les règles métiers vont être modifiées tous les mois en fonction des besoins du marketing, comme c’est le cas chez les opérateurs de télécommunication par exemple ? Il devient plus intéressant en terme de coût et de réactivité d’externaliser la logique métier dans les règles, elle est ainsi modifiable plus souvent, sans pour autant passer par un cycle de livraison java complet.

Le BRMS est là pour gérer tout ça : on **externalise** le métier, on l’**explicite** en règle et le réinjecte dans l’application.

Une fois explicité, le métier est compréhensible par un utilisateur métier ce qui lui donne deux avantages majeurs, il est à la fois :

- **traçable :** on peut retrouver facilement la logique qui a amené à telle ou telle prise de décision,
- **modifiable** sans l’intervention de développeurs.

La traçabilité devient un avantage non négligeable dans un métier où les règles évoluent rapidement : dans le cas d’un robot trader, elle permet de savoir pourquoi telles actions ont été vendues à tel moment, en remettant le contexte de l’époque en mémoire par exemple.

Remarque intéressante, notre speaker insiste sur le fait que le rôle du métier n’est pas forcément de faire des spécifications ou de gérer les prestataires mais bien de **savoir dans son contexte**. La forme si/alors va permettre de modéliser le savoir du client en un langage usuel et le rôle du développeur est alors le mapping entre le langage objet qu’il maîtrise et le langage usuel du métier, entre les concepts et la grammaire.

Comme nous le disions en introduction, le concept de BRMS existe depuis des années et il est maintenant assez avancé pour permettre de proposer un langage naturel aux utilisateurs. Le mapping du Business Object Model en Business Rules va lui permettre d’_exécuter ce qu’il lit_, mais il a néanmoins toujours besoin d’être guidé et c’est là le rôle du développeur. Typiquement, l’usage d’un moteur de règle est particulièrement courant dans des grandes banques, qui vont avoir jusqu’à 14000 règles métiers et des dizaines d’experts, non développeurs, qui sont là pour les gérer.

Le rôle du moteur de données est donc d’inférer pour produire un résultat en fonction du code, des données et des règles qui lui sont passés, et ce en grande quantité puisqu’il a été optimisé pour traiter un très grand nombre de faits et un très grand nombre de règles à la fois.

Emmanuel, apparemment fan d’Odile Deray ![;)](/assets/2010/11/2010-11-15-a-la-decouverte-des-moteurs-de-regles-paris-jug-novembre-partie-1/icon_wink.gif) , appelle l’algorithme **Red Is Dead** :

- mieux vaut exécuter mille fois mille règles qu’une fois une règle
- mieux vaut exécuter une fois mille règle que mille fois une règle

De plus il est capable de ré-exécuter ces règles, encore et encore puisque le résultat qu’il produit est une conclusion qu’il l’amène à de nouveaux faits et donc de nouveaux éléments. C’est la cohérence garantie dans l’exécution, principe qui est résumé par [l’algorithme de RETE](http://fr.wikipedia.org/wiki/Algorithme_de_Rete).

**L’architecture**

Le client souhaite donc pouvoir modifier la logique régulièrement tout en continuant à faire tourner d’autres versions du contenu en production et ce sans avoir de connaissances en informatique : c’est le rôle du BRMS, qui va lui permettre de gérer les règles, de les exécuter, de faire du monitoring et des statistiques le tout dans un environnement varié, voir même familier.

Un BRMS est principalement constitué de 3 parties :

- l’interface utilisateur qui va proposer des outils de type word, excel, eclipse ou web pour éditer les règles. Celles ci peuvent être écrite de multiples façons, sous la forme Si/Alors comme expliqué précédemment ou encore sous la forme d’un tableau de décision où les colonnes sont séparées entre conditions et actions et où chaque ligne représente une règle,
- le dépôt des règles qui va conserver toutes les règles et toutes leurs versions afin d’assurer la traçabilité,
- la partie intégration qui va lire les règles et produire le résultat. Cela se fait très simplement, en 10 lignes de codes. Mais attention : si vous recherchez des performances ou un déploiement à chaud, la complexité est au rendez vous et c’est pourquoi l’intégration est souvent proposée par les vendeurs de BRMS.

La gestion de configuration nécessite quant à elle quelques outils indispensables pour supporter le processus mis en place : gestion de l’accès concourant, des rôles et autorisations, des processus, etc …

**Retour d’expérience**

Et pour finir de nous convaincre, notre speaker va insister sur les défis à relever et les faux problèmes à éviter.

Les défis à relever avant de se lancer sont :

- identifier un projet où l’outil BRMS est vraiment utile. Ce n’est pas toujours le cas, il faut donc s’assurer que le projet remplisse au moins une des conditions citées dans les paragraphes précédents : métier complexe, en constante évolution ou nécessitant une traçabilité,
- extraire le métier, l’organiser sans qu’il y ait déperdition d’informations,
- le mettre en place, autrement dit trouver le bon processus.

Les faux problèmes qui pourraient être soulevés sont :

- les performances. Comme nous l’avons expliqué plus haut, les moteurs d’inférence ont été optimisés pour traiter un grand volume de données,
- la mise en production rapide. Les utilisateurs métiers étant responsables des règles, puisque c’est eux qui les renseignent, vont bien évidemment vouloir les tester avant,
- l’implication des utilisateurs. C’est en fait un plus car ils ont le budget et le métier.

### Il était parfois les BRMS …

![Laurent Magnin](/assets/2010/11/2010-11-15-a-la-decouverte-des-moteurs-de-regles-paris-jug-novembre-partie-1/5163244533_ac467882cc.jpg "Laurent Magnin")

Laurent Magnin - Photo : José Paumard

Présentée par Laurent Magnin, consultant senior chez In Fine, cette deuxième partie tombait à point nommée pour nous convaincre que dans la vraie vie, les applications aux BRMS sont multiples et intéressantes.

Laurent est détenteur d’un doctorat en Intelligence Artificielle, discipline qu’il a enseigné à l’université de Montréal avant d’être consultant JRules pour Ilog USA avant de revenir en France pour continuer à travailler sur d’autres projets impliquant des BRMS, avec JRules ou Drools.

**Ex. 1 : Turbinage**

Une compagnie de production d’aluminium ayant de gros besoin d’électricité, elle possède en règle générale un ou plusieurs barrages. Mais leur fonctionnement est complexe, fortement lié à la météo, au prix de l’électricité, etc … Le problème de la compagnie pour laquelle Laurent est intervenu était le départ en retraite des experts qui ont donc formalisé leur savoir pour permettre le pilotage et la prise de décision de ces barrages via un BRMS.

**Ex. 2 : A la bonne température**

Le chauffage de bâtiments dans un pays aussi froid que le Canada est un problème complexe, impliquant la connaissance de nombreuses règles métiers. Laurent nous fait remarquer que le technicien qui vient diagnostiquer un problème de chauffage ne se base pas sur ces règles, mais plutôt sur leurs cas d’utilisation. Il connait de nombreux cas “généraux”, mais retient surtout les solutions qu’il a appliqué aux cas particuliers : c’est le **Case-Base Reasoning**.

De là une initialisation avec des règles générales et des cas de départ qu’on exécute en simulation a été faite, puis adapté aux bâtiments. Le BRMS a fait office de technologie complémentaire permettant de faire parler les experts.

**Ex. 3 : Money Money**

La capitale du Nevada, Carson City, est une ville principalement occupée par les fonctionnaires … et les casinos ![;)](/assets/2010/11/2010-11-15-a-la-decouverte-des-moteurs-de-regles-paris-jug-novembre-partie-1/icon_wink.gif) . Parmi ces fonctionnaires, ceux en charge de verser les pensions à la population devaient connaître un certain nombre de règles qui venaient “se superposer” les unes aux autres : la personne a-t-elle fraudé, quelle est sa situation familiale etc … rendant ce travail particulièrement complexe.

En effet dans la vie de tous les jours, les humains n’ont “pas de règles”, d’où la nécessité de se baser sur des cas concrets pour pouvoir élaborer ces règles, ce que Laurent résumera ainsi : **“l’humain ne travaille jamais avec des règles, toujours avec des cas; et les cas permettent de tester les règles.”**

**Ex. 4 : Sans sucre**

Dans une banlieue aisée de Boston où les cas de diabètes sont récurrents, la nécessité de diagnostiquer automatiquement les cas dans un domaine très sensible a amené à la création d’un _ruleflow_ très affiné, afin de ne pas risquer de manquer un cas avéré. Le cheminement est parfaitement déterminé, chaque cas est évalué (âge, sexe, origine etc …) et le tout est réalisé en langage naturel avec des experts médecins. Face au cas particulier de son patient, le médecin peut alors _tracer_ le raisonnement qui a été suivi et prendre la décision particulière qui s’impose.

**Ex. 5 – Faire son marché**

Le cas d’une grande banque de marché française vient en opposition totale au cas précédent. Là où le cas médical est beaucoup testé avant d’être utilisé, le cas financier est tout de suite utilisé en production, quasiment sans test préalable, impératifs économiques obligent.

Cette banque disposait déjà d’un système qui connaissait des problèmes de maintenance et de performance, et c’est pourquoi, plutôt que de le refaire alors qu’il était devenu ingérable, Laurent a proposé l’utilisation d’un tableau décisionnel, a pu résumer 23 cas de demandes de prêt en un seul, tout en fournissant aux utilisateurs métiers un tableau de bord de type fichier excel, aisément compréhensible.

Fin de la première partie, direction la salle de pause où nous attend un buffet mauricien particulièrement alléchant, offert par Ippon ![:)](/assets/2010/11/2010-11-15-a-la-decouverte-des-moteurs-de-regles-paris-jug-novembre-partie-1/icon_smile.gif)
