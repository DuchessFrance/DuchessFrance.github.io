---
layout: "post"
author: 
  - "cfalguiere"
title: "Le Paris Groovy Grails User Group #1"
date: "2010-06-27"
categories: 
  - "les-communautes"
tags: 
  - "groovy"
  - "pggug"
---

| [![Groovy User Group #1](/assets/2010/06/2010-06-27-le-paris-groovy-grails-user-group-1/IMG_0318-300x168.jpg "IMG_0318")](http://jduchess.org/duchess-france/files/2010/06/IMG_0318.JPG) |

Groovy User Group - Les organisateurs

  
Et un UG de plus …

Cette fois ci c’est le **Paris Groovy Grails User Group** qui a tenu sa première réunion le 10 juin chez [VMWare](http://www.springsource.com/). Deux autres sponsors ont également participé à cette soirée, [Doc4Web](http://www.doc4web.com/) qui a fournit le buffet et [Balsamiq](http://www.balsamiq.com/).

Une quarantaine de personnes pour cette **première session** ([le programme](http://www.meetup.com/Paris-Groovy-Grails/calendar/13379668/)), avec les habitués, quelques nouvelles têtes par rapport aux user groups Java, et pas mal de filles (**environ 10%** ce qui est un bon score pour des conférences techniques).

Pour le lancement de ce groupe, une session de présentation : quelles seront les activités de ce groupe, qu’est ce que Groovy, les principaux concepts, pourquoi c’est cool, et un tour d’horizon des principaux projets qui gravitent autour de Groovy.

Dans les activités prévues les classiques des UG (présentations, débats, sorties restau) mais aussi une originalité : **organiser des soirées de coding**.

Vous pourrez **suivre l’activité** de ce groupe sur Meetup à l’adresse suivante [http://www.meetup.com/Paris-Groovy-Grails/](http://www.meetup.com/Paris-Groovy-Grails/)

## Groovy

Guillaume Laforge nous a présenté les principales caractéristiques de Groovy, **le langage qui nous simplifie la vie** :

- Un [langage **dynamique**](http://fr.wikipedia.org/wiki/Langage_de_programmation_dynamique)
- Des [**Closures**](http://fr.wikipedia.org/wiki/Fermeture_(informatique)), des blocs de code réutilisables que l’on peut manipuler comme des variables
- Le **typage optionnel**
- Le support de l’**expression langage** ( `${mavariable}` )
- les **GString** qui permettent d’étendre les chaînes (support de l’expression langage, chaînes sur plusieurs lignes, padding …)
- Les facilité de création d’initialisation des **collections**  
    Une liste `fruits = ['Pomme', 'Orange']`  
    ou une map `contact = [prenom='Guillaume', nom='Laforme']`
- La facilité de manipulation des **documents XML** ([XmlParser](http://groovy.codehaus.org/Reading+XML+using+Groovy's+XmlParser), [MarkupBuilder](http://groovy.codehaus.org/Using+MarkupBuilder+for+Agile+XML+creation))
- La facilité de création  de requêtes **JDBC**, d’IHM **Swing** ou plus généralement l’utilisation de templates et de **DSL** via les [MarkupBuilder](http://groovy.codehaus.org/Using+MarkupBuilder+for+Agile+XML+creation)
- Des [opérateurs](http://groovy.codehaus.org/Operators) rigolos comme l’opérateur **elvis ?:** qui permet de simplifier l’écriture de l’opérateur ternaire en `nom ?: 'anonyme'` dans le cas où on veut juste vérifier que le nom existe ou l’opérateur **?.** qui permet d’écrire un chemin de navigation dans des objets sans devoir vérifier la présence de valeur nulle à chaque étape
- La manipulation de **fichiers** ou de résultats de **requêtes SQL** aussi simple que manipuler une collection

[![Groovy Elvis operator](/assets/2010/06/2010-06-27-le-paris-groovy-grails-user-group-1/elvis.jpg "elvis")](http://jduchess.org/duchess-france/files/2010/06/elvis.jpg)

Elvis operator

**_Pourquoi l’adopter ?_**

- Tourne dans la **JVM, portable** et en général déjà présente
- **Intégration** très complète avec Java (du code Java fonctionne dans Groovy même si ça n’est pas le but et les librairies Java sont utilisables
- **Prise en main très rapide** pour les développeurs Java
- **Rapidité d’écriture** du code

Pour avoir un peu codé en Groovy, c’est vrai que  la prise en main par un développeur Java est rapide, en particulier si on a l’habitude d’autres langages de scripting (Python dans mon cas) et de la programmation fonctionnelle.

C’est terriblement pratique pour écrire le code de test ou des scripts qui moulinent des fichiers et génèrent des rapports. Il y a bien sûr une contrepartie à cette productivité. Les manipulations de fichiers ne sont pas aussi instantanées que dans mes scripts Python et le débugging n’est pas toujours simple lorsque le typage optionnel ne produit pas le type qu’on suppose. Mais dans l’ensemble ça permet de réaliser très vite des outils dont on a besoin.

[![Groovy User Group #1](/assets/2010/06/2010-06-27-le-paris-groovy-grails-user-group-1/IMG_0319-300x168.jpg "IMG_0319")](http://jduchess.org/duchess-france/files/2010/06/IMG_0319.JPG)

Groovy User Group - Les participants (si, si, il y a deux autres filles au fond)

Après une pause au buffet, Guillaume nous a présenté l’écosystème Groovy

## L’écosystème

Groovy est utilisé dans un grand nombre d’outils de test ou de reporting. Ces activités ne sont pas critiques et la facilité d’usage de Groovy permet de mettre en pratique rapidement ses idées.

Il est également utilisé (via Grails en particulier) pour le **développement d’IHM** de ces outils.

Enfin un autre usage privilégié est l’utilisation de Groovy comme **langage de commande**, pour exprimer des **règles métier** ou des **DSLs**.

Même si Groovy peut utiliser les librairies Java, de nouvelles librairies plus dans l’esprit Groovy et plus intégrées sont également mises au point. Et pour finir, tous les outils pour faire du Groovy.

_**Voici un tour d’horizon**_

La gestion de dépendances :

- Grape (The Groovy Adaptable Packaging Engine or Groovy Advanced Packaging Engine) et la commande @grab

Des librairies complémentaires :

- Une librairie pour la manipulation de JSON lib [http://json-lib.sourceforge.net/groovy.html](http://json-lib.sourceforge.net/groovy.html)
- Une librairie XML plus puissante XML Slurper [http://groovy.codehaus.org/Reading+XML+using+Groovy’s+XmlSlurper](http://groovy.codehaus.org/Reading+XML+using+Groovy's+XmlSlurper)
- [HttpBuilder](http://groovy.codehaus.org/HTTP+Builder) pour la manipulation de requêtes HTTP
- [Groovy WS](http://groovy.codehaus.org/GroovyWS) pour la manipulation de Web Services
- [Gpars](http://gpars.codehaus.org/) pour faciliter la programmation concurrente

Des frameworks applicatifs écrits en Groovy :

- Web : [Grails](http://www.grails.org/)
- GAE : [Gaelyk](http://gaelyk.appspot.com/)
- Swing : [Griffon](http://griffon.codehaus.org/)

Des frameworks de test écrits en Groovy :

- [Easyb](http://www.easyb.org/) un framework de [BDD (Behavior Driven Development)](http://fr.wikipedia.org/wiki/Behavior_Driven_Development)
- [Spock](http://code.google.com/p/spock/) un framework Fit
- [Gmock](http://code.google.com/p/gmock/) un framework de [mock](http://fr.wikipedia.org/wiki/Mock_(programmation_orient%C3%A9e_objet))
- [Soapui](http://www.eviware.com/) un framework de test fonctionnel

Des outils de build :

- [Gant](http://gant.codehaus.org/) Ant en groovy
- [Gradle](http://www.gradle.org/) un outil de build
- [GMaven](http://docs.codehaus.org/display/GMAVEN/Home) un plugin Maven
- [CodeNarc](http://codenarc.sourceforge.net/) analyse statique de code Groovy

Un discours du directeur technique de VMWare, quelques questions des participants et on attend déjà la prochaine session pour en voir plus. En attendant, nous voilà avec plein d’idées en tête pour se simplifier la vie et des tas de nouveaux trucs à essayer.  Intéressés mais un peu paresseux  ? Grace à une application Gaelyk, vous pouvez [tester Groovy en ligne](http://groovyconsole.appspot.com/) sans rien installer.

La **prochaine rencontre** aura lieu le **20 Juillet** :  [http://www.meetup.com/Paris-Groovy-Grails/boards/view/viewthread?thread=9320461](http://www.meetup.com/Paris-Groovy-Grails/boards/view/viewthread?thread=9320461)
