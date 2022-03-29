---
layout: "post"
author: 
  - "Katia"
title: "DDD vs SOA – Lightweight killer apps with nothing but vanilla Java EE 6"
date: "2010-07-13"
categories: 
  - "les-conferences"
  - "tech"
tags: 
  - "ddd"
  - "ecb"
  - "ejb"
  - "ejb3"
  - "java"
  - "jee6"
  - "paris-jug"
  - "soa"
---

| Adam Bien est venu présenter sa vision de l’architecture Java EE lors de la session de Juillet du Paris JUG. Ce premier article présente la première partie de la soirée, plutôt dédiée aux concepts et à la théorie. |

[![Adam Bien - Photo: Claude Falguière](/assets/2010/07/2010-07-13-ddd-vs-soa-lightweight-killer-apps-with-nothing-but-vanilla-java-ee-6/5131351083_7986fe9be0.jpg "Adam Bien - Java EE 6")](http://farm5.static.flickr.com/4126/5131351083_7986fe9be0.jpg)

Les applications développées sous la plateforme JEE 6 sont maintenant très légères. On est loin de l’ancienne affirmation _“les EJBs sont très lourds”_ ; celle-ci fait désormais partie du passé. **Adam Bien** a démontré la puissance de la plateforme et il nous a donné envie de la réapprendre, surtout avec la deuxième partie de la conférence qui a été entièrement pratique comme il nous l’avait promis. Le niveau du contenu théorique a été assez avancé. **Nous vous conseillons la lecture, ou relecture rapide, de l’article précédent** – [Adam Bien / JEE6 / Architecture](http://www.duchess-france.org/soiree-adam-bien-au-paris-jug-0607/ "EJB3 - SOA - DDD") – où vous est présenté Adam et dans lequel on vous plonge dans le contexte; ensuite vous pourrez repasser à cette partie plus détaillée qui s’appuie sur les concepts déjà traités.

**Commençons par la théorie des architectures !**

### Lightweight Killer Applications

Grâce aux design patterns comme _“Convention over Configuration”_, _l’injection de dépendances_ et les annotations, l’architecture des applications JEE6 est considérée **LIGHTWEIGHT** ! **Que signifie “lightweight” ?** Lightweight indique que l’architecture est rapide, simple, petite, légère, “facile”, lean (_maigre_) et qu’elle facilite le développement itératif et incrémental des applications d’entreprise.

Notez que le mot **facile** se trouve **entre guillemets** : Attention ! On peut mettre en péril la réussite des projets si on  sous-estime les difficultés et challenges lors du design et de l’implémentation sous JEE6. Comme on l’avait déjà évoqué dans notre article précèdent, afin de répondre aux besoins réels des applications d’entreprise, on nous propose deux approches d’architecture opposées :

- Architecture pilotée par le Service (SOA – Service Oriented Architecture ≈ **SOAP**)
- Architecture pilotée par le Domaine (DDD – Domain Driven Design ≈ **REST**)

Adam utilise l’acronyme SOA afin de faciliter la compréhension, mais il a aussi souhaité faire la distinction en utilisant les termes **“Design Piloté par le Service”** car le concept SOA a un sens encore plus large. Concept apparu après l’EAI (“Enterprise Application Integration”), le SOA essaie de répondre aux besoins d’intégration et d’architecture au sens global. Avec le SOA on regarde le système d’information d’une entreprise comme un groupe de services au lieu de un groupe d’applications comme avec son précurseur EAI. Il existe aussi une nouvelle approche, ROA (Ressource Oriented Architecture), qui nous parle d’un vision ressource.  Mais au delà des concepts, il faut du travail pour la réalisation des applications !

Les deux types architectures décrits par Adam – DDD et SOA – sont des designs que l’on peut choisir pour développer les applications, et les deux s’appuient sur le pattern ECB comme l’on va voir ci-après.  Le pattern ECB existe depuis longtemps et il est indépendant de la plateforme JEE6 (ce n’est pas un pré-requis).

### ECB – Entity Control Boundary Pattern

Similaire au pattern MCV (Model View Contrôler), il n’est pas consacré qu’à la couche présentation. Il est composé de trois éléments : **Entity**, **Control** et **Boundary**

.

![Entity Control Boundary pattern](/assets/2010/07/2010-07-13-ddd-vs-soa-lightweight-killer-apps-with-nothing-but-vanilla-java-ee-6/5132006088_11abd0f1cf.jpg)

**‘Entity’ :** Élément persistent et passif (il a besoin d’un contexte d’exécution pour fonctionner) qui contient non seulement les données persistantes mais également une partie de la logique métier.

**‘Control’** : Élément orchestrateur qui implémente un scénario donné. Il orchestre les entités pour récréer un scénario fonctionnel particulier, mais la logique métier propre à chaque type d’entité reste encapsulée dans l’entité.

**‘Boundary’ :** Élément qui se trouve en périphérie du système ou sous-système et s’occupe de la communication. Certains Boundarys s’occupent de l’entrée au système depuis l’extérieur (front-end) ; les autres fournissent la sortie (back-end).

Sur ce point, se pose une question importante : Avez-vous compté le nombre de **couches** ? Il y en a **deux**. La couche “Boundary”, et la couche “Business” qui contient les éléments de contrôle et les entités.

### Où est la couche DAO ? A-t-elle disparu ?

Oui, la couche DAO a disparu pour les opérations CRUD, mais elle **sera encore là**. Pourquoi ? La réalité est qu’**on aura besoin des DAO dans la plupart des applications** afin de respecter le principe **DRY** (Don’t Repeat Yourself) et la séparation des responsabilités. Une application classique réalise les mêmes opérations constamment. Sans un DAO dédié, les queries répétées seront arrosées par toute la couche business et cette duplication du code réduira considérablement la maintenance.

Pour bien expliquer ce point : il s’agit simplement de **ne  plus jamais créer les DAO par défaut et uniquement parce que ce design pattern du catalogue J2EE le dit.** Le pattern DAO n’est plus considéré la meilleure pratique à mettre en place. Aujourd’hui on va plutôt travailler en refactoring : **Identifier le code dupliqué dans la couche business** pour après le factoriser dans un DAO. Sans duplication de code,  mieux vaut déléguer directement à l’**EntityManager** depuis la couche business. Une couche DAO sans un vrai besoin augmentera l’effort de maintenance (plus de code, plus de tests) sans apporter une réelle valeur ajoutée.

Grâce aux **generics**, à partir du JDK 5 nous pouvons utiliser **une couche DAO générale et très puissante** qui fournira une API transverse aux applications. Ainsi, pour vous illustrer cela avec un peu de code :

@Stateless
@Local(CrudService.class)
@TransactionAttribute(TransactionAttributeType.MANDATORY)
public class CrudServiceBean implements CrudService {

    @PersistenceContext
    EntityManager em;

    public  T create(T t) {
        this.em.persist(t);
        this.em.flush();
        this.em.refresh(t);
        return t;
    }

    @SuppressWarnings("unchecked")
    public  T find(Cl[Library](upload.php)ass type,Object id) {
       return (T) this.em.find(type, id);
    }

    public void delete(Object t) {
       Object ref = this.em.getReference(t.getClass(), t);
       this.em.remove(ref);
    }

    public  T update(T t) {
        return (T)this.em.merge(t);
    }

    public List findWithNamedQuery(String namedQueryName){
        return this.em.createNamedQuery(namedQueryName).getResultList();
    }

   \[...\] 

}

Dans ce code on voit un Service DAO qui est implémenté par un EJB @Local et @Stateless. On injecte le contexte persistent (@PersistentContext) et EntityManager. On utilise les génériques <T> pour factoriser le code qui est commun à n’importe quelle entité. CrudService est l’interface qui sera exposé au client.

### L’utilisation des interfaces

Comme on verra dans notre article suivant, l’utilisation des interfaces avec les EJBs n’est plus obligatoire. Dans ce point de la conférence, un débat a commencé : **Est-il une bonne pratique le développement Interface + Implémentation ?** Réaliser systématiquement une implémentation interface + classe ajoutera des fichiers à maintenir, et rendra l’application moins légère et l’API plus complexe**.** L’idée d’une interface est d’exposer une API et cacher l’implémentation. Par conséquent, si une classe ne changera pas d’implémentation, l’utilisation des interfaces n’apportera aucune valeur. Si l’API ne sera jamais exposé au client, non plus. Sur ce point, lors de la partie questions/réponses, deux bonnes pratiques ont été évoquées :

- d’une part de différencier l’API externe (exposée au client) de l’API qui restera interne,
- d’autre part d’identifier les objets avec le même comportement et une implémentation différente.

Aussi l’usage de designs patterns comme “Strategy” imposent l’utilisation des interfaces. Ensuite, avec ECB en tête, Adam est passé à l’implémentation de deux approches opposées : l’architecture pilotée par le domaine et l’architecture pilotée par le Service.

### DDD vs SOA : Domaine ou Service

Comme vous pouvez constater dans l’image, les deux approches basent leur architecture sur le pattern ECB. ![SOa vs DDD](/assets/2010/07/2010-07-13-ddd-vs-soa-lightweight-killer-apps-with-nothing-but-vanilla-java-ee-6/5131398507_176a8a9d6c.jpg)

**Afin de ne pas répéter notre article précèdent, et d’expliquer facilement le diagramme, voici un tableau récapitulatif.**

**Piloté par le Domaine vs Piloté par le service**

<table border="0" cellspacing="2" cellpadding="2"><tbody><tr><td align="center" valign="top" width="150"></td><td align="center" valign="top" width="400"><strong>DDD (Domain Driven Design)</strong></td><td align="center" valign="top" width="400"><strong>SOA (Service Driven Design)</strong></td></tr><tr><td valign="top"><strong>Principal</strong></td><td valign="top">Domaine (Entity)</td><td valign="top">Service (Control)</td></tr><tr><td valign="top"><strong>Programmation</strong></td><td valign="top">Cherche l’orientation objet pure</td><td valign="top">Approche procédural</td></tr><tr><td valign="top"><strong>ECB – Entity</strong></td><td valign="top">PDO – Persistent Domain Objet. Contient du logique métier. Les entités ont leur état encapsulé et un comportement bien précis (true objects)</td><td valign="top">Anemic Object Model – Structure de données sans comportement qui expose son état à partir des modificateurs (get/set). Ne contient aucun logique métier</td></tr><tr><td valign="top"><strong>ECB – Control</strong></td><td valign="top">Ne contient quasiment pas de logique métier. Très léger, parfois inexistant.</td><td valign="top">Implémente toute le logique métier.</td></tr><tr><td valign="top"><strong>ECB – Boundary :</strong></td><td valign="top">Gateway – Expose et manage les entités (PDO). Nature <strong>Stateful </strong>(EJB @Stateful)</td><td valign="top">Façade – Cache les entités derrière les services. Nature <strong>Stateless </strong>(EJB @Stateless)</td></tr><tr><td valign="top"><strong>Nombre de couches :</strong></td><td valign="top">2 couches, pas besoin de DTO (Data Transfert Object)</td><td valign="top">plus de 2 couches. besoin de DTO (Data Transfert Object)</td></tr><tr><td valign="top"><strong>La couche DAO :</strong></td><td valign="top">utilise la stratégie décrite précédemment</td><td valign="top">utilise la stratégie décrite précédemment</td></tr><tr><td valign="top"><strong>S’intègre bien avec :</strong></td><td valign="top">REST</td><td valign="top">SOAP</td></tr></tbody></table>

La vaste majorité des application J2EE / JEE existantes ont été développées avec l’approche procédural d’orientation au service. Avec les EJBs 2.x, penser à l’approche DDD n’était pas seulement une aberration, mais était quasiment impossible due à la complexité.

### Conclusions

Les deux architectures opposées sont des meilleures pratiques dans des contextes particuliers. Ne soyons pas sectaires et restons ouverts aux deux approches. Dans la pratique, **la plupart des projets du monde réel auront besoin d’une architecture mixte.**

[![Adam Bien - Photo: José Paumard](/assets/2010/07/2010-07-13-ddd-vs-soa-lightweight-killer-apps-with-nothing-but-vanilla-java-ee-6/5131987072_8488f99d8e.jpg "Adam Bien - Conclusions")](http://farm2.static.flickr.com/1390/5131987072_8488f99d8e.jpg)

Adam a voulu nous transmettre un message aussi important que l’effet de connaître les frameworks du marché et les design patterns.

**« Pensez toujours au vrai besoin, au contexte et à la valeur ajoutée »**

Une architecture en 5 couches dans la pratique n’apportera aucune valeur si notre application reste monolithique.  Grâce aux nouveautés de JEE 5 et 6, on peut réaliser des applications beaucoup plus légères qui répondront au vrai besoin. Rappelons-nous qu’on n’applique pas les designs patterns pour le plaisir, mais pour répondre au besoin et pour obtenir une valeur ajoutée.

**« Rester petit mais penser grand »**

Lorsqu’on est confronté à la réalisation d’une architecture, il est très important de bien identifier les cas d’évolutions probables auxquels l’application sera sujette. Dans ce contexte, on ne doit cependant pas réaliser le design d’une architecture en assurant toutes les possibilités d’évolution pour anticiper tous les besoins possibles, auquel cas on risque de rester éternellement dans la phase « design » sans en réaliser le développement. En anticipant **seulement** les besoins **les plus probables** on pense grand, tout en restant petit. Une second article est dédié aux démonstrations de code de la deuxième partie de soirée.

[Pratique – EJB 3.x et Adam en action](http://www.duchess-france.org/ejb-3-x-lightweight-killer-apps-but-nothing-more-than-adam-in-action/ "Partie pratique")
