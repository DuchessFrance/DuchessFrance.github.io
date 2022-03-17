---
layout: "post"
author: 
  - "StephanieH"
title: "Pot (pas si) pourri d’astuces pour Visual Studio"
date: "2017-05-11"
categories: 
  - "coup-de-coeur"
  - "developper"
  - "tech"
  - "tooling"
tags: 
  - "astuces"
  - "ide"
  - "visual-studio"
coverImage: "1-barre-de-recherche.png"
---

| **Entre les nouveautés de C# 6.0, Roslyn et Visual Studio, voici quelques pépites à côté desquelles vous êtes peut-être passés. Vous trouverez également quelques fonctionnalités souvent méconnues qui existent pourtant depuis une belle lurette !** |

## Les immanquables dans l’éditeur

### La barre de recherche de Visual Studio

Parmi la myriade de commandes et options dispersées à travers les menus, fenêtres et sous-fenêtres, il est bien compliqué d’accéder rapidement à une fonctionnalité voulue. La barre de recherche intégrée dans le bord même de la fenêtre de Visual Studio (et donc visible en permanence) vous permet d’y accéder directement en tapant ses premières lettres:

Ex : pour trouver l’option permettant de changer le niveau de verbe (verbosity) du compilateur qui se trouve dans un 4ème niveau de sous-menu (Menu/Options/Projects&Solution/Build&Run)

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/1-barre-de-recherche-300x96.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/1-barre-de-recherche.png)

### La sélection en rectangle

En maintenant la touche Alt vous pouvez sélectionner du texte au format rectangulaire. Pratique lorsque vous copiez-collez du code provenant d’un site web où il est parfois préfixé par des numéros de ligne.

###  [![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/2-selection-carre.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/2-selection-carre.png)

### Mise en forme du code

Le raccourci Ctrl-K-D vous permet de remettre votre code en forme (indentations, …) et cela y compris pour le code XAML. Corrigez les erreurs de compilation auparavant pour un résultat optimal.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/3-mise-en-forme_1.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/3-mise-en-forme_1.png)

Ctrl-K-D

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/4-mise-en-forme_2.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/4-mise-en-forme_2.png)

### Conservez les positions de vos fenêtres

Vous pouvez sauvegarder votre contexte de fenêtres et en créer par-exemple autant que vous avez d’environnements de travail différents (pro, perso, double-écran, résolution, type de projet…). Ces contextes sont associés à votre profil utilisateur et sont donc répliqués via roaming sur vos différentes machines.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/5-window-layout.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/5-window-layout.png)

### Paste as JSON

Saviez-vous que vous pouviez générer des classes à partir d’un bloc JSON ou XML en un simple clic ?

Copiez le bloc de code JSON ou XML dans le presse-papier

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/6-past-as_1-300x138.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/6-past-as_1.png)

puis choisissez « Edit/Paste Special » dans Visual Studio.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/7-past-as-_2.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/7-past-as-_2.png)

Les classes correspondantes seront générées directement dans le fichier cible.

### Générer un GUID

Certainement la fonctionnalité la plus ancienne de cette liste puisqu’elle existe depuis Visual Studio 2005: vous pouvez créer un GUID très facilement depuis le menu Tools:

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/8-GUID_1.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/8-GUID_1.png)

## Nouveautés du langage C# 6.0

### Expression bodied members

Votre méthode retourne une simple ligne de code ? Vous pouvez dorénavant utiliser une syntaxe simplifiée, à la mode des expressions lambda. Cerise sur le gâteau : ça marche aussi pour les getters !

public double Dist
{
    get 
    { 
         return Math.Sqrt(X \* X + Y \* Y); 
    }
}

devient

public double Dist => Math.Sqrt(X \* X + Y \* Y);

### L’opérateur « null-conditional »

Il s’agit de simplifier les situations qui impliquent de tester la nullité d’une variable/membre pour accéder à un attribut ou une méthode.

Dans le code suivant :

static void Main(string\[\] args)
{
    switch (args?.Length)
    {
        // ...
    }          
}

La condition du switch correspond à la logique de code suivant (où args ne serait par contre évalué qu’une seule fois).

