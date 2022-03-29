---
layout: "post"
author: 
  - "acrepet"
title: "Simon Maple de ZeroTurnaround va faire le tour de France des JUG!"
date: "2013-12-05"
---

| La semaine prochaine, [Simon Maple](https://twitter.com/sjmaple) est invité par plusieurs JUG en France pour des sessions toutes plus intéressantes les unes que les autres. Simon fait partie de la société [ZeroTurnaround](http://zeroturnaround.com), qui est éditeur notamment du produit [JRebel](http://zeroturnaround.com/software/jrebel/). Autant vous dire que Simon en connaît un rayon sur la JVM! Simon fait donc son tour de France : il sera à Lille le lundi 9 décembre, à Paris le lendemain, à Lyon le mercredi, à Grenoble le jeudi et à Marseille le vendredi. Chacun des JUG pouvait choisir entre trois sessions proposées par Simon. Ainsi à Lyon et à Lille vous pourrez assister à une session intitulée "The Adventurous Developers Guide to JVM languages". A Paris, Lyon, Grenoble ou Marseille vous pourrez découvrir son talk "The Great Application Server Debate". Enfin, à Grenoble, Marseille et Paris il donnera sa troisième session "Do you really get ClassLoaders". Pour vous donner envie d'aller à sa rencontre dans une des villes qu'il va visiter, plusieurs personnes des JUG qui l'invitent lui ont posé quelques questions... |

[![Simon Maple](/assets/2013/12/2013-12-05-simon-maple-de-zeroturnaround-va-faire-le-tour-de-france-des-jug/SimonMaple.jpg)](https://twitter.com/sjmaple)

_Cet interview a été préparé conjointement par : [Agnès CREPET](http://twitter.com/agnes_crepet), [Alexis HASSLER](http://twitter.com/AlexisHassler), [Cyril LACÔTE](http://twitter.com/clacote), [Cédric EXBRAYAT](http://twitter.com/cedric_exbrayat), [Antonio Goncalves](https://twitter.com/agoncal) et [Emmanuel Hugonnet](http://twitter.com/ehsavoie)._

**JUG Team : Simon, can you briefly introduce yourself ?**

**Simon**: Sure. I'm Simon Maple, a Technical Evangelist for ZeroTurnaround. I'm passionate about technical communities, hence doing JUG tours, being an assistant organiser at the LJC (London JUG) and a participant on the LJC JCP committee. I've also recently created a new community called the vJUG (Virtual JUG), which is an online JUG that provides content to anyone around the world. Pretty much all my spare time is now spent with my little boy who's almost 2 years old now.

**JUG Team : Can you present your main products at ZeroTurnaround ?**

**Simon**: Our flagship product is JRebel, which is a product that solves one of the most annoying problems in Java--the constant need to redeploy or restart your containers. While classloaders load classes, they cannot reload or unload a class. As a result, there's a need to undeploy and redeploy your applications to get around this problem, which often takes ages. However, JRebel is a Java Agent that sits in the runtime and monitors your source tree for changes. It reflects those changes instantly in the runtime, without needing to build, redeploy or restart your servers. What a breath of fresh air! Our LiveRebel product is more production focused, providing a reliable and automated way of one click releasing your Java, PHP, ruby, perl or python applications bundled together with your config and database changes.

**JUG Team : In your session called “The Adventurous Developers Guide to JVM languages” you give an introductory look at a number of these languages. It looks like that most of the recent JVM languages take advantage of static types. Have statically typed languages win the race? How do you see the JVM languages landscape in 5 years ?\***

**Simon**: Yes, it's interesting to see statically typed languages taking hold of the market. I think in 5 years time, statically typed languages will still dominate, but dynamically typed languages certainly won't disappear. In fact it wouldn't surprise me to see them dominate again in many years to come.

**JUG Team : If you could wave a magic wand, what are the JVM limitations that you would like to delete ?**

**Simon**: I'd certainly like to see classloader problems disappear, but then I guess I'd be out of a job, so it would be good to keep them in ;) With a big push towards IoT and small devices like the Raspberry Pi becoming a device that you could do some serious computation on, I'd like to wave my magic wand so that the JVM didn't have the memory footprint it currently has so that it could be a serious player in that space.

**JUG Team : You talk about JEE application servers, what’s you opinion on the changes in the open source JEE Application Servers : Oracle leaving Glassfish commercial support, IBM withdrawing from Apache Geronimo support ?**

**Simon**: I think both of these have very specific circumstances that made these outcomes, rather than it being any kind of trend. For example, IBM having interest in Apache Geronimo is largely because of WebSphere Application Server Community Edition which was based on the Open Source Geronimo server, so they had a vested interest in the project. However, the WebSphere Liberty Profile, IBM's new lightweight version of the WebSphere Application Server has a brighter future in the IBM vision, as it shares the same code base as it's larger relative and provides a nicer migration story. Oracle on the other hand inherited Glassfish from Sun and I'm not sure they actually made that much money in GlassFish. I certainly didn't see that many deployments using the Oracle supported stack. Their decision was a business driven one which sadly will hurt GlassFish and the community for some years, but I'm confident the community and other interested parties will keep it alive and sponsor it going forward.

**JUG Team : Application servers are lighter and start much faster than they used to. Do you think developers will still need JRebel in the future ? How do you see the future roadmap of JRebel with these improvements in mind ?**

**Simon**: The majority of our customer base are actually Tomcat and Jetty users, two of the fastest application servers on the market today, so yes absolutely :) Pain points include server startup time, but other factors such as the size of the application, time to redeploy, build and package time amount to a considerable time. Projects are becoming more complex with more dependancies which add to the problem.

**JUG Team : Most of the IDEs have some sort of “hot deployment” (e.g. Intellij Idea hot deploys Web resources). Do you see those IDEs as a threat ?**

**Simon**: I think it's great that IDEs are adding these enhancements, but I don't see them as a threat, simply because of the breadth of support which JRebel offers, in terms of server and framework support, remoting support and so on. A typical Java developer will use many frameworks and sometimes many containers and JRebel will provide the same level of support across these environments and across IDEs.

**JUG Team : Devops is starting to be used in companies, what is message ZeroTurnaround has for those companies ? Any tooling for helping them ?**

**Simon**: Our LiveRebel tool is well aligned to helping a devops team, although there's a lot more to devops than simply using a tool, although using the right tools is very important. The biggest challenge I see when teams try to adopt devops is understanding the concepts and changing the way teams engage with each other, trying to remove the silos and bring developers and operations together from the start. We conducted a survey around devops asking teams which tools they use and how they spend their day and the results were very interesting. You can view our free report on it [here](http://zeroturnaround.com/rebellabs/rebel-labs-release-it-ops-devops-productivity-report-2013/).

**JUG Team : Tell us more about your Virtual JUG ?**

**Simon**: I created the Virtual JUG because I find it difficult, particularly with a new family, to engage in communities like the LJC in the evenings after work. So I decided to do something about it and provide access to great speakers live to all Java developers around the world. For people like me, or others who don't have a JUG to go to, or just want more great content, it's available to view live or after the session, as everything we do is recorded and stored on YouTube. You're welcome to join now on [our meetup site]( http://www.meetup.com/virtualJUG/).

 

### **Merci Simon!**

 

**Les inscriptions pour la session de Simon sont ouvertes! Rendez-vous sur les sites des JUG: [le Lyon JUG](http://www.lyonjug.org/evenements/simonmaple), [le Paris JUG](http://www.parisjug.org/xwiki/bin/view/Meeting/20131210), [le Ch'ti JUG](http://chtijug.org), [le Mars JUG](http://marsjug.org/), [l'Alpes JUG](http://www.alpesjug.org/).**

_\* Thanks to your colleague Anton Arhipov who ask this question during his interview of Brian Frank and Andy Frank, the creators of Fantom_
