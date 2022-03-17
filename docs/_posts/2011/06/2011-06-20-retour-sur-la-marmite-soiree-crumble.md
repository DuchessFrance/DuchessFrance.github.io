---
layout: "post"
author: 
  - "Audrey"
title: "Retour sur La Marmite &#8211; Soirée Crumble"
date: "2011-06-20"
categories: 
  - "autour-de-la-marmite"
  - "les-mains-dans-le-code"
tags: 
  - "forplay"
  - "la-marmite"
  - "mockito"
  - "tests-dihm"
  - "tests-unitaires"
---

| #### Mardi 7 juin dernier a eu lieu la première édition de notre nouvel événement récurrent : |

# La Marmite !

Au programme un Hands-On Mockito animé par Mathilde Lemée et David Gageot et en parallèle, un Open Space Technology animé par le reste de l’équipe Duchess France. Pour ceux qui ne connaissent pas le principe des Open Space Techonologies, je vous invite à relire [l’article d’annonce](http://jduchess.org/duchess-france/blog/marmite-soiree-crumble-pour-la-premiere-edition/) d’Ellène Dijoux qui vous éclaircira sur le sujet ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif)

![IMG_0042](/assets/2011/06/2011-06-20-retour-sur-la-marmite-soiree-crumble/5811390860_88c392d717_m.jpg)![IMG_0021](/assets/2011/06/2011-06-20-retour-sur-la-marmite-soiree-crumble/5811390262_127232720d_m.jpg)![](/assets/2011/06/2011-06-20-retour-sur-la-marmite-soiree-crumble/5810826773_0f9f63d050_m.jpg)

Lors de l’OST, une dizaine de sujets ont été présentés au total et 4 débattus. Les voici dans l’ordre :

#### 1\. les test d’IHM : quand ? comment ? pourquoi ? avec quoi ?

Problématique rencontrée par plusieurs participants dans l’assistance : les tests d’IHM. Pas toujours aisés à implémenter, notamment lorsqu’il s’agit de les réaliser avec [Selenium](http://seleniumhq.org/) : les dépendances que l’on peut avoir avec la base de données par exemple les rendent parfois lourds à maintenir. Ils ne sont pourtant pas là que pour vérifier le comportement de l’application, ils permettent en amont de “blinder” le développement, comme dans toutes couches de l’application. En Wicket par exemple, les tests d’IHM permettent de s’assurer que l’on n’a pas oublié de déclarer un composant en route et en GWT de structurer le développement, ce qui peut s’avérer utile lorsque l’on essaye d’appliquer le très riche MVP à la lettre ![:D](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_biggrin.gif) Au final les solutions expérimentées par les participants étaient [Mockito](http://mockito.org/) pour du GWT et [WicketTester](https://cwiki.apache.org/WICKET/testing-pages.html) associé à un framework de mock ([EasyMock](http://easymock.org/) ou Mockito par exemple) pour Wicket.

#### 2\. [ForPlay](http://code.google.com/p/forplay/) : présentation de la nouvelle librairie proposée par Google pour développer des jeux cross platform.

![](/assets/2011/06/2011-06-20-retour-sur-la-marmite-soiree-crumble/5810826559_02974e9a58.jpg)

Présentée au dernier Google IO, cette librairie a pour but de permettre aux développeurs Java de développer rapidement des jeux comme ceux présentés dans la page DemoLinks. Pierre-Yves Ricau nous a fait un retour d’expérience du développement de [2H4U](http://forplay-2h4u.appspot.com/) : un retour plutôt positif ! Le débat a ensuite dévié sur un sujet non moins intéressant : serons nous amenés dans un avenir proche à développer des applications cross platform en entreprise ? En effet entre les tablettes et les smartphones, il n’est plus vraiment nécessaire pour un commercial d’emmener son ordinateur en réunion extérieure s’il peut retrouver toute l’information dont il a besoin à portée de main … Et de la même manière, un employé chargé de collecter des informations sur support papier (si, si, ça existe encore, on vous le promet) pourrait très bien faire le même traitement sur tablette. Un sujet à creuser pour une prochaine fois peut être ;o)

#### 3\. Mockito vs PowerMock vs EasyMock : lesquels avez vous utilisés ? lequel avez vous préféré et pourquoi ?

Avant toute chose, petite redéfinition de deux concepts de bases : Mock et Stub. Pour rappel un stub c’est un test fait sur l’état des objets, alors qu’un mock teste le comportement. Grand gagnant du débat : [Mockito](http://mockito.org/), qui sans surprise rencontre la préférence de tout le monde ! [EasyMock](http://easymock.org/) est plus verbeux, plus lourd et parfois limité. Mais il est souligné que la dernière version contient des améliorations. [PowerMock](http://code.google.com/p/powermock/) ne fait pas l’objet d’une grande argumentation car très peu utilisé, il est néanmoins rappelé qu’il peut être utile à l’occasion pour tester des méthodes statiques ou finales.  
Le débat dévie ensuite sur l’intérêt d’écrire des tests unitaires. En effet, il est inutile d’écrire des tests pour écrire des tests ou réécrire la méthode dans le test. Il arrive que du refactoring de code entraîne la modification des tests unitaires alors que le comportement de l’application n’a pas changé. Tout le monde est d’accord sur l’efficacité du test unitaire dans le cas du débuggage. Il permet de gagner du temps en isolant le problème et en permettant de le tester unitairement (sans avoir à packager, redéployer et cliquer dans l’application).  
La conversation part ensuite sur git bisect qui permet de retrouver à quel moment on a introduit un bug dans notre code. La stratégie consiste à créer un test qui met en évidence le bug. Puis d’éxécuter le test sur toutes les précédentes révisions par dichotomie. On remonte ainsi vers le commit ayant introduit le bug. Et on peut plus facilement corriger le bug car on connait le bug d’origine.

#### 4\. DDD vs BDD vs TDD : dans le cadre d’un nouveau projet, que choisir et pourquoi ?

Le postulat de départ était donc : dans un développement from Scratch, qu’est ce que je choisis ? TDD oui mais comment et pourquoi ? Parce que c’est in ? BDD oui mais … qu’est ce que c’est au juste ? Donc pourquoi ne pas en rester à DDD finalement ? Après avoir défendu les avantages indéniables du TDD (meilleur découpage du code, meilleure définition des contrats, test rapide sur diverses couches “fragiles” : mapping ou requêtage sql par exemple) et être revenu sur la façon dont chacun l’applique dans ses développements, un constat s’impose : le TDD oui, mais à condition que le modèle soit déjà clairement défini ! On passe ensuite à BDD mais avant un petit tour par le blog de duchessfr et [l’interview de Mauro Talevi](http://jduchess.org/duchess-france/blog/interview-de-mauro-talevi-speaker-mix-it-sur-behavior-driven-development-bdd-et-jbehave/) par Agnes Crepet histoire de se rafraîchir la mémoire ;o) Malheureusement personne parmi nous n’a eu l’occasion de le mettre en pratique, néanmoins, dans le cas qui nous intéresse, le modèle n’étant pas encore clairement défini, il se pourrait que ce soit la solution à retenir. Car si le modèle n’est pas prêt, il est probable que le développement commence par les services et dans ce cas, le BDD pourrait s’avérer particulièrement utile. Quant au DDD … ah bah tiens, personne n’a pris la peine de le défendre celui ci ![:D](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_biggrin.gif)

#### La conclusion

Certains parmi nous testaient l’OST pour la première fois et le résultat est plus que positif : l’échange est riche, on recueille quelques conseils au passage, bref un format qui a tout bon ! Et le plus drôle c’est que si l’on arrive avec la peur de n’avoir pas de sujet à proposer, les idées fusent pendant les débats et l’on termine la soirée avec plein d’idées pour la prochaine fois ![;)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_wink.gif) Et comme il est important de ne pas perdre les bonnes habitudes, nous avons bien sûr fini la soirée en beauté avec une troisième mi temps ![:D](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_biggrin.gif)

#### Les vacances approchent, mais nous espérons vous retrouver nombreux à la rentrée pour de nouvelles sessions de La Marmite ! Et si certains ou certaines parmi vous souhaitent animer un hands-on, n’hésitez pas à nous contacter à l’adresse habituelle : duchessfr(at)gmail(dot)com.
