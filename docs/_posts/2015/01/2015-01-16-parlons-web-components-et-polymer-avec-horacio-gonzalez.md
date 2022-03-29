---
layout: "post"
author: 
  - "acrepet"
title: "Parlons Web Components et Polymer avec Horacio Gonzalez"
date: "2015-01-16"
categories: 
  - "les-conferences"
---

| [Horacio Gonzalez](https://twitter.com/lostinbrittany) va venir mardi 20 janvier au Lyon JUG pour faire un talk sur les [Web Components](http://www.w3.org/standards/techs/components#w3c_all) et [Polymer](https://www.polymer-project.org/). Des concepts comme l'encapsulation, la réutilisation de composants, le data-binding ou le templating sont maintenant monnaie courante dans la plupart de frameworks web… mais chacun le fait à sa façon ! Et c’est là que les Web Components débarquent. Un nouveau standard en cours d’élaboration au W3C, qui va permettre d’avoir une approche par composants au développement web. |

****[![Horacio](http://www.lyonjug.org/_/rsrc/1418813893286/speakers/2015/photo_horacio_-_detouree_-_2012-02-08.jpg?height=150&width=150)](https://twitter.com/lostinbrittany)****

Dans cette présentation Horacio parlera de ce standard en construction et des implémentations actuelles, du projet Polymer de Google, des X-Tags de Mozilla et de comment, avec AngularJS, on peut déjà avoir un bon aperçu de ce que nous attend. Bref, une présentation qui fait envie, et en attendant, Horacio nous fait le plaisir de répondre à quelques questions...

**La team du Lyon JUG : Peux-tu te présenter ?**

**Horacio** : Je suis Horacio Gonzalez, j'ai 38 ans, et comme mon "léger" accent laisse souvent entendre, je suis espagnol. Je suis arrivé en France il y a une quinzaine d'années pour faire une année Erasmus à Nantes. A la suite de cette année on m'a proposé de faire une thèse à Telecom Bretagne, à Brest, et j'ai foncé, même si je savais à peine où se trouvait Brest. A la fin de ma thèse j'étais attaché à cette pointe de la Bretagne au charme si particulier, et j'ai voulu rester. J'ai passé quelque temps en SSII, et je suis rentré au Crédit Mutuel de Bretagne en tant qu'architecte technique. En 2013 j'ai quitté le CMB pour suivre un collègue qui créait sa boîte, [Cityzen Data](http://www.cityzendata.com/), une startup dans la collecte, stockage et traitement de données de capteurs et objets connectés et depuis je m'éclate à bosser sur ce projet, sur des sujets passionnants, à la pointe de la technologie et avec des collègues excellents. Bref, un pur plaisir !

**La team du Lyon JUG : Lors de la session du JUG, tu vas nous parler de WebComponents et de Polymer. Peux-tu nous expliquer brièvement ce que c’est, et ce que représente Polymer par rapport aux WebComponents ?**

**Horacio** : Les WebComponents sont un standard W3C en cours d'élaboration, dans quelques années les navigateurs implémenteront le standard de façon native. Mais qui dit standard W3C dit des discussions interminables, et il est peut probable que ça soit prêt avant 2017 (si on a de la chance). Et pourtant les WebComponents apportent une nouvelle dimension au développement web, une architecture en composants, avec son encapsulation, sa réutilisation, ses bibliothèques de composants. C'est bien dommage de s'en priver.

C'est là que Polymer entre en jeu. Polymer a deux facettes : d'un côté un ensemble de 'polyfills' qui mettent au niveau les navigateurs actuels par rapport à ce standard en construction, permettant aux développeurs d'utiliser dès aujourd'hui des WebComponents dans son projet; de l'autre une bibliothèque de composants prêts à l'emploi assez complète, qui va des widgets élémentaires à des briques applicatives complètes.

Avec Polymer on peut donc incorporer des WebComponents dans nos applications web actuelles, et en plus utiliser une bibliothèque de composants assez complète pour gagner de temps. Si on ajoute à ça des bibliothèques tierces de plus en plus nombreuses, ainsi qu'une compatibilité sans faille avec des WebComponents utilisant d'autres technologies (comme les Bricks de Mozilla), on voit bien l'intérêt de l'approche.

**La team du Lyon JUG : Ces technologies sont jeunes. Sont-elles stables, utilisables dans des vrais projets, en 2015 ?**

**Horacio** : La réponse courte est oui, nous les utilisons en production depuis une année sans le moindre souci. En fait, l'application web qui accompagnait notre démo au CES 2015 était intégralement composée de WebComponents en Polymer. La réponse longue n'est pas très différente. Il y a des contre-indications, par exemple si le support des navigateurs obsolètes est très importante (Polymer, comme beaucoup de frameworks et technologies récentes, ne garantit un bon fonctionnement que sur des navigateurs 'evergreen'), ou si des normes exigent une technologie qui ne bougera pas en quelques années. Mais dans la plupart de cas, pour un projet dans lequel on peut se permettre d'utiliser par exemple AngularJS, on pourrait se permettre d'utiliser Polymer.

En plus, on n'est pas obligé de tout basculer sur Polymer. La beauté de l'approche en composants vient aussi de là, on peut incorporer quelques composants là où ça a du sens, au sein d'autres applications, sans devoir faire une bascule technologique ou courir des risques majeurs. Ce n'est pas tout ou rien, ce n'est pas une technologie de remplacement mais de complément d'autres technologies.

**La team du Lyon JUG : Est-on obligé d’utiliser Polymer pour faire des WebComponents ? Quelles sont les alternatives ?**

**Horacio** : Non, pas de tout. Il y a d'autres technologies semblables, visant à adapter les navigateurs au standard, par exemple x-tag de Mozilla. Mais la beauté de l'approche vient du fait que ces différentes technologies sont compatibles, nous permettant en tant que développeurs d'utiliser des WebComponents faites avec les différentes technologies et les mélanger à souhait dans nos applications : des composants Polymers, des Bricks de Mozilla, des composants riches Google, des bibliothèques tierces, des composants personnalisés...

**La team du Lyon JUG : Est-ce que les WebComponents sont adaptés à tous types de projets ou ont-ils des domaines de prédilection ?**

**Horacio** : En général, dès qu'on a des IHM complexes à construire on voit l'intérêt d'utiliser une architecture en composants. Après la question à se poser peut être de faire le projet avec un modèle en composants pur avec des WebComponents, où d'utiliser plutôt un framework qui incorpore des notions de composants comme Angular. Et là le choix est plus une question d'habitude, de compétence et, au moins pour moi, de type et surtout d’envergure de projet.

Aujourd'hui si j'ai à faire une 'one-page app' complexe, avec plein d’interactions et une navigation compliquée, je choisis AngularJS sans hésiter. Si j'ai besoin de faire une petite application, ou mieux encore, des widgets que je peux incorporer là où je veux et mélanger comme je veux, j'utilise Polymer. Sans oublier un troisième cas, l'application 'one-page' complexe dans laquelle il y a des widgets assez indépendants. Dans ce cas, ce que je fais souvent est de faire ces widgets en Polymer et de les incorporer en tant que WebComponents dans l'application Angular. Du coup, j'ai le meilleur des deux mondes.

**La team du Lyon JUG : Comment tu positionnerais les WebComponents et Polymer par rapport à d’autres outils ou frameworks Web, comme AngularJS, BackboneJS,... ?**

**Horacio** : C'est très tentant de les voir comme concurrents, surtout quand on découvre Polymer. Mais avec du recul je les trouve de plus en plus complémentaires. Prenons le cas d'AngularJS. Angular a déjà un concept bien semblable aux WebComponents, les directives. Si on veut partager des composants, on partage les directives, on les incorpore dans son projet, et ça marche très bien. Mais si ton composant est fait avec Angular, tu ne vas pas pouvoir l'utiliser facilement au sein d'une application faite avec une autre technologie (BackboneJS par exemple).

Les composants Polymer eux sont plus simples à écrire que des directives Angular, et complètement indépendants, ils n'ont pas besoin d'être incorporés dans une application comme les directives Angular. Je peux les utiliser seuls, je peux les incorporer dans des applications faites dans d'autres technologies, je peux les combiner pour faire des widgets de plus haut niveau. A ce niveau, ça va bien plus loin qu'AngularJS, j'ai une vraie architecture en composants pour mes IHM web, quelque chose qui manquait cruellement.

**La team du Lyon JUG : Tu es très actif dans les communautés, tu as cofondé le FinistJUG et le GDG Finistère notamment.. As-tu d'autres activités de l'ombre ([BreizhBeans](http://breizhbeans.org/)?)?**

**Horacio** : Un des mes problèmes c'est que j'ai des projets plein la tête et trop peu de temps pour les transformer tous... En général, je m'intéresse surtout à tout ce qui puisse permettre d'agiter l'écosystème technique local, faire que les développeurs et les 'techos' en général se rencontrent, discutent, créent des projets, aillent vers l'avant. Surtout à Brest, où on est "loin de tout". Cette idée là est importante : de créer des communautés et relier les développeurs.

Le JUG et le GDG me permettent déjà de mettre en place toute une série de projets : des conférences, des bootcamps, des ateliers. Mais chacune des deux structures est orientée vers un type de cible : les technos Java au sens très large pour le JUG, les technos Google pour le GDG. Alors, avec mon collègue [Sébastien Lambour](http://twitter.com/FinistSeb) on a voulu les complémenter avec [BreizhBeans](http://breizhbeans.org/), une association indépendante et agnostique du point de vue de la technologie, pour créer ou aider à créer des événements différents, des 'brown-bag lunchs' à des 'code dojos', de projets plus maker à des séances de formation en passant par des projets open-source, le tout en collaboration avec des éventuelles structures existantes comme des FabLabs, la Cantine ou d'autres. Par exemple, l'un de nos projets actuels est de préparer des punching-balls connectés (avec leaderboard, prise automatique de photos et tweet derrière) pour le Startup Weekend de Brest, un projet combinant Arduino, Raspberry-Pi et Java... L'idée derrière [BreizhBeans](http://breizhbeans.org/) est donc avoir une structure associative pour faciliter le côté logistique de l'organisation d'activités, toujours avec la même idée derrière d'animer l'écosystème de la pointe de la Bretagne (et au delà ! :-) ) . Et ça prend forme petit à petit...

**Merci Horacio!**

_Cet interview a été préparé par la team "élargie" du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/cedric_exbrayat), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler) et [Cyril LACOTE](http://twitter.com/clacote)_.__

**Les inscriptions pour la session d'Horacio au [Lyon JUG](http://www.lyonjug.org) le 20 janvier sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/webcomponents) pour vous inscrire!**
