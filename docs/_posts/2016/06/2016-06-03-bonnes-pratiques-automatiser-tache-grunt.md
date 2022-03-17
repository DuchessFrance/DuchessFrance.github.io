---
layout: "post"
author: 
  - "amel.krouma"
title: "Bonnes pratiques : Automatiser ses tâches avec Grunt"
date: "2016-06-03"
categories: 
  - "coup-de-coeur"
  - "tech"
  - "tutoriel"
coverImage: "Grunt-logo.png"
---

| Le temps de chargement d'une application web est crucial. La lenteur du chargement de l'application n'est pas seulement due au temps du réponse du module back-end ou d'un appel API mais aussi au traitement fait par votre client web avant d'afficher la page finale. |

En effet, le navigateur doit attendre le chargement et l'exécution complète de tous les scripts ainsi que les feuilles de style déclarées dans la balise <head> de votre document HTML.

Un navigateur n'est pas conçu pour charger un nombre illimité de ressources (images, vidéo, styles, scripts..), il les charge unitairement. Généralement, un browser effectue 8 requêtes HTTP simultanées par domaine.

Si vous êtes un développeur front-end, il est fortement recommandé de limiter les requêtes serveur et d'envoyer un code clean grâce à la concaténation et la compression de vos fichiers (JS , CSS et idéalement vos images et fichiers HTML) avant de les déployer en production. Ces tâches sont très répétitives et récurrentes, le temps passé dessus est quasi perdu et n'a pas de valeur ajoutée. Il faut donc idéalement automatiser ces actions.

Les 2 captures suivantes présentent la même page web sans puis avec les optimisations des requêtes serveurs grâce à la compression et la concaténation des fichiers. Il y a un gain de quelques centaines de millisecondes, ce qui est non négligeable.