(args != null) ? (int?)args.Length : null

Notez que le type de retour de cet opérateur appliqué à un type T est un Nullable<T>.

Il est très pratique dans les cas où l’on va chainer les appels nécessitant des éléments ou propriétés non nuls :

string\[\] names = person?.Name?.Split(' ');

Autre cas d’application intéressant : simplifier l’invocation de delegate permettant ainsi de supprimer le test à nul qui le précède habituellement. On obtient:

OnTemperatureChanged?.Invoke(this, value);

Mais l’opérateur fonctionne aussi avec les index en utilisant « ?\[ »

if(json == null ||
   json\["x"\] == null ||
   json\["x"\].Type != JTokenType.Integer ||
   json\["y"\] == null ||
   json\["y"\].Type != JTokenType.Integer)
{
   throw new ArgumentException("Parameter is not shaped like a Point", "json");
}

…

devient

if (json?\["x"\]?.Type != JTokenType.Integer ||
    json?\["y"\]?.Type != JTokenType.Integer)
{
   throw new ArgumentException("Parameter is not shaped like a Point", "json");
}

### Nameof

C’est une des nouveautés très populaire de C# 6.0 : on peut désormais faire référence au nom d’une variable, type ou membre grâce à l’opérateur « nameof » permettant ainsi d’avoir une vérification de son existence dans le scope lors de la phase de compilation.

La dernière ligne du snipet servant d’exemple pour l’opérateur Null-conditional devient

throw new ArgumentException("The parameter is not shaped like a Point", nameof(json))

Entre autres, c’est très pratique pour l’implémentation de l’interface INotifyPropertyChanged.

### Adieu String.Format !

C’est possible grâce aux chaines de caractères interpolées qui permettent une simplification d’écriture bien pratique pour le formatage de chaines. Elles permettent de référencer des expressions directement là où on les utilise dans la construction d’une chaine de caractères. C’est applicable partout où vous utilisez des chaines de caractères littérales.

msg = string.Format("Hello!  My name is {0} {1} and I am {2} years old.",
                person.FirstName, person.LastName, person.Age);

devient

msg = $"Hello!  My name is {person.FirstName} {person.LastName} and I am
    { person.Age} years old.";

# Les extensions

Accessibles via le menu Tools/Extensions and Updates, elles permettent d’étendre les fonctionnalités de Visual Studio

### Developer Assistant

C’est une extension très intéressante de Visual Studio, notamment depuis qu’elle a bénéficié de l’intégration de **Github**. Elle vous donne accès à différents niveaux assistance pour améliorer votre productivité au quotidien.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/10-Dev-Assistant_1-300x190.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/10-Dev-Assistant_1.png)

Grâce à l’ « **API Assistant** », vous aurez accès à des millions de samples de code, notamment pour l’utilisation des APIs à la volée pendant que vous codez.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/11-Dev-Assistant_2-300x166.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/11-Dev-Assistant_2.png)

Le « **Developer Assistant** » vous permet de formuler votre recherche en langage naturel :

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/12-Dev-Assistant_3.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/12-Dev-Assistant_3.png)

Le « **Compiler Error Assistant** » fournit de l’aide contextuelle pour corriger les erreurs de compilation.

### Duocode

Cette extension permet de **cross-compiler du code C# 6.0 en Javascript** avec le support de TypeScript. Elle vous permet de réutiliser vos compétences de développeur .Net et de partager du code entre des applications Windows et Javascript.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/13-Duocode-300x184.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/13-Duocode.png)

L’extension est payante mais vous pouvez la tester pendant 30 jours gratuitement. Elle fonctionne avec Visual Studio 2012, 2013 et 2015. Rendez-vous sur [http://duoco.de/](http://duoco.de/)

### Alive

Alive est une extension qui vous permet de visualiser le résultat de votre code en temps réel, au fur et à mesure que vous le tapez et ceci directement dans l’éditeur. Bref, **votre code devient vivant** lors la phase de développement. L’extension est payante mais vous pouvez la tester gratuitement pour 30 jours sur [https://comealive.io](https://comealive.io).

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/14-Alive.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/14-Alive.png)

### Visual Commander

Vous faites beaucoup de tâches répétitives ? Automatisez-les avec l’extension Visual Commander : vous pourrez enregistrer et rejouer une suite de commandes au clavier ainsi que réutiliser des macros d’anciennes version de l’éditeur.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/15-Visual-Commander-300x133.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/15-Visual-Commander.png)

