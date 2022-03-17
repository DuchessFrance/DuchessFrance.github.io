---
layout: "post"
author: 
  - "Blandine"
title: "Soirée Java Avancé : Les annotations &#8211; Paris JUG Décembre"
date: "2010-12-22"
categories: 
  - "les-conferences"
tags: 
  - "java"
  - "paris-jug"
---

| _Cet article a été co-écrit par Blandine Bourgois et Julia Mateo_ |

Cet Avant Jug a réuni peu de monde… Mais ça ne nous a pas empêché de faire connaissance et de discuter des projets des JDuchess, tel que le blog et le groupe de travail sur la certification.

![Olivier et Nicolas](/assets/2010/12/2010-12-22-soiree-java-avance-les-annotations-paris-jug-decembre/5265274499_6fea9a8c84.jpg "Olivier Croisier et Nicolas Martignole")

Olivier Croisier et Nicolas Martignole - Photo José Paumard

Nous avons ensuite été rejoints par deux développeurs (l’Avant Jug n’est pas réservé qu’aux JDuchess) qui ont lancé le débat suivant :  
«Pourquoi y-a-t-il moins de problèmes dans les équipes Agiles qui contiennent au moins une femme ? »

![Olivier en action](/assets/2010/12/2010-12-22-soiree-java-avance-les-annotations-paris-jug-decembre/5265276923_7848eebbff.jpg "Olivier Croisier en action")

Olivier Croisier - The Coder's breakfast - Photo : José Paumard

Puis il est temps de partir pour les locaux de l’ISEP où la soirée va commencer. Nicolas Martignole lance un appel à contribution pour la 3ème soirée d’anniversaire du Paris Jug qui aura lieu le 28 février 2011 et dont le thème est « Siffler en travaillant ».

