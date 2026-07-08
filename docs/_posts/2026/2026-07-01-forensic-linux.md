---
layout: "post"
title: "Atelier Forensique Linux : enquêtez dans la mémoire de votre machine"
date: "2026-07-01"
categories:
  - "event"
  - "les-ateliers"
author:
  - "anne-flore"
---

|![Atelier Forensique Linux](/assets/2026/atelier-forensique.png){: width="400"} | Atelier Forensique Linux |

Le 1er juillet 2026 s'est tenu un atelier animé par [Sonia Seddiki](https://www.linkedin.com/in/soniaseddiki/), qui nous a donné l'envie d'explorer les recoins de la mémoire à l'infini !

### Le décor de l'enquête 

C'était chez **Arolla**, à Paris, qu'on s'est réunies ce soir-là, entre femmes développeuses, pour mener l'enquête durant deux heures.

Les environnements étaient prêts grâce à [Aurélie Vache](https://www.linkedin.com/in/aurelievache/) et **OVH Cloud**. On était impatientes !

### Sur la piste du coupable ...

On a commencé par quelques rappels sur les basiques de la gestion de la mémoire : le *kernel space* (`0xffff...`) face au *user space* (`0x0000...`).

Après quelques tests, on a découvert les procédés du coupable des fichiers cachés : **Diamorphine**. Il avait modifié les adresses des pointeurs de *syscalls* pour se dissimuler.

![Le fichier caché](/assets/2026/ordi.png){: width="400"}

La tête dans nos écrans, on peut dire qu'on est reparties la tête bien pleine.

### Merci

Encore merci à [Arolla](https://www.arolla.fr/) pour leur accueil et leur soutien !


**L'équipe Core Team**