### OzCode

Cette extension enrichit l’expérience de debug : OzCode se dit être au debug ce que resharper est au code. Il y a énormément de fonctionnalités, trop pour les détailler ici. Vous pouvez tester la version d’évaluation sur http://www.oz-code.com. La 2.0 bêta supportant C#6 vient de sortir mais l’extension fonctionne aussi sur les précédentes versions de l’IDE et ce à partir de Visual Studio 2010 !

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/16-Oz-300x179.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/16-Oz.png)

## Pour les applications UWP

### L’extension UWP Tile Generator

Bien pratique pour les développeurs d’applications UWP, voici une extension permettant de générer des images aux différents formats recommandés pour les vignettes.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/17-Tile-Gen-288x300.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/17-Tile-Gen.png)

### Le package nuget « PlatformSpecificAnalyser »

Créé avec Roslyn, il surveille votre utilisation des APIs spécifiques à une plateforme et vous alerte des problèmes potentiels tout en vous proposant une suggestion de correction.

Vous le trouverez ici : [https://www.nuget.org/packages/PlatformSpecific.Analyzer](https://www.nuget.org/packages/PlatformSpecific.Analyzer)

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/18-Plat-Spec-Analyser-300x71.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/18-Plat-Spec-Analyser.png)

## La marketplace de la suite Visual Studio

Saviez-vous qu’il existe aussi des extensions pour les autres produits de la suite Visual Studio comme **Visual Studio** **Team Services** et **Visual Studio Code** ? Une marketplace leur est dédiée : [https://marketplace.visualstudio.com](https://marketplace.visualstudio.com)

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/19-Marketplace-300x175.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/19-Marketplace.png)

## Les annonces de la //build

### Visual Studio 2015 Update 2

Durant la conférence //build, **Visual Studio 2015 Update 2** a été annoncé avec de multiples améliorations et optimisations ainsi que de nouveaux outils d’analyse. Voici quelques morceaux choisis :

### Execute in Interactive

Permet de charger la fenêtre interactive dans un contexte donné

###  [![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/20-Exec-Interactive_1-300x46.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/20-Exec-Interactive_1.png)[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/21-Exec-Interactive_2.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/21-Exec-Interactive_2.png)

### Mises à jour automatique des extensions

Il est possible de désactiver cette fonctionnalité, séparément par extension.

## Xamarin

L’annonce qui a fait le plus de bruit concerne Xamarin récemment racheté par Microsoft. Pour rappel: la société édite une suite d’outils pour le développement mobile cross-plateforme en .Net.

**Xamarin** (y compris Xamarin.Forms) est intégré à toutes les éditions de Visual Studio, version Community incluse.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/22-shansleman-300x132.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/22-shansleman.png)

A titre de comparaison avec les offres actuelles :

- Avec Visual Studio Professionnel, vous aurez accès aux fonctionnalités correspondant à la version Business de Xamarin.
- Avec Visual Studio Entreprise, vous avez accès aux fonctionnalités correspondant à la version Enterprise de Xamarin.

Xamarin Studio est désormais disponible sur Mac dans une édition Community.

**La prochaine version : Visual Studio « 15 »** (à ne pas confondre avec « 2015 ») est téléchargeable dès maintenant en preview : [https://www.visualstudio.com/news/vs15-preview-vs](https://www.visualstudio.com/news/vs15-preview-vs)

Quelques exemples de nouveautés sympathiques: en activant de nouvelles extensions du langage C#, vous pourrez utiliser du **pattern-matching** et déclarer des **fonctions locales**.

[![](/assets/2017/05/2017-05-11-pot-pourri-dastuces-visual-studio/23-vs15-300x85.png)](http://www.duchess-france.org/wp-content/uploads/2017/05/23-vs15.png)