Cette soirée est présentée par Olivier Croisier qui est consultant Zenika. Il a aussi beaucoup d’admiratrice chez les JDuchess, car il est certifié Java 5.0 à 100%. Vous pouvez retrouver les [slides](http://blog.zenika.com/index.php?post/2010/12/15/Conf%C3%A9rence-sur-les-Annotations-au-Paris-JUG) et le [code](http://blog.zenika.com/public/Billet_0232/Code.zip) de la présentation sur le blog de Zenika.

## **Présentation**

Les annotations ont été introduites dans Java 5.0 pour répondre au besoin d’un système de méta-programmation robuste et flexible. Avant les annotations, le projet [Xdoclet](http://xdoclet.sourceforge.net) utilisait les tag JavaDoc pour générer des fichiers XML et/ou du code source.

On trouve aujourd’hui des annotations dans Java SE, Java EE et dans les frameworks modernes (Spring, Hibernate …). Mais vous pouvez aussi créer vos propres annotations.

Les annotations ont différents cas d’utilisation, par exemple :

- documenter le code (JavaDoc),
- donner des informations au compilateur : les annotations permettent de détecter des erreurs ou supprimer des avertissements : `@SuppressWarnings("unchecked")`,
- remplacer les fichiers de configuration XML et/ou générer du code source,
- analyser le code …

## **Annotation, mode d’emploi**

Il est possible de positionner des annotations sur presque tous les éléments :

- packages,
- classes, interfaces et énumérations,
- propriétés des classes,
- constructeurs et méthodes,
- paramètres des méthodes,
- variables locales,
- annotations (méta-annotation),
- … d’autres éléments grâce à la JSR 308 (Annotations on Java types).

Pour annoter un package correctement, il faut utiliser le fichier package-info.java et non l’annoter directement dans une classe (risque de conflit ou d’information incomplète). Ce fichier contiendra la déclaration du package accompagnée de sa JavaDoc et de ses annotations.

@Unpublished
package jduchess.access.user;

Les annotations peuvent prendre des paramètres. Les règles sont les suivantes :

- les paramètres sont obligatoires ou facultatifs (dans ce cas, une valeur par défaut a été définie par le développeur),
- leur ordre n’est pas important,
- on ne peut pas annoter un élément plusieurs fois avec la même annotation : il faut utiliser un wrapper,
- il est possible de séparer le @ de l’annotation par un commentaire, mais ce n’est pas recommandé (mauvaise lisibilité du code),
- les valeurs des paramètres doivent être constantes à l’exécution (« compile-time contants»),
- les valeurs des paramètres ne peuvent pas être nulles (Olivier nous fait remarquer que personne ne sait pourquoi !).

@MyAnnotation(msg1="value1", msg2="value2")
//identique à @MyAnnotation(msg2="value2", msg1="value1")

@MyAnnotationWithOnlyOneParam(value) //notation raccourcie si on a un seul paramètre

//wrapper
@SecondaryTables({
  @SecondaryTable(name="city"),
  @SecondaryTable(name="country")
})

@
/\*\* commentaire pas très bien placé ! \*\*/
Deprecated

## **Annotations personnalisées**

Olivier nous explique maintenant comment créer son annotation personnalisée.

La déclaration d’une annotation est la suivante :

public @interface MyAnnotation{
}

Il est ensuite possible de compléter l’annotation avec :

- des méta-annotations : pour spécifier les conditions d’utilisation de l’annotation,
- des paramètres : pour véhiculer des informations supplémentaires.

Il est aussi possible, comme dans toutes les interfaces, de définir des classes, des interfaces ou des énumérations internes.

### **Les méta-annotations**

Il y a 4 méta-annotations :

- `@Documented` : l’annotation doit-elle être utilisée par la JavaDoc ?
- `@Inherit` : l’annotation doit-elle être héritée ?
- `@Retention` : quelle est la « durée de vie » de l’annotation ? @Retention prend en paramètre une valeur de l’énumération java.lang.annotation.RetentionPolicy :
    - `CLASS` (par défaut) : Les annotations sont enregistrées dans le fichier \*.class par le compilateur, mais ne sont pas utilisées par la JVM au moment de l’exécution.
    - `RUNTIME` : Les annotations sont enregistrées dans le fichier \*.class par le compilateur et sont utilisées par la JVM au moment de l’exécution. Elles peuvent être lues grâce à l’API de réflection.
    - `SOURCE` : Les annotations ne sont pas enregistrées dans le fichier \*.class. Elles sont prises en compte uniquement pour les outils utilisant les fichiers sources (compilateur, JavaDoc …).
- `@Target` : L’annotation doit-elle se restreindre à certains éléments ? L’annotation @Target prend en paramètre une ou plusieurs valeurs de l’énumération java.lang.annotation.ElementType. Si le paramètre est omis, l’annotation s’applique à tous les éléments.

@Documented
@Inherit
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.PARAMETER})
public @interface MyAnnotation{
}

### **Les paramètres**

Les paramètres se déclarent sous la forme d’une méthode non générique. Voici quelques exemples :

public @interface MyAnnotation{

   // paramètre
   String message() ;

   //paramètre avec une valeur par défaut
   int answer() default 42 ;
}

@MyAnnotation(message= "Hello World")
@MyAnnotation(message="Hello World", answer=3)

public @interface  MyAnnotationWithOnlyOneParam{
   //notation raccourcie si on a un seul paramètre
   String value() ;
}

@ MyAnnotationWithOnlyOneParam("Hello World")
@ MyAnnotationWithOnlyOneParam(value="Hello World")

## **Outillage compile-time**

