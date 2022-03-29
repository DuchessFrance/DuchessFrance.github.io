---
layout: "post"
author: 
  - "Blandine"
title: "Hibernate un ami qui vous veut du bien ?"
date: "2010-06-26"
categories: 
  - "developper"
tags: 
  - "hibernate"
  - "performance"
---

| Cet article est un retour d’expérience sur la mise en place d’une pagination dans un écran de recherche contenant un filtre composé de deux listes déroulantes. Hibernate fonctionne avec la majorité des SGBD. Toutefois, ceux-ci n’offrent pas tous les mêmes fonctionnalités. Le SQL natif généré par Hibernate sera différent selon les SGBD. Nous verrons en quoi cela peut poser problème. |

Ce cas s’appuie sur une application utilisant Hibernate et Sybase ASE 12.5. L’écran à développer, en plus de la pagination, possède un filtre facultatif. La clause where étant dynamique, je décide d’utiliser les `Criteria` pour écrire ma requête.  Il y a dans le manuel Hibernate une section dédiée à la pagination. Elle vous conseille d’utiliser les méthodes `setFirstResult` et `setMaxResults` de l’interface `Query` en précisant qu’Hibernate sait comment traduire ceci en SQL natif adapté à votre SGBD.

J’implémente ma dao et je filtre le résultat renvoyé :

\[\[code\]\]czoyODI6XCJDcml0ZXJpYSBjcml0ID0gc2Vzc2lvbi5jcmVhdGVDcml0ZXJpYShGbHV4LjxzdHJvbmc+PHNwYW4gc3R5bGU9XFxcImNvbHtbJiomXX1vcjogIzgwMDA4MFxcXCI+Y2xhc3M8L3NwYW4+PC9zdHJvbmc+KTsKPHNwYW4gc3R5bGU9XFxcImNvbG9yOiAjMDA4MDAwXFxcIj4vL2Fqb3V0e1smKiZdfSBkZXMgcmVzdHJpY3Rpb25zIOKAkyBmaWx0cmUgdXRpbGlzYXRldXI8L3NwYW4+Ckxpc3QgcmVzdWx0ID0gY3JpdC5zZXRGaXJzdFJ7WyYqJl19ZXN1bHQoZmlyc3RSZXN1bHQpCiAgICAgICAgICAgIC5zZXRNYXhSZXN1bHRzKG5iUm93cykubGlzdCgpO1wiO3tbJiomXX0=\[\[/code\]\]

J’écris mon test unitaire, je réalise quelques tests sur ma base de données de test, je « commit ». Voilà, c’est fini !

Quelque temps plus tard, le chef de projet souhaite faire des tests en pré-qualification sur un nombre de lignes conséquent (il est vrai que tester la pagination quand il n’y a qu’une seule page ce n’est pas très drôle). La pagination fonctionne sur les premières pages, mais impossible d’afficher la dernière page sans faire tomber l’application. Le message d’erreur suivant est très explicite :

<10 juin 2010 15 h 20 CEST> <Critical> <Health> <BEA-310003>
<Free memory in the server is 4 122 880 bytes. There is danger of OutOfMemoryError>
\[\[code\]\]czoyODI6XCI8c3BhbiBzdHlsZT1cXFwiY29sb3I6ICNmZjAwMDBcXFwiPkV4Y2VwdGlvbiBpbiB0aHJlYWQgXFxcIltBQ1RJVkVdIEV4ZWN1dGV7WyYqJl19VGhyZWFkOiBcXFwnMThcXFwnIGZvciBxdWV1ZTogXFxcJ3dlYmxvZ2ljLmtlcm5lbC4KRGVmYXVsdCAoc2VsZi10dW5pbmcpXFxcJ1xcXCIgamF2YS57WyYqJl19bGFuZy5PdXRPZk1lbW9yeUVycm9yOiBKYXZhIGhlYXAgc3BhY2UKCi4uLgpUaGUgZXhjZXB0aW9uIG1lc3NhZ2UgaXMgLSBKYXZhIHtbJiomXX1oZWFwIHNwYWNlCmphdmEubGFuZy5PdXRPZk1lbW9yeUVycm9yOiBKYXZhIGhlYXAgc3BhY2U8L3NwYW4+XCI7e1smKiZdfQ==\[\[/code\]\]

En regardant le code SQL généré par Hibernate, on remarque qu’il n’y a pas de filtre pour la pagination. Malheureusement, Sybase possède moins de fonctionnalités que d’autres SGBD et ne connaît pas les mots clef « LIMIT » ou « ROWID » et de ce fait, le `setFirstResult` et `setMaxResults` ne sont pas traduits en SQL natif. Hibernate est donc obligé de tout récupérer dans sa requête et de faire le filtre de pagination côté java. Il charge les objets en mémoire tant qu’il n’a pas les résultats souhaités pour la page demandée. Cela ne pose pas de problème pour les premières pages, mais lorsqu’on veut atteindre la dernière page, la consommation mémoire explose.

