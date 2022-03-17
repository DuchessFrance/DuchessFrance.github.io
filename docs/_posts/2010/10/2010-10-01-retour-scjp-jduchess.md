---
layout: "post"
author: 
  - "Katia"
title: "Retour SCJP JDuchess"
date: "2010-10-01"
categories: 
  - "duchess-agit"
tags: 
  - "scjp"
---

| Après l’annonce de la création du groupe SCJP au Paris JUG en Juillet, une petite communauté a été formé pour la préparer. Toutes les deux semaines JDukes et JDuchesses se mettent ensemble autour d’une table pour réaliser des exercices et pour discuter des points les plus noirs du langage Java de façon amusante et dynamique. |

### Les participants

Développeurs débutants et expérimentés, des femmes et des hommes, et des origines différentes. Avant tout, dans ce groupe on trouve de la diversité !

**Quelque chiffres :**

**Virtuel :** 37 membres !

**Sur le terrain :** 15 personnes (+1)

Blandine, Gregory, Auri, Carles, Ellène, Benoît, Florence, Loïc, Kahina, Thomas, Nedjma, Mickaël, Julia, Florent, Amira

**Sujets déjà traités :** Les chapitres 1 – 5 du livre de [référence](http://www.amazon.com/SCJP-Certified-Programmer-Java-310-065/dp/0071591060/ref=pd_bxgy_b_img_c "Livre SCJP Java 6")

**Nombre d’exercices inventés :** +80

![IMAG0012](/assets/2010/10/2010-10-01-retour-scjp-jduchess/5041332282_9f9cf8d076.jpg)

5ème réunion

### Comment travaillons nous ?

Toutes les deux semaines on se réunit pour traiter d’un nouveau chapitre du livre SCJP. Chaque personne prépare des exercices, et on les travaille ensemble : on discute, on débat, on teste sur l’ordinateur, on change le code des exercices pour découvrir encore plus de résultats… et on se sert d’un projecteur pour les afficher ! Après 5 sessions, on peut dire que le système mis en place fonctionne bien !

![IMAG0017](/assets/2010/10/2010-10-01-retour-scjp-jduchess/5041331032_221effdef3.jpg "JDuchess")

De gauche à droite : Amira, Florence, Nedjma, Kahina

![IMAG0010](/assets/2010/10/2010-10-01-retour-scjp-jduchess/5040707019_a7aa3481a1.jpg "JDukes")

De gauche à droite : Loïc, Gregory, Carles et Benoît

### Une petite question pour la route

Pour finir ce retour, je vous propose un petit exercice intéressant apporté par Loïc hier soir ; celui qui a créé le débat le plus passionné :

Quelle sera la sortie dans la console après l’exécution de la méthode **main** ? et bien sûr … pourquoi ?

A) Pas de sortie, erreur de compilation  
B) Exception au runtime  
C) Affichage suivant sur la console : yellow is my favourite color !  
D) Affichage suivant sur la console : blue is my favourite color !  
E) Affichage suivant sur la console : pink is my favourite color !  
F) Affichage suivant sur la console : purple is my favourite color !  
G) Affichage suivant sur la console : red is my favourite color !  
H) Affichage suivant sur la console : green is my favourite color !  
I) Affichage suivant sur la console : black is my favourite color !  
J) Affichage suivant sur la console : null is my favourite color !

public class Color
{
    public static void main(String\[\] args){
        System.out.println(getFavoriteColor(2) + " is my favourite color !");
    }
    private static String getFavoriteColor(int i){
        String favoriteColor = null;
        try{
                switch(i){
                    default : favoriteColor = "yellow";
                    case 0 : {
                        favoriteColor = "blue";
                        throw new RuntimeException();
                    }
                    case 1 : favoriteColor = "pink";break;
                    case 2 : favoriteColor = "purple";
                }
                return favoriteColor;
        }
        catch (IndexOutOfBoundsException e) {
            favoriteColor = "red";
        }
        catch (RuntimeException e) {
            favoriteColor = "green";
        }
        catch (Exception e) {
            favoriteColor = "black";
        }
        finally{
            favoriteColor = null;
        }
        return favoriteColor;
    }
}

Je vous invite à écrire votre réponse en commentaire de cet article. Note : Experts déjà certifiés, merci de vous abstenir pour l’instant ![:)](http://jduchess.org/duchess-france/wp-includes/images/smilies/icon_smile.gif)

**Merci à toutes et à tous pour votre participation, votre motivation et votre intérêt !  
RDV à la prochaine réunion SCJP-JDuchess !**
