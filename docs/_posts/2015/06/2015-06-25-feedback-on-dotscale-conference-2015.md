---
layout: "post"
author: 
  - "hytsoung"
title: "Feedback on DotScale conference 2015"
date: "2015-06-25"
categories: 
  - "les-conferences"
tags: 
  - "devops"
  - "distributed-system"
  - "dotscale"
  - "scalability"
---

| The [DotScale.io](http://www.dotscale.io/) conference took place on last Monday 8th June 2015 in Paris. |

 

# What is a « dot » conference ?

This conference is part of a series of tech events lead by the [DotConferences](http://www.dotconferences.eu/) team. The team organizes 5-6 events per year, all in Paris, such as: the DotGo, the DotJs, DotCss and DotSwift conferences. They invite speakers on a particular subject which is their area of expertise, and record their talks on high qualities videos published online afterwards.

 

[![dotScale](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18081245643_34c9bc0d8d_z.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18081245643_34c9bc0d8d_z.jpg)

# Why this conference?

### Location: Paris !

Well, a first good point is that the event is in Paris. Tech conferences are not that many in Paris whereas there are many very talented engineers and big tech companies based here. All those people would be quite happy to have a bigger tech scene for sharing ideas and knowledge. For example [Devoxx France](http://devoxx.fr/) is another conference that looks good to attend to.

### Topics: scalabiliy, devops and distributed systems !

Secondly, DotScale is about « Scalability, DevOps and Distributed Systems »: if you ever worked for a company that serves some kind of internet-related web service and sells it, then all of these areas are where it is very very important to know-your-stuff. And even though we are seeing 3rd party companies selling technologies as their primary product, some companies’ technical recipes have for a long time been classified as « confidential » and part of a competitive advantage. Those things keep growing in interest and issues, there’s few theorization so far and new concepts emerge every year. You have to be damn solid to draw some true long-term opinion in all the havocs and new concepts that emerge every day, if you work on that field.

### Speakers !

Lastly the announced speakers were interesting: the creator of [Redis](http://redis.io/), someone from [Docker](https://www.docker.com/), a talk from a Google principal Engineer on distributed systems, someone from [Reddit](https://www.reddit.com/) and [Netflix](https://www.netflix.com/fr/), one of the main contributor to [PostgreSQL](http://www.postgresql.org/). How they worked can give some good ideas of how your problems can be solved.

 

[![dotScale2015_2](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18080184884_dc1e47ba6a_z.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18080184884_dc1e47ba6a_z.jpg)

# So how fun was it?

### Atmosphere and organization

The overall atmosphere was nice. There were mostly French attendants, but German and Dutch discussions were also heard, as well as there were some English speakers. In terms of organization, it was very well scheduled, no latency or floating moment. The food was good too and in enough quantities or even too much. At the end, the closing cocktail also added beers on the stands.

### Breaks

During breaks, there were a few stands where companies were showcasing their product. You can also get to speak to speakers that were on stage or were going to. If you dare it, of course! It’s quite strange to sip a drink next to someone you never met but actually read all articles. One more point to going to conferences instead of sitting at your desk learning about tech scene through Hacker News!

### Being there

In terms of gender attendants, women were rare, but personally I did not feel too out of place there. Sometimes it’s not easy to be at ease in a public crowd because you feel like everyone stares at the only woman in the room, but that was not the case here.

 

[![dotScale2015_3](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18516433619_a6371d0045_z.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18516433619_a6371d0045_z.jpg)

# How about the content?

It is destabilizing that the website of dotScale does not list the speaker order nor the specific subject of a talk. All we get is the list of names on front page. But it has all been about « scalability or devops or distributed systems », so no big disappointment there. It may be an intended decision by the organizers so that everyone attend all talks with equal attention. But at one or two times, it was quite hard to follow and assimilate because you don’t know what the talk is about.

# The talks and the speakers

## Automatic updates and reboot in production :

[![18082282563_caf160f72b_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18082282563_caf160f72b_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18082282563_caf160f72b_m.jpg)

Matt Bostock is an engineer working at the [gov.uk](https://www.gov.uk/) website. He explains how they set up non-attended auto-reboot procedures. It is scary to allow a linux machine to update its packages and reboot without attendance, but that’s what they did and they tell you how.

 

 

 

## ServerDensity’s views about how handle server oncalls

[![18703539995_3263411ffa_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18703539995_3263411ffa_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18703539995_3263411ffa_m.jpg)

Hosting a 24/24h 7/7 service with highly available servers require a dedicated management of the team and clear procedures. [ServerDensity](https://www.serverdensity.com/) presents some very good best practices: how to ease stressful mandatory duty calls, how to build outstanding incident reports… etc.

 

 

## Time series in distributed databases

[![18082889603_c0d4931799_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18082889603_c0d4931799_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18082889603_c0d4931799_m.jpg)

Data today is often represented by event logs, also named "time series data". A naive storage would be in a database. But big volumes will lead to migration to a distributed database on which time-series data do not fit well. Paul Dix founded [InfluxDb](https://influxdb.com/) based on this factual issue.

 

 

 

## The Borg or Kubernetes cluster management

[![18706059141_9c28af36f8_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18706059141_9c28af36f8_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18706059141_9c28af36f8_m.jpg)

Google extended the art of large scale computing to the next level: [John Wilkes](http://research.google.com/pubs/JohnWilkes.html) explains how Google built over the years an infrastructure where R&D engineers are consumers of a giant cluster of computing machines, with jobs managed remotely, asynchronously and transparently. They also ported their in-house architecture named "[Borg](http://research.google.com/pubs/pub43438.html)" to the open source community with the [kubernetes](http://kubernetes.io/) project, with replacement of their home-made proprietary parts by open source tools that emerged in the meantime (such as [Docker](https://www.docker.com/) and others).

 

## Some Lightning talks

Before the afternoon session, there were 4-5 lightning talks for 5 min each. I will not make any feedback on them but that's a good opportunity for a single developer/expert/tech advocate to raise a debate on a particular subject.

## What is consistency in the world of distributed databases ?

[![18518302278_7dfb51bfea_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18518302278_7dfb51bfea_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18518302278_7dfb51bfea_m.jpg)

Delivered by [Neha Nerula](http://transientneha.blogspot.fr/), graduating from [MIT](http://pdos.csail.mit.edu/) with a PhD on Distributed Databases: an advanced yet very clear explanation of what means « consistency » of the data in distributed systems. Amongst other facts, the audience got a neat explanation of the [CAP Theorem](https://en.wikipedia.org/wiki/CAP_theorem).

 

 

 

## Ben Firshman on Docker as an internet-sized computer

Quite not clear. Unfortunately, the talk was not clear enough for those who don’t know [Docker](https://www.docker.com/) beforehand, while being a bit too light for those who know Docker and other similar tools. Docker is a raising star tool for DevOps at this moment. (wikipedia article [here](https://en.wikipedia.org/wiki/Docker_(software)) )

## Simon Riggs, the roadmap of PostgreSQL

[![18086457113_3ac01ebb5c_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18086457113_3ac01ebb5c_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18086457113_3ac01ebb5c_m.jpg)

That speech really did me think I should have a look at [PostgreSQL](http://www.postgresql.org/) again. [Simon Riggs](https://wiki.postgresql.org/wiki/Simon_Riggs'_Development_Projects) has a general mature vision of data storage and query. PostgreSQL does a lot of things that are « noSQL » oriented. And it plans to release even more interesting features on its roadmap.

 

 

 

## The Jepsen series

[![18521840419_0abc7dbf7b_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18521840419_0abc7dbf7b_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18521840419_0abc7dbf7b_m.jpg)

The slides were peculiar. You need to know beforehand this guy's series of articles ( [Jepsen](https://aphyr.com/tags/jepsen) ). Kyle Kingsbury is popular for posting full-length articles where he trims down popular data storages and exposes their weakest link. We unfortunately tend to believe what the « readme » says, while his articles can prevent that a server on-duty call wakes you up in the middle of the night.

 

## John Graham-Cumming from CloudFlare

[![18087809203_e85e6541bc_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18087809203_e85e6541bc_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18087809203_e85e6541bc_m.jpg)

[Cloudflare](https://www.cloudflare.com/)'s is a CDN service that also filters on-the-fly large amount of internet traffic to detect malicious attacks. They treat an incredible amount of data per sec. J. Graham-Cumming explains their stack ([NGinx](http://nginx.com/), [Cap'n'proto](https://capnproto.org/), [Kafka](http://kafka.apache.org/), [LuaJIT](http://luajit.org/), [Go](https://golang.org/) ...). Unfortunately, he said little about their streaming algorithms. They advocate for a « no logs stored » principle, which raised quite some debate on the break afterwards.

 

## Disque - a distributed message queue based on Redis

[![18682718206_c486812858_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18682718206_c486812858_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18682718206_c486812858_m.jpg)

If you’re not familiar with [Redis](http://redis.io/), have a look at [this highly performant key-value store](https://en.wikipedia.org/wiki/Redis). It is famous and popular: despite it does little compared to fully featured databases, it works very well with very large data in production situation. Also, the versatile format meets most usual needs. Lastly, it is open source. [The creator of Redis](https://github.com/antirez) speaks about his latest work on a message queue system, named [Disque](http://antirez.com/news/88).

 

## Jeremy Edberg who worked for Netflix and Reddit

[![18523156039_15b80328a1_m](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18523156039_15b80328a1_m.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18523156039_15b80328a1_m.jpg)

From a homemade small internet startup to a large scale business, [Jeremy Edberg](https://www.linkedin.com/in/jedberg) explains how you should organize your engineering as the company grows. Also, there's a practical book to test your servers' reliability and teams by simulating random runtime failures ([the Simian Army](https://github.com/Netflix/SimianArmy) from Netflix).

 

 

Note: The videos were not published yet when this article was written, but you can check their availability through the [DotScale.io](http://www.dotscale.io/) website.

## One final thought

People come to those conferences in groups and they tend to stick to themselves during breaks. We, as developers, are not good at speaking to strangers at a buffet. Shame on us: we should all get a training about speaking to strangers. Part of the success and « happiness » of participating to a tech conference is not only about what you can learn technically (which is still, eventually, available online), but what you can derive from speaking to others or from teaching to others.

 

[![dotScale2015_4](/assets/2015/06/2015-06-25-feedback-on-dotscale-conference-2015/18084206893_95174404df_z.jpg)](http://www.duchess-france.org/wp-content/uploads/2015/06/18084206893_95174404df_z.jpg)

## Special acknowledgements

**A big thanks to Duchess France and the DotConference Fellow partnership, who provided for the entry fee.**

Copyright **©** All photos are from the [Flickr shared photos on DotScale 2015](https://www.flickr.com/photos/97226415@N08/).