[![Sélection_122](/assets/2016/06/2016-06-03-bonnes-pratiques-automatiser-tache-grunt/Sélection_122-300x145.png)](http://www.duchess-france.org/wp-content/uploads/2016/05/Sélection_122.png)

[![Sélection_128](/assets/2016/06/2016-06-03-bonnes-pratiques-automatiser-tache-grunt/Sélection_128-300x95.png)](http://www.duchess-france.org/wp-content/uploads/2016/05/Sélection_128.png)

 

**Qu'est que Grunt ?**

[![gruntjs](/assets/2016/06/2016-06-03-bonnes-pratiques-automatiser-tache-grunt/gruntjs-300x109.png)](http://www.duchess-france.org/wp-content/uploads/2016/04/gruntjs.png)

 

Grunt est un Task Runner, il permet de créer des tâches automatisées en JavaScript telles que les tâches de concaténation , de compression et de compilation des fichiers JS, SASS, CSS ainsi que plein d'autres tâches. Grunt possède d'ailleurs une multitude de plugins dans son éco-système dont le nom commence généralement par '**grunt contrib\***'. Je vous invite à consulter la documentation complète pour plus d'information.

**Prérequis**

Avant tout, assurez vous d'avoir installer nodeJs (npm) car Grunt est un module développé sous NodeJs et donc s'installe avec le gestionnaire de package NPM `sudo apt-get update sudo apt-get install nodejs sudo apt-get install npm`

**Installer Grunt et ses modules**

Maintenant installer Grunt via la commande suivante

`sudo npm install -g grunt-cli`

Une fois grunt est installé on peu commencer à utiliser ses plugins et les configurer pour cela il faut créer le fichier package.json et Gruntfile.js

Le fichier package.json devra être créé à la racine de votre projet. Il va servir à transformer votre dossier de travail en package NPM. Il contiendra la description ainsi que les dépendances de votre projet.

Le fichier package.json doit avoir la structure minimaliste suivante :

{
  "name": "ihm"
  "version": "1.0.0dev",
  "devDependencies": {
   "grunt": "~0.4.5",
  }
}

Ensuite créez votre package npm avec la commande suivante :

`npm install`

Un dossier node\_modules sera créé, dans lequel sera regroupé tous les plugins node que l'on va installer par la suite.

Essayons de tester cela en installant le module de concaténation des fichiers JS : grunt-contrib-concat

`npm install grunt-contrib-concat --save-dev`

Vous allez remarquer qu'une ligne s'ajoute automatiquement à la liste des dépendances du fichier package.json, ceci grâce à l'option l'option --save-dev.

Si vous connaissez à l'avance la liste des plugins à installer,  vous pouvez automatiser l'installation de ces derniers avec un simple script bash. C'est pratique si vous travaillez à plusieurs sur une application web divisée en modules et que vous avez des tâches Grunt spécifiques par module par exemple. Voici un exemple de script : `#!/bin/bash echo '1-accessing to ' $1 cd $1 echo '2- install npm and Grunt' sudo apt-get update sudo apt-get install nodejs sudo apt-get install npm install -g grunt-cli echo '3- create package.json' touch package.json echo '{"name": "compressor","version": "1.0.0","devDependencies": {}}'>package.json npm install grunt-contrib-watch --save-dev npm install grunt-contrib-cssmin --save-dev npm install grunt-contrib-uglify --save-dev npm install grunt-contrib-concat --save-dev npm install grunt-ng-annotate --save-dev echo '4- create gruntfile.js' touch Gruntfile.js`

**Créer une tâche Grunt**

Dans le fichier Gruntfile.js, on va configurer la tâche de concaténation des fichiers installé précédemment. Le code suivant détaille bien cette config : `module.exports = function(grunt) { //charger le module installé grunt-contrib-concat grunt.loadNpmTasks('grunt-contrib-concat'); // Configuration de Grunt grunt.initConfig({ //concat: identifiant de plugin dans Grunt concat: { options: { //options supplémentaires separator: ';', // permet d'ajouter un point-virgule entre chaque fichier concaténé. }, //on peut séparer les tache par type de fichier js: { //concaténer des fichiers JS //liste des fichiers sources src: ['js/lib/angular.min.js','js/controller/mainController.js',], //fichier destination dest: 'js/built_js/built.js' } //concaténer des fichiers css css:{ src: ['css/bootstrap.min.css','css/loading-bar.css',], dest: 'css/built.css', // la destination css finale }, } }) // Définition des tâches Grunt grunt.registerTask('join', ['concat:js', 'concat:css']); grunt.registerTask('concat_css', ['concat:css']); grunt.registerTask('concat_js', ['concat:js']); }`

Pour lancer les tâches définies dans le code précédant revenez à votre terminal et tapez la commande grunt suivie du nom de la tâche que vous avez déclaré via la fonction grunt.registerTask():

`grunt join grunt concat_js grunt concat_css`

**Plus de tâches Grunt**

_**Compression JS: grunt-contrib-uglify**_

Ce plugin permet la compression des fichiers Javascript, il permet d'ailleurs de les concaténer si l'on passe en paramètres une liste des fichiers. Pour garantir une compression sans erreur il vaudrait mieux compiler la syntaxe JS avec JSHINT (soit en l'intégrant dans votre éditeur ou de l'installer et l'exécuter en ligne de commande). On va donc enrechir notre Gruntfile comme suit :

`module.exports = function(grunt) { //charger le module installé grunt-contrib-concat grunt.loadNpmTasks('grunt-contrib-concat'); //charger le module grunt-contrib-uglify grunt.loadNpmTasks('grunt-contrib-uglify'); // Configuration de Grunt grunt.initConfig({ //concat: identifiant de plugin dans Grunt concat: { options: { //options supplémentaires separator: ';', // permet d'ajouter un point-virgule entre chaque fichier concaténé. }, //on peut séparer les tâches par type de fichier js: { //concaténer des fichiers JS //liste des fichiers sources src: ['js/lib/angular.min.js','js/controller/mainController.js'],//fichier destination dest: 'js/built_js/built.js' } //concaténer des fichiers css css:{ src: ['css/bootstrap.min.css','css/loading-bar.css',], dest: 'css/built.css', // la destination css finale }, } //Minification JS uglify: { options: {}, // js: { src: ['js/built_js/built.js'], //on peut passer une liste des fichiers ils seront concaténés dest: 'js/built_js/built.min.js' } } }) // Définition des tâches Grunt //tâches de concaténation grunt.registerTask('join', ['concat:js', 'concat:css']); grunt.registerTask('concat_css', ['concat:css']); grunt.registerTask('concat_js', ['concat:js']); //tâche de minification grunt.registerTask('uglify_js', ['uglify:js']); }`

_**grunt-ng-annotate**_

Si vous utilisez le framework AngularJs comme language front-end, vous devez utiliser ce plugin pour préserver la notation de AngularJs après la compression. En effet, la compression permet de renommer toutes les variables le plus court possible (une seule lettre), et comme Angular possède des variables spécifiques comme le $scope, $http, $q et plein d'autres, il faut garder ces noms de variables même après la compression. Ce module permet permet également de concaténer plusieurs fichiers.

La syntaxe de ng-annotate est la suivante : `grunt.initConfig({ ngAnnotate: { annotateController: { files: { 'js/controller/ngAnnotatedMainController.js':['js/controller/MainController.js'], }, }, }) //charger le module ngAnnnotate grunt.loadNpmTasks('grunt-ng-annotate'); grunt.registerTask('ng_annotate', ['ngAnnotate:annotateController']);`

_**grunt-contrib-cssmin**_

Ce plugin permet de compresser les fichiers css. La configuration est un petit peu différente des autres : `module.exports = function(grunt) { grunt.loadNpmTasks('grunt-contrib-cssmin'); grunt.initConfig({ //minifier le css cssmin: { options: { shorthandCompacting: false, roundingPrecision: -1 }, target: { files: { 'css/main.min.css': ['css/main.css', bootstrap.css], } } } }); }`

Pour cssmin on n'a pas besoin d'enregistrer la tâche avec grunt.registerTask() comme les autres, mais il suffit d'exécuter la commande suivante :

`grunt cssmin`

**Et pour finir, une dernière tâche, pour moi la meilleure !** **_grunt-contrib-watch_**

Pour tout développeur/euse, compiler à chaque fois que vous faites des modifications sur vos fichiers devient vite répétitif et une perte de temps. Ce plugin est fait pour surveiller les fichiers que vous avez configuré dans le GruntFile.js et relance les tâches souhaitées.

`//detecter les changement et relancer les taches en conséquences watch: { //observer les scripts scripts: { //liste des fichiers à observer files: ['js/**/*.js', '!js/controller/built_js/*.js', 'Gruntfile.js'], // tâche à exécuter au changement tasks: ['ngAnnotate:', 'concat:js', 'uglify:js'], }, //observer les styles styles: { files: 'css/**/*.css', // tous les fichiers css de n'importe quel dossier tasks: ['cssmin'] }, options:{ reload: true } }`

Pour lancer le watch :

`grunt watch` Votre console va ressembler à cela : [![Sélection_129](/assets/2016/06/2016-06-03-bonnes-pratiques-automatiser-tache-grunt/Sélection_129-300x171.png)](http://www.duchess-france.org/wp-content/uploads/2016/05/Sélection_129.png)

**Conclusion** Grunt est un outil très puissant qui facilite la vie des développeurs, son eco-système est très riche grâce à ses différents modules. Je me suis focalisée sur quelques uns dans cet article, mais il en reste plusieurs tels que :

- [grunt-contrib-jshint](https://github.com/gruntjs/grunt-contrib-jshint)
- [grunt-contrib-htmlmin](https://github.com/gruntjs/grunt-contrib-htmlmin)
- [grunt-svgmin](https://github.com/sindresorhus/grunt-svgmin)
- [grunt-karma](https://github.com/karma-runner/grunt-karma)
