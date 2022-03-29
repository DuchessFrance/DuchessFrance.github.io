---
layout: "post"
author: 
  - "Katia"
title: "EJB 3.x – Lightweight killer apps but nothing more than Adam in action"
date: "2010-07-13"
categories: 
  - "les-conferences"
  - "tech"
tags: 
  - "ejb"
  - "ejb3"
  - "java"
  - "jee6"
---

| Cet article présente la deuxième partie de la soirée Adam Bien au ParisJUG. |

Après une présentation théorique des architectures et des EJBs puis un buffet animé par les discussions sur la présentation de première partie, Adam nous a montré la puissance de la plateforme JEE 6 et les EJB 3.x en réalisant du code en direct. Dans notre [article précédent](http://jduchess.org/duchess-france/blog/lightweight-killer-apps-with-nothing-but-vanilla-java-ee-6-ddd-vs-soa), on vous a parlé des approches d’architecture opposées SOA et DDD; dans celui-ci on traite en détail de la partie théorique des EJBs accompagnée des exemples d’Adam.

**Allons-y avec la théorie et la pratique des EJBs !**

![Adam Bien - Photo: José Paumard](/assets/2010/07/2010-07-13-ejb-3-x-lightweight-killer-apps-but-nothing-more-than-adam-in-action/5131972630_34a3b35c70.jpg "Adam Bien In Action")

Comme on l’ a déjà évoqué précédemment, les EJBs d’aujourd’hui ne sont plus considérés comme une technologie lourde. Il sont simples, concis, et l’ancien mode de configuration par des tonnes de XML a été supplanté par les annotations en laissant au développeur la possibilité de changer la configuration par défaut avec le XML (le pattern “Convention over Configuration”).

Le conteneur des EJBs est maintenant très léger aussi, il pèse à peine 1Mo. Dans le profil Web on a  la possibilité de déployer le container avec notre application dans un war. Cela permet que tous les objets aient le même classloader, c’est qui est très pratique pour éviter des exceptions de type “class not found” dues au fait que les classes n”ont pas été chargées dans le même ClassLoader. JNDI est indépendant du serveur d’application, et on peut même faire du monitoring JMX aux EJBs.

Adam nous a dit que ses exemples sont “crappy” (En dehors de cette affirmation je pense qu’il est très modeste) et que le fait de tout mettre dans le même classloader n’est pas très élégant, mais très pratique.

 

### EJB 3.x : légers, simples, testables

Le plus simple des EJBs :

@Stateless
public class ChampionService {
   public String sayWorldCupWinner(){}
}

Les EJBs d’aujourd’hui n’ont aucune contrainte d’héritage, on les crée à partir de simples POJOs. On revient ici à **la question “interface” évoquée dans [l’article précédent](http://jduchess.org/duchess-france/blog/lightweight-killer-apps-with-nothing-but-vanilla-java-ee-6-ddd-vs-soa)**.  Lors du design, **pensez à l’utilité réelle des interfaces**.  Avec l’injection des dépendances, on peut utiliser l’implémentation d’un EJB sans passer forcément par une interface, et cet EJB sera testable avec la même simplicité.

Exemple de test avec le framework **Mockito** :

public class SimpleChampionServiceTest {
   @Test
   public void sayThisYearsWinner() {
      ChampionService service = mock (ChampionService.class);
      when(service.sayWorldCupWinner()).thenReturn("España");
      ServiceFacade facade = new ServiceFacade();
      facade.service = service;
      assertFalse(facade.isWinnerPaysBas());
   }
}
N.B. : Cet exemple n'a pas été développé par Adam Bien mais par Paul le poulpe,
qui réside en Allemagne lui aussi. Merci Paul.

### Singletons

JEE6 permet l’utilisation des EJBs à mode singletons. Pour cela, on annotera une classe comme @Singleton. L’annotation @Startup permet d’indiquer au conteneur de démarrer le singleton et sa méthode @PostConstruct au démarrage de l’application.

@Singleton
@Startup
public class StartMeUp {
     @PostConstruct
     public void initialization() {
     }
}

### CDI – Context Dependency Injection

CDI – Injection des dépendances et contexte – comble les lacunes de l’injection de dépendances JEE5 . Entre autres limitations, avec JEE5 on n’avait pas la possibilité d’injecter un EJB dans un framework présentation non standard ou d’injecter une classe utilitaire qui n’était pas implémentée sous la forme d’EJB.

### Création du HelloWorld

A l’aide des wizards de NetBeans, Adam a créé un projet de base pour ses exemples. NetBeans est livré avec un serveur Glassfish intégré et il semble plutôt bien pour réaliser des exercices d’apprentissage comme celui-ci. Il a utilisé la base de données Derby qui marche très bien aussi pour ce type d’utilisation.

Il a créé le package **java.fr.jug.dechusse** en l’honneur desJDuchess ![:D](/assets/2010/07/2010-07-13-ejb-3-x-lightweight-killer-apps-but-nothing-more-than-adam-in-action/icon_biggrin.gif) et l’EJB ParisJUGService.

@Staless
public class ParisJugService {
     public void helloParis(){
          System.out.println("Hello Paris");
     }
}

Un peu d’injection de dépendances pour appeler la méthode avec JSF 2 depuis le contrôleur :

@WebServlet(name="HelloController", urlPatterns={"/HelloController"})
public class HelloController extends HttpServlet {

    **@EJB ParisJugService jugService;**

    protected void **processRequest**(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        **jugService.helloParis();**
        try {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HelloController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HelloController at " + **jugService.helloParis()** + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

On a besoin d’un fichier nommé **beans.xml** dans le répertoire web **WEB-INF**. Cela indique que le projet est un module qui utilise les **beans CDI**. Le contenu du fichier est vide, mais on se servira de ce fichier pour ajouter la configuration XML qu’on ne souhaitera pas réaliser uniquement avec les annotations.

Après un tonnerre d’applaudissements de toute la salle pour ce HelloWorld ![:)](/assets/2010/07/2010-07-13-ejb-3-x-lightweight-killer-apps-but-nothing-more-than-adam-in-action/icon_smile.gif) on est passé aux sujets intéressants sur JEE6 qu’Adam avait traité lors de la partie théorique !

### Interceptors

JEE6 permet le développement “lightweight” AOP (Programmation Orienté Aspects). AOP cherche à séparer ce qui est du code métier et de ce qui n’en est pas. On développe le code non fonctionnel – un aspect – et on le réutilise :  le code fonctionnel est ‘décoré’ avec la fonctionnalité de l’aspect en exécution.

Les **aspects du JEE****s’appellent “Interceptors”**. Ils sont assez limités car ils ne sont optimisés que pour travailler avec les EJBs. Or, ils répondent aux besoins courants dela vaste majorité des applications réelles.

Dans l’exemple suivant, on configure un _interceptor_ à partir des annotations ; on pourrait le faire aussi en XML. Chaque méthode de configuration a cependant ses avantages et ses inconvénients

- Les annotations sont plus intrusives, mais elles permettent d’avoir le code plus documenté (on voit explicitement l’aspect) et rendent plus facile la factorisation et la maintenance. 
- Le XML est moins intrusif et plus puissant avec des options de configuration supplémentaires, en contrepartie, il est plus difficile à maintenir, et il a quelque chose de “magique” (le code n’a aucun référence, et à terme ceci pourrait causer des soucis.

La règle générale est ici la même : pensez au vrai besoin pour trouver le meilleur compromis.

Voici l’interceptor crée par Adam :

public class CrossCutter {

    @AroundInvoke
    public Object cutMe(InvocationContext context) throws Exception{
        System.out.println("--- interceptor" + context.getMethod());
        return context.proceed();
    }

}

Voici comment utiliser l’interceptor. Il sera exécuté par toutes les méthodes de la classe :

@Stateless
**@Interceptors(CrossCutter.class)**
public class ParisJugService {

    public void helloParis(){
        System.out.println("Hello Paris ! ");
    }
}

Le résultat de l’appel à la méthode **“helloParis”** donnera la sortie suivante dans la console :

\--- interceptor hello
Hello Paris !

### Processus Asynchrone

JEE 6 permet facilement l’exécution de tâches en mode asynchrone. Dans l’exemple suivant développé par Adam, un EJB appelé Messenger contient une **méthode annotée “Asyncronous”** qui lance un message 2000 millisecondes après son invocation. La méthode répond avec un objet du type Future du JDK 6.

@Stateless
public class Messenger {

        public String message(){
            return "hello paris" + System.currentTimeMillis();
        }

        @Asynchronous
        public Future audit(String message){
            try {
               Thread.sleep(2000);
               System.out.println(" Audit: " + message);
            } catch (InterruptedException ex) {
               Logger.getLogger(Messenger.class.getName()).log(Level.SEVERE, null, ex);
            }
            return new AsyncResult("Done!");
        }
}

Dans l’EJB ParisJUGService, on injecte l’EJB Messenger pour l’utiliser.

@Stateless
\[...\]
public class ParisJugService { 
 **@EJB**
   Messenger messenger;

   public void helloParis(){
        System.out.println("Hello Paris");
        **messenger.audit("something " + sc.getCallerPrincipal());**
   }
}

Si on appelle la méthode helloParis N fois à la suite très rapidement, le message “Hello Paris” s’affichera dans la console à chaque appel, et le message d’audit s’affichera toutes les 2000 millisecondes. Vous constaterez qu’effectivement le code s’exécute en mode asynchrone. Sans le mode asynchrone, on n’aura pas de retour de la méthode **‘helloParis’** tant que l’appel à la méthode **‘audit’** n’est pas terminé.

### Persistance de données

Adam nous a aussi montré un exemple de persistance des données avec JPA. D’abord il a créé une entité persistante à l’aide de l’annotation @Entity. Il a placé les annotations @Id et @GeneratedValue pour définir la clé primaire et la génération automatique des clés. Les propriétés name et description font aussi partie des propriétés persistantes. Ceci est la configuration la plus simple d’une entité JPA.

@Entity
public class SessionEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String description;

    public SessionEntity() {
    }

    public SessionEntity(String name) {
        this.name = name;
    }
}

Dans l’EJB ParisJUGService, il a injecté avec l’annotation @PersistentContext l’**EntityManager**. L’appel à laméthode “persist” a effectivement écrit l’objet dans la base de données Derby.

@Stateless
\[...\]
public class ParisJugService { **@PersistenceContext EntityManager em;**

    public void helloParis(){
        System.out.println("Hello Paris");
        **em.persist(new SessionEntity("hopefuly works"));**
    }
   \[...\]
}

Configuration XML : il nous faut le fichier **“persistence.xml”** dans le classpath. Le fichier est très simple.

<?xml version="1.0" encoding="UTF-8"?>
<persistence version="2.0" xmlns="http://java.sun.com/xml/ns/persistence"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://java.sun.com/xml/ns/persistence
                  http://java.sun.com/xml/ns/persistence/persistence\_2\_0.xsd">
  <persistence-unit name="ParisJugMgrPU" transaction-type="JTA">
    <provider>org.eclipse.persistence.jpa.PersistenceProvider</provider>
    <jta-data-source>jdbc/sample</jta-data-source>
    <properties>
      <property name="eclipselink.ddl-generation" value="drop-and-create-tables"/>
    </properties>
  </persistence-unit>
</persistence>

### Événements

Avec JEE6 nous avons la possibilité de créer assez facilement des événements. Ainsi, depuis la classe ParisJugService, on **injecte un objet “Event”** et on lance un événement :

@Stateless
\[...\]
public class ParisJugService { 
 **@Inject Event<String> event;**

   public void helloParis(){
        System.out.println("Hello Paris");
        **event.fire("hello Paris invoked!");**
   }
}

Une méthode d’un EJB est capable d’écouter (observer) cet événement :

@Stateless
public class EventReceiver {

    public void **onHelloParis(@Observes String message)**{
        System.out.println("----------- " + message);
    }
}

### REST

Pour terminer (on aurait pu rester toute la nuit), Adam nous a montré comment faire un peu de REST avec JAX-RS. D’abord, on ajoute l’annotation @Path à l’EJB ParisJUGService, puis les annotations @GET et @Produces à la méthode **helloParis**.

**@Path("session")**
@Stateless
public class ParisJugService {
    \[...\]

 **@GET**
 **@Produces({MediaType.APPLICATION\_JSON,MediaType.APPLICATION\_XML})**
     public Session helloParis(){
          \[...\]
          return new Session(messenger.message() + " " + tl.hello() )
     }
}

L’annotation @Produces définit les formats que le client pourra utiliser pour recevoir l’objet Session : JSON, XML, etc.

L’appel à la méthode on la fait via HTTP/GET http://url/**session**

### Conclusions

Adam nous a vraiment donné l’envie d’utiliser la plateforme JEE6. La possibilité de déployer juste un war, les interceptors, les singletons, “la disparition” des interfaces …  En bref et en revenant au titre de la conférence : **grâce à la nature LIGHTWEIGHT** de la plateforme, on peut réaliser des applications de grande échelle mais tout aussi bien des applications de petite taille. Merci Adam pour tes conférences, tes conseils, tes publications et pour être venu à Paris !

 

![](/assets/2010/07/2010-07-13-ejb-3-x-lightweight-killer-apps-but-nothing-more-than-adam-in-action/moz-screenshot-6.png)
