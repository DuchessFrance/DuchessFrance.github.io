# Contribuer au blog Duchess

## Trying the blog

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/DuchessFrance/DuchessFrance.github.io.git)

Open in GitPod and then, on the terminal, follow the link by doing `ctrl + click` on `http://localhost:4000`

## Ecrire un post dans le blog

### Pre-requis
- Installer `git`
- (Optionel mais recommandé sur un post avec des médias) Installer jekyll en suivant la doc officielle https://jekyllrb.com/docs/pages/

### Pour proposer un nouveau post

| Remarque:  La Core Team Duchess est responsable de la ligne éditoriale, il est préférable de contacter une des membres de la Core Team, soit sur Slack, soit sur twitter, soit par e-mail afin de partager le thème du post que vous souhaitez rédiger.   |
|-----------------------------------------|

#### Cloner un fork du depôt de source git en local

- Faire un fork du repo (via le bouton "fork" en haut à droite)
- Cloner le fork sur votre PC (vous pouvez copier/coller la ligne de commande donnée par github sur le bouton "Code")
- créer une branche avec un nom (changez "mabranche"):
```
git checkout -b mabranche
```

#### Préparer les fichiers nécessaires

Les répertoires interessants dans l'arborescence sont:
```
- docs: base du site
--_post: répertoire contenant le texte des posts
--assets: répertoire contenant les images
```

1. créer nouveau fichier markdown dans le dossier `docs/_posts` avec un nom qui commence par la date approximative de publication du post au format YYYY-MM-dd. Vous pouvez vous inspirer des posts existants dans le même dossier.

2. Compléter la partie "meta" dans le fichier markdown en en-tête:

```
---
layout: post
title:  "Féminiser son équipe de développement"
date:   2021-05-12
categories: feminisme
author: Angélique Jard
---
```
- layout: ne peut être que "post"
- title: Votre titre de post
- date: la même que celle dans le nom de fichier
- categories: (facultatif) vous pouvez en utiliser une existante ou en créer une nouvelle
- author: votre nom et prénom

3. Rédigez votre contenu au format markdown. Il est conseillé pour faciliter la revue de passer à la ligne en fin de phrase (ça ne change pas le rendu et ça permet d'avoir des suggestions sur un texte plus court).

4. Si vous avez des images à ajouter, créer un répertoire du même nom que le fichier markdown dans `/docs/assets/`, vous pouvez ensuite les utiliser avec

```
![Texte descriptif](/assets/YYYY-MM-dd-titre-du-post/image.jpg)
```

5. (Optionel) Tester le rendu en local en lançant les commandes jekyll depuis le répertoire `/docs` avec `jekyll serve`, le blog est visible sur [http://localhost:4000](http://localhost:4000)

6. Commitez et Proposez la Pull Request sur le site Duchess. Vous pouvez proposez une Pull Request avec un contenu non terminée, dans ce cas il est conseillé de faire une Pull Request de type "draft" (option préférée) ou préfixer le titre de la Pull Request par `[DRAFT]` sur github.

7. Une fois la Pull Request revue, une des membres de la Core Team mergera la Pull Request et le post sera publié.

## Modifier le site

### Pre-requis
- Installer `git`
- Installer jekyll en suivant la doc officielle https://jekyllrb.com/docs/pages/
- Installer les gem avec la commande `bundle install` dans `docs`

### Pour proposer un changement
- Faire un fork du repo (via le bouton "fork" en haut à droite)
- Cloner le fork sur votre PC
- créer une branche avec un nom (changez "mabranche"):
```
git checkout -b mabranche
```
- Effectuer les modifications
- Tester le rendu en local en lançant les commandes jekyll depuis le répertoire "docs":
```
cd docs
jekyll build
jekyll serve
```
- Proposer une Pull Request

### Références

- Jekyll: https://jekyllrb.com/docs/pages/
- Theme minima: https://github.com/jekyll/minima
- github pages: https://github.com/DuchessFrance/DuchessFrance.github.io
