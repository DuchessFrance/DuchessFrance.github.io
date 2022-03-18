---
layout: "post"
author: 
  - "acrepet"
title: "Beaucoup Docker et un peu de Google Cloud Platform!"
date: "2014-10-06"
categories: 
  - "les-conferences"
tags: 
  - "code-week"
  - "docker"
---

| La semaine prochaine, [David Gageot](http://blog.javabien.net/) part en _tournée internationale_ Mesdames et Messieurs! Il va passer par Genève, accueilli par [Duchess Swizz](http://jduchess.ch/) le 13 octobre, puis par Lyon au [Lyon JUG](http://www.lyonjug.org/) le 14 et enfin à l'[Alpes JUG](http://www.alpesjug.org/) le 15! La session portera sur [Docker](https://www.docker.com/) dont on parle beaucoup en ce moment. David va tenter de vous expliquer comment fonctionne Docker comme il aurait aimé qu’on lui l’explique. Nous allons apprendre à prendre en main Docker pour construire une application web Java 8 et la déployer sur la Google Cloud Platform. Ces conférences ont lieu pendant la [Code Week](http://codeweek.eu/), une semaine dédiée au code en France et partout en Europe. Cette initiative de la commission européenne est destinée à faire découvrir la programmation lors d’événements locaux entre le 11 et le 17 octobre 2014. |

[![David Gageot](https://lh3.googleusercontent.com/-dpNJ7NFOpzs/AAAAAAAAAAI/AAAAAAAAAg8/zs4GxqiYnJ4/s250-c-k/photo.jpg?height=180&width=180)](http://blog.javabien.net/)

Pour vous donner tout de suite un avant-goût des soirées, allons poser quelques questions à David.

_Cet interview a été préparé par la team "élargie" du Lyon JUG, [Agnès CREPET](http://twitter.com/agnes_crepet), [Cédric EXBRAYAT](https://fr.twitter.com/cedric_exbrayat), [Alexis HASSLER](https://fr.twitter.com/AlexisHassler) et [Cyril LACOTE](http://twitter.com/clacote)_.__

**La team du Lyon JUG : Quel est ton usage principal de Docker ? Est-ce que tu l’utilises en production ?**

**David** : J'utilise Docker en production sur une webapp Java. Docker me permet de déployer à la fois l'application java et un frontal [nginx](http://nginx.org/)/[pagespeed](https://developers.google.com/speed/pagespeed/?hl=fr), dans deux conteneurs séparés mais liés.

**La team du Lyon JUG : Quelle peut être l’utilisation de docker en développement ? Est-ce que c’est pratique sur des systèmes autres que Linux ?**

**David** : Docker peut permettre de tester une application sur un environnement de dev en maitrisant à la fois l'environnement de build et l'environnement de run. Un simple fichier Dockerfile à la racine du projet suffit. Ce fichier décrit avec quoi et comment builder. Il décrit aussi la commande de run. Sous Linux, tout est super simple. Sous windows, c'est presque impossible à utiliser en l'état. Sous OSX, il faut installer une version spéciale de Boot2docker qui permet de partager son home directory sans trop de soucis. Avec le [Boot2docker](http://boot2docker.io/) standard, on ne peut pas aller très loin.

**La team du Lyon JUG : Est-ce qu’il y a des images prêtes à être utilisées que tu conseillerais aux développeurs ?**

**David** : Les deux images que j'utilise le plus sont google/debian:wheezy et dgageot/java8 La première est une debian packagée par google. Elle fonctionne très bien et est plus légère qu'une ubuntu. La deuxième est une image maison du jre8+tools.jar qui a le mérite d'être très petite car basée sur une busybox. Elle fait environ 200Mo alors que je jdk fait a lui seul 330Mo

**La team du Lyon JUG : Pourquoi tu trouves ça magique ? Quelles sont les principales limitations que tu rencontres avec la version actuelle ?**

**David** : Je peux cloner un project sur github, lancer docker build puis docker run et voilà ça fonctionne sans que j'ai à installer telle ou telle version de java, maven, gradle, ruby, python ou whatever. Ça c'est magique. On touche les limites lorsque l'on doit orchestrer plusieurs conteneurs et gérer des liens dynamiques entre eux. C'est possible mais ça reste difficile.

**La team du Lyon JUG : Docker s’intègre t’il bien avec d’autres outils de l’écosystème devops (Chef, Puppet, Ansible)?**

**David** : J'utilise [Ansible](http://www.ansible.com/home) pour configurer mes serveurs et déployer des conteneurs docker. Ca fonctionne très bien.

**La team du Lyon JUG : Docker est écrit en Go, as-tu par curiosité jeté un oeil à ce langage?**

**David** : Malheureusement non, je n'ai pas eu le temps.

**La team du Lyon JUG : Google a l’air vraiment impliqué dans le développement de Docker. L’utilise-t-il en interne ou est-ce leur intention ? Ou bien est-ce leur vision du cloud et de ce que doit offrir GCE ?**

**David** : Ils utilisent des conteneurs depuis des années et ont donc une énorme expérience. Par contre je ne pense pas qu'ils utilisent Docker en interne pour leurs propres applis. Pour leur offre cloud par contre, ils investissent énormément. Les Managed Vms de App Engine sont basées sur Docker. Docker est supporté sur Compute Engine au travers d'une image dédiée. [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) permet de gérer un cluster de machines Compute Engine et d'y déployer des conteneurs docker. Il y a un gros engouement autour de [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) car Google essaye d'y transposer sont savoir faire.

**La team du Lyon JUG : L’éco-système Docker grandit très vite, et c’est parfois difficile de s’y retrouver. Quels sont les outils que tu conseilles de suivre de près et qui peuvent avoir un intérêt même lorsque l’on ne manipule pas des centaines de containers par jour ?**

**David** :

- [Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) pour déployer des conteneurs sur le cloud. Encore en beta.
- [Fig](http://www.fig.sh/) pour démarrer plusieurs conteneurs liés entre eux. Simple et sans fioritures.
- [Boot2docker](http://boot2docker.io/) bien sûr avec la future commande boot2docker share pour améliorer le fonctionnement sous osx entre autres.
- [Libswarm](https://github.com/docker/libswarm), la future brique au dessus de Docker, par Docker Inc.

**La team du Lyon JUG : Tu ne nous écris plus un article par jour sur ton blog ? Tu arrêtes l’expérience ou tu es en pause ?**

**David** : Et oui, c'est vrai. Je passe trop de temps en tournée mondialement mondiale des JUGs. Début 2015, ça se calme et je m'y remets. Promis.

**Merci David!**

**Les inscriptions pour la session de David au [Lyon JUG](http://www.lyonjug.org) le 14 octobre sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/docker) pour vous inscrire! A noter que David va faire un petit tour, à l'[Alpes JUG](http://www.alpesjug.org/) le 15/10 et à Genève, accueilli par [Duchess Swizz](http://jduchess.ch/), le 13/10.**
