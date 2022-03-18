---
layout: "post"
author: 
  - "acrepet"
title: "Rencontre avec Mathilde Rigabert Lemée, speaker et entrepreneuse !"
date: "2015-11-10"
categories: 
  - "coup-de-coeur"
  - "les-portraits"
  - "speakeuses"
tags: 
  - "startup"
  - "test"
  - "tests"
coverImage: "e8cb08a3141a0ebf6b80ad7d037ed034_400x400.png"
---

| [Mathilde Rigabert Lemée](https://twitter.com/miralak), co-fondatrice et membre active de Duchess France, va proposer trois talks prochainement. Deux portent sur les tests : un premier intitulé "Testez votre application Spring-Boot avec Selenium" et un autre sur les tests exploratoires. Elle les donnera à [CodeMotion Madrid](http://2015.codemotion.es/agenda.html#5699289732874240/49524010) et [Codeurs en Seine](http://www.codeursenseine.com/2015/speakers.html#orateur-9). Elle animera égalemet un [Tools in Action à Devoxx Anvers sur Firebase](http://cfp.devoxx.be/2015/talk/HWN-2231/First%20steps%20with%20Firebase). |

Mathilde a d'autres cordes à son arc, elle lance notamment un projet de start-up : [SoFizz](http://www.sofizz.com/).

Bref, le genre de nanas inspirantes qu'on a envie de croiser et de présenter à toutes les jeunes filles qui hésitent encore à se lancer dans le métier de développeur ! J'avais donc très envie de l'interviewer pour lui poser quelques questions sur son parcours, ses projets actuels et en espérant qu'elle nous dévoile la recette de sa potion magique ;-)

 