![Utilisation de la mémoire - schéma de JConsole](/assets/2010/06/2010-06-26-hibernate-un-ami-qui-vous-veut-du-bien/img1.JPG)

Figure 1 – Utilisation de la mémoire – schéma de JConsole

Ainsi, nous ne pouvons pas utiliser l’interface `Query` dans ce cas. Cette version de Sybase ne supporte pas non plus les sous requêtes ordonnées. La seule solution que nous avons trouvée est de faire la  requête en deux temps : d’abord sur les identifiants, puis récupérer les données  à partir de ceux-ci.

Cette solution peut s’implémenter de deux façons :

- Solution 1 : récupérer la liste des identifiants filtrées par Hibernate (même code qu’au début, mais en ne retournant que les identifiants) ;
- Solution 2 : obtenir la liste de tous les identifiants, puis la filtrer en utilisant la méthode `subList` de l’interface `List`.

Nous avons testé les deux solutions. En observant l’utilisation de la mémoire, la solution 2 semble plus performante.

![img2-solution1](/assets/2010/06/2010-06-26-hibernate-un-ami-qui-vous-veut-du-bien/img2-solution1-300x207.jpg "img2-solution1")

Figure 2 – utilisation de la mémoire pour la solution 1

![Utilisation de la mémoire pour la solution 2](/assets/2010/06/2010-06-26-hibernate-un-ami-qui-vous-veut-du-bien/img3-solution2.JPG)

Figure 3 – utilisation de la mémoire pour la solution 2

Pour finir, on a une première requête écrite avec les `Criteria` qui permet de récupérer tous les identifiants en fonction des filtres de l’utilisateur. Puis, on crée une sous-liste pour ne garder que les id correspondant à la page demandée. On fait une dernière requête en `HQL` pour récupérer les objets.

\[\[code\]\]czo3ODI6XCJDcml0ZXJpYSBjcml0ID0gc2Vzc2lvbi5jcmVhdGVDcml0ZXJpYShGbHV4LjxzcGFuIHN0eWxlPVxcXCJjb2xvcjogIzgwMHtbJiomXX0wODBcXFwiPjxzdHJvbmc+Y2xhc3M8L3N0cm9uZz48L3NwYW4+KTsKPHNwYW4gc3R5bGU9XFxcImNvbG9yOiAjMDA4MDAwXFxcIj4vL2Fqb3V0e1smKiZdfSBkZXMgcmVzdHJpY3Rpb25zIOKAkyBmaWx0cmUgdXRpbGlzYXRldXI8L3NwYW4+CgpMaXN0IGxzSWQgPSBjcml0LnNldFByb2plY3R7WyYqJl19aW9uKAogICAgICAgICAgIFByb2plY3Rpb25zLnByb3BlcnR5KDxzcGFuIHN0eWxlPVxcXCJjb2xvcjogIzAwMDBmZlxcXCI+XFxcImlkXFxcIjwve1smKiZdfXNwYW4+KSkubGlzdCgpIDsKCkxpc3QgcmVzdWx0ID0gbnVsbDsKCmlmICggbHNJZCAhPSBudWxsICZhbXA7YW1wOyZhbXA7YW1wOyB7WyYqJl19IGxzSWQuc2l6ZSgpJmFtcDtndDswKSB7Cgk8c3BhbiBzdHlsZT1cXFwiY29sb3I6ICMwMDgwMDBcXFwiPi8vc2kgbGEgbGlzdGUgZFxcXCdpZHtbJiomXX0gZXN0IHZpZGUsIGxhIHJlcXXDqnRlIGhxbCBwbGFudGU8L3NwYW4+CglRdWVyeSBxID0gZ2V0U2Vzc2lvbkZhY3RvcnkoKS5nZXRDe1smKiZdfXVycmVudFNlc3Npb24oKS5nZXROYW1lZFF1ZXJ5KAogICAgICAJCTxzcGFuIHN0eWxlPVxcXCJjb2xvcjogIzAwMDBmZlxcXCI+XFxcImdldEx7WyYqJl19aXN0Rmx1eEJ5SWRzXFxcIjwvc3Bhbj4pLnNldFBhcmFtZXRlckxpc3QoCgkgICAgICA8c3BhbiBzdHlsZT1cXFwiY29sb3I6ICMwMDAwZmZ7WyYqJl19XFxcIj5cXFwiaWRMaXN0XFxcIjwvc3Bhbj4sCgkgICAgICBsc0lkLnN1Ykxpc3QoZmlyc3RSZXN1bHQsCgkgICAgICBsYXN0UmVzdWx0KSk7CntbJiomXX0KCXJlc3VsdCA9IChMaXN0KSBxLmxpc3QoKTsKfVwiO3tbJiomXX0=\[\[/code\]\]

#### A retenir :

Hibernate est votre ami, mais il ne peut pas être plus fort que votre SGBD. Il est donc utile de vérifier le code SQL natif qu’il génère.

Concernant Syabse ASE 12.5, on espère que les versions futures supporteront les fonctions liées à la pagination.

_Je remercie David, Ellène et Victor pour la relecture et les conseils sur WordPress._
