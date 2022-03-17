---
layout: "post"
author: 
  - "acrepet"
title: "Romain Guy à Lyon!"
date: "2014-12-16"
categories: 
  - "les-conferences"
---

| Vendredi, le [Lyon JUG](http://www.lyonjug.org/) a l'immense plaisir, l'honneur et la joie incroyable d'accueillir [Romain Guy](https://twitter.com/romainguy). On en rêvait depuis longtemps, et bien voilà, c'est chose faite : Romain, lyonnais d'origine, va donc faire une halte au Lyon JUG pour nous parler de pleins de sujets intéressants, notamment de performances, d'Android, de sa vie aux USA, chez Google, etc. |

****[![romain](/assets/2014/12/2014-12-16-romain-guy-a-lyon/photo.jpg)](https://twitter.com/romainguy)****

Si vous ne connaissez pas Romain, vous avez pourtant probablement son travail dans la poche : il faisait en effet partie de l’équipe qui développa la première version d’Android et il est devenu le speaker de référence dans ce domaine. Romain c'est le genre de personne brillante, modeste et sympathique qui font partie des personnalités inspirantes pour les développeurs et développeuses que nous sommes. Pour notre première rencontre, il m'avait royalement accueilli, ainsi que [Cyril LACOTE](http://twitter.com/clacote), au siège de Google, à Mountain View, quand nous étions en vacances sur la côté Ouest des USA il y a 3 ans. Il s'était même prêté au jeu de l'interview dans un podcast, [Cast-IT](http://www.cast-it.fr/2012/01/cast-it-8-avec-romain-guy-sur-android.html), que nous faisions à l'époque.

****[![romain](/assets/2014/12/2014-12-16-romain-guy-a-lyon/P1020816.JPG)](http://www.cast-it.fr/2012/01/cast-it-8-avec-romain-guy-sur-android.html)****

Il ne vous dira jamais qu'il est n°1 dans le [classement des Human Coders](http://ranking.humancoders.com/rankings/developpeurs) des 50 développeurs francophones les plus populaires ou encore le premier présenté dans la [liste](http://www.economie.gouv.fr/rapport-tariq-krim-developpeurs-atout-pour-france) des developpeurs francais marquants du rapport de Tariq Krim remis à Fleur Pellerin en début d'année et ni même qu'il fait partie de la liste des [Java Champions](https://java.net/website/java-champions/bios.html). Ca non, il ne vous le dira jamais, voir même il va m'en vouloir d'en avoir parlé, puisque il reste, malgré son parcours rempli de succès, un des développeurs les plus humbles que je n'ai jamais rencontré. Merci à lui de se prêter à un nouvel interview, par écrit cette fois-ci. Epour celles et ceux qui sont de la région lyonnaise, prennez vite votre [place](http://www.lyonjug.org/evenements/romainguy) pour vendredi!

**La team du Lyon JUG : Hello Romain. Peux-tu te présenter ?**

**Romain** : Je m'appelle Romain Guy et je vis aux États-Unis depuis 2007, année de mon arrivée chez Google. J'ai travaillé avant cela comme traducteur pour les éditions O'Reilly, professeur de Java, journaliste pour divers magazines informatiques français (Login, Programmez!, PC Team en particulier), développeur Java indépendant, développeur sur le JDK chez Sun et j'ai publié un livre dédié à la programmation graphique en Java, [Filthy Rich Clients](http://filthyrichclients.org/), avec mon collègue et ami de longue date, [Chet Haase](https://twitter.com/chethaase). J'ai toujours été actif dans diverses communautés de développeurs mais c'est à Sun Microsystems que je dois ma première participation à des conférences comme orateur. Je me suis retrouvé devant une salle de 1000 personnes à devoir parler en Anglais alors que je venais tout juste d'arriver aux États-Unis. Tout semble beaucoup plus facile après une telle expérience. J'ai participé depuis à de nombreuses conférences autour de Java et Android. Je suis, par intérêt personnel et par expérience, spécialisé depuis très longtemps dans le graphisme et les interfaces utilisateurs mobiles et desktop. C'est d'ailleurs pour cela que je travaille, à mon grand dam, énormément en C et C++ depuis plusieurs années. Et puis je fais beaucoup de photo. Pas assez à mon goût malheureusement !

**La team du Lyon JUG : Tu es un Googler. Sur quels projets Google as-tu travaillé ?**

**Romain** : Je travaille depuis novembre 2013 sur un projet de robotique dont les détails n'ont pas été annoncés publiquement. Avant cela, j'ai travaillé sur Android depuis avril 2007, d'abord comme stagiaire puis comme employé à plein temps. J'ai rejoint l'équipe appelée "Android framework" qui s'occupe de toute la couche applicative du système. Mon rôle principal était de participer au développement du UI toolkit mais j'étais aussi en charge du launcher jusqu'à Android 3.0 et j'ai activement participé à de nombreux autres composants (différentes applications, interface utilisateur système, divers outils pour le SDK, etc.). J'ai fini par devenir le tech lead puis manager de l'équipe UI toolkit. Android 3.0, la première version pour tablettes, a marqué un changement assez important dans mes responsabilités et la nature de mon travail. J'ai passé cette release à écrire un nouveau pipeline de rendu graphique 2D qui utilise le GPU. Je me suis ainsi retrouvé dans des couches plus basses du système et 90% de l'implémentation a été faite en C++ pour tirer meilleur parti d'OpenGL ES. J'ai par la suite continué mon travail sur le UI toolkit et le framework, tout en développant et maintenant le pipeline de rendu. J'ai orienté une grande partie de mes efforts sur la performance dans ces trois domaines.

**La team du Lyon JUG : Qu'est-ce qui compte le plus pour toi quand tu bosses sur un projet : le niveau de technicité, le coté innovant, l'impact sur "le monde", etc. ?**

**Romain** : Il me faut au moins une des ces trois choses. Android a été mon premier emploi en sortant de l'école et je dois avouer qu'il est parfois difficile d'y comparer d'autres opportunités. Android était encore un petit projet secret lorsque j'ai rejoint Google et représente aujourd'hui 85% des parts mondiales de la téléphonie mobile, avec 1 milliard d'utilisateurs actifs sur 30 jours. Je me demande d'ailleurs si je n'ai finalement pas écrit le programme OpenGL le plus utilisé au monde… L'ubiquité naissante d'Android est un autre facteur qui rend d'autres projets moins séduisants: notre travail est aujourd'hui dans des ordinateurs, tablettes, montres, télévisions, boîtiers multimédia, voitures, panneaux publicitaires, etc. Quoi qu'il en soit j'ai besoin d'être passionné par mon travail. J'ai toujours éprouvé beaucoup du mal à me mettre au travail, alors si c'est pour quelque chose qui m'ennuie…

**La team du Lyon JUG : Frequentes-tu les communautés hors Google (JUG, autres user groups, ...) ?**

**Romain** : J'essaye autant que possible. Il m'arrive parfois d'intervenir dans des user groups locaux, ou de simplement aller discuter avec des développeurs. Je suis toujours fasciné par l'incroyable talent et la passion des gens que j'y rencontre. J'aimerais pouvoir passer plus de temps avec les communautés, pour mon enrichissement personnel mais aussi pour comprendre les problèmes que rencontrent les utilisateurs de nos technologies.

**La team du Lyon JUG : tu viens à Lyon sous peu et tu vas passer au Lyon JUG... De quoi vas-tu nous parler ?**

**Romain** : Nous avons rencontré un petit problème récent au bureau et la solution, très simple, m'a donné envie de parler de performance. C'est un sujet que j'ai souvent abordé dans des présentations mais l'approche va être cette-fois différente. J'aimerais aussi avoir une discussion ouverte pour parler avec les membres du JUG de plein de trucs : Android, Google, la Sillicon Valley, la photographie, etc.

**La team du Lyon JUG : Tu travailles, tu donnes des conférences, tu as des enfants, tu fais de la photo, tu lis beaucoup, et tu joues énormément, notamment en essayant tous les jeux Android. Est-ce que tu dors un peu ?**

**Romain** : Mon corps me dit pas assez, mon cerveau me dit trop. Il y a tellement de choses que j'aimerais faire ! J'ai des idées plein la tête. J'ai malheureusement un peu peur de devoir attendre longtemps avant de pouvoir les réaliser.

**Merci Romain!**

_Cet interview a été préparé par la team "élargie" du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/cedric_exbrayat), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler) et [Cyril LACOTE](http://twitter.com/clacote)_.__

**Les inscriptions pour la session de Romain au [Lyon JUG](http://www.lyonjug.org) le 19 décembre sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/romainguy) pour vous inscrire!**
