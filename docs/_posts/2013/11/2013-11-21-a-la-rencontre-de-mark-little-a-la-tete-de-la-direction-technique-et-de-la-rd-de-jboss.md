---
layout: "post"
author: 
  - "acrepet"
title: "A la rencontre de Mark Little, à la tête de la direction technique et de la R&D de JBOSS"
date: "2013-11-21"
---

| Le 26 novembre prochain, [Mark Little](https://twitter.com/nmcl) est invité par le [Lyon JUG](http://www.lyonjug.org) pour une session autour [des middlewares](http://www.lyonjug.org/evenements/jboss-middleware). Ourch, ça pique déjà ;-) Pour démystifier un peu le sujet et vous donner envie d'aller à cette session, nous lui avons posé quelques questions... Attention la team du Lyon JUG parle anglais et prend son plus beau Frrrench Acccccent! |

[![Mark Little](/assets/2013/11/2013-11-21-a-la-rencontre-de-mark-little-a-la-tete-de-la-direction-technique-et-de-la-rd-de-jboss/Mark_Little140x140.png)](https://twitter.com/nmcl)

_Cet interview a été préparé conjointement par la team élargie du Lyon JUG : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote) et [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat). Merci également à [Julien PONGE](http://twitter.com/jponge) pour son aide._

**Lyon JUG Team : Mark, can you briefly introduce yourself ?**

**Mark**: Sure. I lead JBoss technical direction, research and development. Prior to this I was SOA technical development manager, and director of standards. I was chief architect and co-founder at Arjuna Technologies, and Distinguished Engineer at Hewlett Packard when Arjuna was spun off. I've worked in the area of reliable distributed systems since the mid-80s. My PhD is on fault-tolerant distributed systems, replication and transactions. I'm also currently also a professor at Newcastle University.

**Lyon JUG Team : Your Ph.D. was on fault-tolerant distributed systems. How have they evolved since your Ph.D.? What are the big challenges now ?**

**Mark**: Scale. Back in the 1980s and early 90s when I did my PhD we would dream up scenarios for large distributed systems comprising tens of nodes (machines). Each of those nodes would be a single CPU - remember this was before multi-threaded operating systems had taken off and no mainstream language had support for multithreading. These days we take for granted the Web, multi-core machines, multithreading etc. We have customers who regularly deploy their software onto hundreds or thousands of nodes, each of which has multiple cores. Yet our ability to understand and reason about the correctness of those systems has not grown much in the last 20 years. Our programming languages, development tools, testing environments etc. are ill suited for these massively parallel, massively distributed systems.

**Lyon JUG Team : Can you explain the big picture of the middleware division at JBoss ?**

**Mark**: When JBoss was acquired by Red Hat in 2006 we had very few products. Essentially it was the application server and perhaps portal. However, over the last 7 years we have grown the group significantly and the middleware stack, so we now have offerings in the EE space, SOA/integration, portal, data grid, multiple languages, and an equivalent explosion in the number of upstream projects that we are involved with. The term JBoss now applies to the middleware division within Red Hat and we offer various open source stacks to customers and upstream community members alike. Furthermore, we work closely with other product groups within Red Hat that need these offerings, such as cloud: Red Hat's OpenShift leverages various JBoss products to deliver our Platform As-A Service.

**Lyon JUG Team : How do you decide which projects from JBoss.org have to be put into a supported platform or product ?**

**Mark**: The needs of our customers. I'll stay away from the obvious examples here (WildFly and EAP), to try to give more of an insight. Many of the projects we've created or are involved with elsewhere might fall into a category that you could loosely term "utility", for instance ByteMan. Whilst this is a very useful project (we use it a lot within many of our projects, as well as within our productisation and support processes), it's not something that our customers have asked us to support. However, we have other projects, such as Overlord (SOA governance), which we new customers were going to need but didn't at the time we started the project (back in 2008 I think); fast forward 4 years and that need now exists and customers want to get support from us so it's now included in our SOA/integration product. Conversely there will be projects and components that we once supported and now don't want to because there's lack of demand, something else better has come up, or some other reason.

Of course this all ignores the fact that we do offer our upstream communities help without requiring them to purchase a subscription.

**Lyon JUG Team : Conversely, how do you decide that a JBoss.org project is still valuable, even if not used as part of a RedHat product ?**

**Mark**: I may have answered that above, but in case not it's fairly simple: our teams are constantly creating great code in various projects for our upstream communities and our customers. Sometimes they'll create code that perhaps needs to be a separate project. ByteMan is just such an example of that: it began life within the JBoss Transactions project as a way for the team to test various failure scenarios. Andrew Dinn, the ByteMan lead, saw a need for this outside of just transactions, so we span it out as a separate project.

**Lyon JUG Team : Why did JBossAS need a new name ?**

**Mark**: There had been a lot of confusion of the name JBoss in the upstream community as well as with customers. Some people used it to refer to the application server, whilst to others it was JBoss.org or EAP (our productised version), and to others it was the middleware team within Red Hat. So after a lot of thought we decided that it would be better for everyone if we renamed and tried to remove the confusion.

**Lyon JUG Team : What do you think about the recent announcement about the end of the commercially-supported Oracle GlassFish Server ?**

**Mark**: On the one hand I think it's worrying for any of the open source communities that Oracle participates within. On the other I can perhaps see why they did it due to their investments in WebLogic. But trying to be objective, I feel it's shortsighted of them. A lot of great innovation happens within open source. I've worked for closed source companies in the past and whilst innovation is possible, it sometimes needs a more Herculean effort to do.

**Lyon JUG Team : Who are the main competitors for JBoss in 2013? Are they in the open source field ?**

**Mark**: I'll assume you mean the entire middleware group and not just the application server ;-)

It's still some of the usual suspects, such as IBM and Oracle. Pivotal (the SpringSource component) may come back strongly, but it's hard to know at this stage.

One of my biggest concerns around competition is the growing use of open source projects by companies who don't contribute anything back to those communities. I won't name names but it doesn't take a rocket scientist to find a few of them. Yes open source allows this, but in the past these companies were typically the exception. Maybe it's just a passing fad, but for some projects we are involved with we are seeing it more and more. Everyone needs to be a good open source citizen and contribute: code, use cases, bug reports/fixes etc.

**Lyon JUG Team : What do you think the future of the JavaEE ecosystem will be in 5 years from now ?**

**Mark**: I think Java EE will be around for a long time to come because it is so widely deployed. However, everything has a nature lifecycle and nothing lasts forever. We're already seeing people in areas such as Cloud or mobile looking to use components of Java EE without having to use everything else. This has nothing to do with perceived bloatware and everything to do with just using the right tool for the right job and incrementally building up your application stack. Some of these developers may end up recreating a Java EE stack, but some won't. If you look back at what I said at the start, the changes in our distributed environments to real scale and real parallelism will force (are forcing) changes on our stacks and the way in which we develop applications. Just take a look at efforts like vert.x or node.js to see what I mean there. Java EE could evolve to these areas, but I don't think it can do so quickly enough. We'll still see Java EE (7, 8 and maybe 9 and 10) integrated with these new approaches in some way (e.g., SOA), but in 5 years time I believe we'll be well on the way to the new paradigm for middleware.

**Lyon JUG Team : How do manage to keep your head sane with a CTO role at RedHat and a Professor position where you have to both teach and do research ?**

**Mark**: They compliment each other. I think if I didn't have them both then I'd go insane :)

 

### **Merci Mark!**

 

**Les inscriptions pour la session de Mark sont ouvertes! Rendez-vous sur le site du [Lyon JUG](http://www.lyonjug.org/evenements/jboss-middleware).**