**En Java 5.0** : il faut utiliser l’outil [APT](http://download.oracle.com/javase/1.5.0/docs/guide/apt/index.html) (Annotation Processing Tool) qui doit être lancé en plus du compilateur.

**En Java 6.0** : L’API Pluggable Annotation Processing permet un traitement direct des annotations par le compilateur. Il n’est plus nécessaire d’utiliser un outil tiers. Il faut lancer la compilation en utilisant le paramètre `-processor` ou utiliser le Service Provider Interface.

Ces API exécutent les processeurs d’annotations, dont le but est :

- de générer des ressources (sources, fichier de configuration XML …),
- d’améliorer le compilateur en rajoutant des normes de codages et en remontant des messages (note, avertissement, erreur …).

Le processus de compilation est le suivant :

1. le compilateur découvre les processeurs,
2. le traitement des processeurs se fait en plusieurs passes. Le compilateur et les processeurs s’exécutent et traitent les classes initialement fournies. Si lors de cette passe, de nouvelles ressources sont générées, alors on lance une nouvelle passe sur les nouvelles classes.

### **Les processeurs d’annotations**

Un processeur est une classe implémentant l’interface `javax.annotation.processing.Processor`. Le plus souvent, on étend la classe abstraite `javax.annotation.processing.AbstractProcessor`.

#### Les annotations dédiées

Deux annotations sont dédiées aux processeurs d’annotations et peuvent être utilisées sur la classe du processeur :

- `@SupportedAnnotationTypes` : cette annotation permet de préciser quels seront les types annotations traités par le processeur. La valeur « \* » permet d’indiquer que tous les types seront traités.
- `@SupportedSourceVersion` : cette annotation permet de préciser la version du code source traité par le processeur .

#### Les méthodes à implémenter

Les deux méthodes à implémenter sont `init()` qui permet d’initialiser le processeur et `process()`.

La méthode `process()` est la méthode principale qui contient les traitements à exécuter par le processeur. Elle a deux paramètres :

- `Set&lt;? extends TypeElement&gt; annotations` : Un ensemble des annotations qui seront traitées par le processeur,
- `RoundEnvironment roundEnv` : Un objet qui encapsule l’étape courante des traitements.

Cette méthode renvoie un booléen indiquant si le Set annotations a été « consommé » (traité) ou pas.

### **La classe AbstractProcessor**

La classe `AbstractProcessor` fournie des utilitaires accessibles via la propriété nommée `processingEnv` de type `ProcessingEnvironment`. Cette classe permet d’obtenir des instances qui offrent des traitements avec l’extérieur du processeur.

- `Elements, Types` : interfaces permettant une introspection du code,
- `Filer` : interface permettant la création de nouvelles ressources (classes, fichiers de configuration …) ,
- `Messager` : interface permettant d’envoyer des messages affichés par le compilateur.

Filer filer = processingEnv.getFiler();

### **Exemple du ListingProcessor**

package com.zenika.presentation.annotations.compilation;

import javax.annotation.processing.\*;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;
import javax.lang.model.util.Elements;
import javax.lang.model.util.Types;
import javax.tools.Diagnostic;
import java.util.Set;

@SupportedAnnotationTypes("com.zenika.presentation.annotations.compilation.\*")
@SupportedSourceVersion(SourceVersion.RELEASE\_6)
public class ListingProcessor extends AbstractProcessor {

    private Types types;
    private Elements elements;
    private Messager messager;
    private Filer filer;

    @Override
    public void init(ProcessingEnvironment processingEnv) {
        super.init(processingEnv);
        types = processingEnv.getTypeUtils();
        elements = processingEnv.getElementUtils();
        messager = processingEnv.getMessager();
        filer = processingEnv.getFiler();
    }

    @Override
    public boolean process(Set annotations, RoundEnvironment roundEnv) {
        //Pour chaque annotation traitée ...
        for (TypeElement annotation : annotations) {
            // Trouver les éléments portant cette annotation
            for (Element e : roundEnv.getElementsAnnotatedWith(annotation)) {
                messager.printMessage(Diagnostic.Kind.NOTE, e.getSimpleName());
            }
        }

        return false;
    }
}

![Demos annotations](/assets/2010/12/2010-12-22-soiree-java-avance-les-annotations-paris-jug-decembre/5265887072_ed983b5b40.jpg "Olivier Croisier en demo")

Olivier Croisier - Demo, Photo : José Paumard

## **Outillage runtime**

Ensuite Olivier nous a montré comment récupérer les annotations pendant l’exécution. Cela peut être nécessaire si, par exemple, on veut initialiser un framework ou une librairie basés sur annotations; comment est-ce que l’on pourrait savoir quelles sont les classes qui utilisent un type spécifique d’annotation? Un autre objectif serait celui de la Java Persistence API qui a besoin de récupérer les classes annotées avec `@Entity` pendant l’exécution afin de définir, par exemple, le mapping ORM.

Package, Class, Constructor, Field et Method implémentent l’interface AnnotatedElement ce qui permet de récupérer facilement par introspection les annotations associées. Même les annotations liées aux paramètres d’une méthode peuvent être récupérées avec la méthode :

`Annotation[][] getParameterAnnotations()`

Olivier nous a présenté une petite démo qui montrait comment récupérer les annotations pour différents types d’éléments (package, classe, méthode champ et paramètre). En plus, pour avoir un exemple plus applicatif du même sujet, un exemple de comment récupérer la position d’un champ dans un fichier CSV, pendant l’exécution, grâce aux annotations, a été présenté.  
Ci-dessous un extrait du code qui permet d’extraire les annotations pour différents types éléments :

    @org.junit.Test
    public void testAnnotationDetection() {

        //Annotations sur le package
        Package pkg = Pojo.class.getPackage();
        Annotation\[\] pkgAnnotations = pkg.getDeclaredAnnotations();
        printAnnotations("Package " + pkg.getName(), pkgAnnotations);

        // Annotations sur la classe
        Annotation\[\] classAnnotations = Pojo.class.getDeclaredAnnotations();
        printAnnotations("Classe " + Pojo.class.getName(), classAnnotations);

        // Annotations sur les champs
        Field\[\] fields = Pojo.class.getDeclaredFields();
        for (Field field : fields) {
            Annotation\[\] fieldAnnotations = field.getDeclaredAnnotations();
            printAnnotations("Champ " + field.getName(), fieldAnnotations);
        }

        // Annotations sur les méthodes
        Method\[\] methods = Pojo.class.getDeclaredMethods();
        for (Method method : methods) {

            Annotation\[\] methodAnnotations = method.getAnnotations();
            printAnnotations("\\nMéthode " + method.getName(), methodAnnotations);

            // Annotations sur les paramêtres de méthodes
            Annotation\[\]\[\] paramsAnnotations = method.getParameterAnnotations();
            printParameterAnnotations("\\tParamêtres", paramsAnnotations);
        }

    }

![Benoît Dissert](/assets/2010/12/2010-12-22-soiree-java-avance-les-annotations-paris-jug-decembre/5265282275_382ed1cdbe.jpg "Benoît Dissert")

Benoît Dissert après son speech - Photo : José Paumard

## **Injection d’Annotations**

Pour terminer, Olivier Croisier nous a fait une démonstration de comment injecter des annotations sur la classe Class, c’est à dire, comment créer des annotations au runtime programmatiquement. C’est un sujet un peu plus complexe dont peu de cas d’utilisation nous viennent à l’esprit mais qui peut être utile pour éviter quelques contraintes liées notamment à l’héritage des annotations.

Sans rentrer dans les détails, ci-dessous les étapes à suivre pour injecter une annotation dans une classe Class :

- Instancier une classe qui implémente l’interface de l’annotation qui nous intéresse
- Faire l’override des méthodes equals() et hashCode() en respectant le contrat défini dans la javadoc
- Utiliser la réflexion pour injecter l’annotation dans la classe désirée

## **Conclusions**

Nous avons beaucoup appris sur les annotations qui ne sont pas un sujet facile. Grâce aux annotations nous avons la possibilité de généraliser des comportements et de travailler avec des POJOs (EJBs 3.1 c’est un exemple). Néanmoins il faut faire attention à la complexité des solutions que nous pouvons implémenter si nous choisissons de développer nos propres annotations.  
On a tendance à ne voir les annotations que comme un remplaçant des fichiers XML, or nous avons pu constater qu’elles peuvent être utiles pour d’autres objectifs tels que l’enrichissement du rôle du compilateur ou la réutilisation de code. Voici donc un outil de plus pour faire des développements élégants sur vos librairies et frameworks!

## Merci Olivier, Merci Paris JUG !!!

### Prochain RDV : Janvier 2011 !!!
