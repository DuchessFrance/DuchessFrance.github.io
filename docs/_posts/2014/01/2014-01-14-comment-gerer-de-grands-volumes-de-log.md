---
layout: "post"
author: 
  - "acrepet"
title: "Comment gérer de grands volumes de Log?"
date: "2014-01-14"
---

| La semaine prochaine, [Vladislav Pernin](https://twitter.com/vladislavpernin) de [Zenika](http://www.zenika.com) est invité par le [Lyon JUG](http://www.lyonjug.org/evenements/log) pour une session sur la gestion des gros volumes de logs. Tiens donc! Voilà une problématique intéressante et récurrente... |

![](/assets/2014/01/2014-01-14-comment-gerer-de-grands-volumes-de-log/photo.jpg)

_Cet interview a été préparé conjointement par : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE et](http://twitter.com/clacote) [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat)_![](/assets/2014/01/2014-01-14-comment-gerer-de-grands-volumes-de-log/trans.gif "More...")

**JUG Team : Peux-tu te présenter?**

**Vlad**: Je suis un architecte de terrain, passionné depuis plus de neuf ans par l'écosystème Java. Je m'intéresse tout particulièrement aux domaines de l'intégration et du déploiement continu, aux problématiques de performances, de monitoring et de tuning avancé sur la stack Java complète et enfin au traitement de grands volumes de données.

**JUG Team : Tu vas nous parler d'une problématique devops sur les logs. Quelles sont les problématiques qu’on doit gérer avec de gros volumes de logs?**

**Vlad**: Sans être un grand fan des acronymes divers utilisés dans notre métier tel que DevOps, la première question à se poser est pourquoi centraliser ses logs. Il y a plein de raisons. Celles qui nous ont poussés à le faire chez ERDF sont les suivantes : trop d'environnements et de serveurs, pas d'accès aux machines facilement ou voire pas du tout, beaucoup d'applications, trop de fichiers de logs, temps de diagnostic d'un problème trop long, pas de visibilité sur l'activité et les performances, ... Pour tirer toute la valeur de ces logs, il ne faut pas hésiter à centraliser vraiment tous les logs, y compris avec un log level à INFO. Ce n'est que comme cela que l'on peut tirer de la valeur de ces lignes de texte, et parvenir, par exemple à corréler tous les événements relatifs à une action utilisateur à travers un SI complet jusqu'à la requête en base.

Cela nous amène donc selon les applications et leurs utilisations, à centraliser des volumes de logs importants. Les problématiques sont relativement simples : absorber des throughput importants, pression sur le réseau, le CPU des machines hôtes, la mémoire, pas trop d'overhead sur les applications métiers, stockage et latence nécessaire.

**JUG Team : A partir de combien doit-on considérer que l’on a de gros volumes de logs.**

**Vlad**: Si on met son log level à TRACE ou DEBUG, on obtient très vite un volume faramineux de logs. C'est plus la valeur et l'exploitabilité de ces logs qui sont importants. On peut adapter le volume de logs centralisés et conservés ainsi que l'architecture que l'on met en face selon ses besoins et son budget.

**JUG Team : Sur quelle stack technique s'appuient les solutions que tu proposes?**

**Vlad**: Dans ce contexte client précis, la stack, en production depuis deux ans est principalement basée sur Logstash, Spring AMQP, RabbitMQ et elasticsearch.

C'est une stack qui n'était pas encore très utilisée il y a deux ou trois ans mais qui le devient depuis.

**JUG Team : Cela vaut-il le coup de mettre en place ce type de solutions pour toute gestion de log applicative?**

**Vlad**: C'est une très bonne question. Peut être pourrait on reformuler la question : "à partir de quelle taille de projet/serveur/... est ce que le coût de mise en place devient intéressant par rapport aux gains ?" En outre, il y a tout un éventail de possibilités, entre la solution en cluster, hautement disponible, sans perte de logs, analysant en détail tous les logs et une solution plus simple mais avec moins de fonctionnalité. Ces solutions deviennent de plus en plus simple à utiliser, y compris en production. On serait donc tenté de mettre en place de la centralisation de logs même sur des petits projets. Toutefois, comme tout en informatique, tout vient avec un coût, il faut le prendre en compte.

**JUG Team : Quel est intérêt de conserver un gros volume de logs ? Quelle(s) valeur(s), technique ou métier, peut-on en retirer ?**

**Vlad**: Parmi les intérêts principaux, je vois la recherche de reproductibilité d'anomalies entre plusieurs environnements et sur plusieurs mois, la possibilité de vérifier depuis quand un problème se produit et de le corréler à une montée de version précise, la possibilité de pouvoir analyser plusieurs tirs de performances et de les comparer entre eux, pouvoir vérifier si une fonctionnalité priorisée est vraiment utilisée ... La liste est longue.

**JUG Team : A quelles autres problématiques devops t'intéresses-tu en ce moment ?**

**Vlad**: Je m'intéresse et ai mis en place une chaîne de déploiement automatisée jusqu'à la production, et ce en absorbant la complexité et les normes de sécurité d'un grand groupe. Dans le cadre du projet sur lequel j'interviens actuellement, je m'intéresse également de près aux métriques systèmes et au monitoring des serveurs, indispensables à la bonne compréhension et à la bonne marche des solutions utilisées.

### **Merci Vlad!**

 

**Les inscriptions pour la session de Vlad sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/log)!**