[![Mathilde Rigabert Lemée](/assets/2015/11/2015-11-10-rencontre-mathilde-rigabert-lemee-speaker-entrepreneuse/e8cb08a3141a0ebf6b80ad7d037ed034.png)](https://pbs.twimg.com/profile_images/344513261568805168/e8cb08a3141a0ebf6b80ad7d037ed034.png)

 

_**Agnès : peux-tu te présenter en quelques phrases pour celles et ceux qui ne te connaissent pas déjà ?**_

**Mathilde :** Je suis ingénieur informatique, j’ai fait mes études sur la fac d’Orsay en région parisienne dans une école qui désormais s'appelle Polytech'Paris Sud (ex FIIFO ex IFIPS) . Après une toute petite expérience en SSII, je suis passée freelance. Je me suis particulièrement intéressée aux problèmatiques de qualité de code et j’ai crée un framework open-source qui permet d’aider à l’écriture de tests Selenium, Fluentlenium. J’ai aussi passé 2 ans chez Terracotta qui est la boite qui s'occupe également d'Ehcache. _**Agnès : tu vas donner plusieurs talks prochainement sur les tests exploratoires, Selenium et Spring Boot, et Firebase. Peux-tu présenter un peu le principe de l'approche "exploratoire" ? Comment en es-tu arrivée à mettre en pratique cette façon de tester ?**_

**Mathilde :** Les tests exploratoires, ce sont des tests qui permettent de découvrir des anomalies et d’augmenter la qualité du logiciel. Par exemple, ça va être de vérifier que toutes les fonctionnalités marchent bien entre elle (bugs cross-features) mais également de prendre un peu de recul et de vérifier que tous les standards sont respectés (exemple le plus fréquent : envoi d’un mot de passe en clair à l’utilisateur en cas d’oubli de mot de passe …).

Je me suis mise à l’exploration quand j’ai travaillé pour terracotta/ehcache. C’est un produit que l’on peut penser assez simple mais qui au final comporte énormément de fonctionnalité : on peut chercher dans le cache, gérer la reconnexion ou non des noeuds, les caches transactionnels et d’autres fonctionnalités avancées … Comme dans tout domaine, l’ajout d’une nouvelle fonctionnalité présente un risque de régressions et les tests exploratoires permettent de garantir une meilleure qualité du logiciel, de manière conjointe aux tests automatisés. _**Agnès : tu es une des rares filles dev actives sur des projets open source. Déjà que l'on n'est pas nombreuses dans les domaines techniques de l'IT, on l'est encore moins dans le monde du dev open source... T'as tenté des trucs ou t'as des idées pour attirer + de filles dans ce monde fabuleux de l'Open source ?**_

**Mathilde :** Effectivement, je ne connais pas beaucoup d’autres filles dans ce secteur. J’ai tenté des choses, notamment via les Hackergarten, un endroit où l’on regroupe commiters et gens motivés, que l’on a organisé avec [Brice Dutheil](https://twitter.com/bricedutheil). Sans grand succès, j’ai souvent été la seule fille, même en relayant l’info via les duchess. Pourtant, on a besoin de coup de main sur la plupart des projets open-source et les débutants sont toujours guidés au début. _**Agnès : tu t'es lancée récemment dans le projet [SoFizz](http://www.sofizz.com) ? Tu peux présenter le projet ? T'es first timer ou as-tu déjà lancé un projet de start-up avant ? Comment t'as trouvé l'idée? Un matin tu t'es dit "OMG, ça y est j'ai trouvé, go go go" ?**_

**Mathilde :** SoFizz c’est la première application destinée aux femmes qui veulent partager leurs activités. J’avais déjà lancé quelque chose en ‘side project’, Aetys, avec lesquels j’ai fait des jeux ludo-éducatifs et qui m’a permis de montée en compétences sur l’aspect mobile. Pour SoFizz c’est un peu différent vu que c’est vraiment ce que je fais 18h sur 24h ;) L’idée est venue d’un matin où j’ai cherché quelqu’un pour aller au musée et l’expo en question n’intéressait aucun de mes amis. Je me suis rendue compte qu’on avait tous quelques centres d’intérêts qu’on ne partageait pas avec nos amis. Je me suis associée avec Maxime qui sortait d’un cursus marketing. On a retravaillé sur le besoin, peaufiné et améliorer le produit. Et hop, SoFizz est né. Au niveau de la stack, Ionic (cordova - angularJS), ElasticSearch, Neo4J, Firebase + des micro-services Node.js (avec une pointe de java) et au niveau de l'architecture, on utilise le pattern CQRS. _**Agnès : Parlons thune... Comment tu finances ce projet ? Perso pur ? Tu fais de la presta à côté ? Tu démarches pour avoir des aides ??**_

**Mathilde :** Au niveau finance, pour l’instant, essentiellement du perso pur. Je fais toujours quelques formations sur selenium, sur les tests exploratoires et sur le cache mais c’est pas plus d’un ou 2 jours par mois. On est en pré-incubation dans un incubateur parisien (Paris Pionnières), ce qui nous permet d’avoir des mentors et des advisors (notamment sur les aspects juridiques et financiers). On essaie d’avoir la subvention Paris Innovation Amorçage, ce qui nous apportera 30 000 euros. On participe aussi à un concours #WonderWomen qui nous permettrai d’avoir 5 000 euros et pour lequel on a besoin que les gens nous soutiennent en votant pour nous (et on peut voter tous les jours ;) Pour l’instant on est deuxième mais avec un petit coup de pouce, on pourrait être premiers) : [http://www.wonderwomen.paris/video/567/sofizz#video](http://www.wonderwomen.paris/video/567/sofizz#video)

L’application est et restera 100% gratuite donc on sera sur un modèle de partenariat avec des grandes marques.

Comme on n'aura pas de revenu avant le dernier semestre de 2016, on cherche à lever des fonds, on a déjà quelques contacts mais c’est un long chemin … Autrement niveau perso, ben c’est des sacrifices, pas de vacances, les dépenses limitées à l'alimentaire et pas mal de système D (Airbnb …)

 

_**Agnès : Concernant toujours SoFizz, ça doit être super palpitant de se lancer dans ce genre de projet... Mais y a t'il une face cachée ? Genre es-tu en mode déclinaison unique SoFizz 24/24 ? ;-)**_

**Mathilde :** Oui c’est palpitant. En revanche, c’est de loin le projet pro le plus prenant que j’ai eu et je n’ai jamais compté mes heures … A la différence de plein d’autres projets, ça demande d’avoir à la fois le nez dans le produit mais aussi dans tout le reste. Les aspects financiers, comptable, RH, légaux … Mais on est content, on a pas mal de feedback très positif des personnes à qui l’on présente le projet, on vient d’entrer en phase de beta-test donc si il y a des intéressées pour tester le projet en avant première => [http://www.sofizz.fr](http://www.sofizz.fr) . Et même si c’est à destination des femmes, les hommes pourront s’inscrire sur invitation et la beta est ouverte à tous. _**Agnès : Tu as fait partie des filles qui ont lancé Duchess FR, que penses-tu de ce réseau 5 ans plus tard ?**_

**Mathilde :** Honnêtement, je suis épatée. On est parti d’un petit truc et finalement, on va bientôt atteindre nos 1000 membres sur meetup. Nos évènements sont toujours pleins, on a réussi à construire une vrai communauté, on voit des gens qui s’en servent comme d’un tremplin pour avoir un nouveau job. En plus, on a de plus en plus de speakeuses qui se lancent, ce qui était un des axes qui me tenait à coeur. Au niveau de l’orga, on a une bonne équipe, chacune amène ses compétences et ses idées et on arrive toujours à se faire plaisir et à se renouveler : on a pas mal de projet en ce moment, notamment le marrainage ou les coding dojos, qui commenceront au début du mois prochain. **Merci Mathilde !**
