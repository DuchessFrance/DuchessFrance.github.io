---
layout: "post"
author: 
  - "Estelle"
title: "NoSQL Matters ... really ?"
date: "2015-04-07"
categories: 
  - "developper"
  - "les-conferences"
tags: 
  - "buzzwords"
  - "nosql"
---

| #  **Of course it does !** |

[![klecks-orange](/assets/2015/04/2015-04-07-nosql-matters-really/klecks-orange.png)](/assets/2015/04/2015-04-07-nosql-matters-really/klecks-orange.png)

I was last friday at NoSQL Matters 2015, 27th march, in Paris, and it was great. The first day March, 26 th was a training day I could not assist to. So, go there next year if you want to know !

First of all, I am french and I assume the bias my objectivity can have in commenting a technical event like NoSQL Matters, but I have to say the food and drinks were very good during all day.

There were 15 speechs, for beginners or intermediates, mostly dedicated to technical decision makers; the subjects or presented technologies were representative of the actual NoSQL alternatives. With the geek background I have, I would have appreciated more technical talks ... I heard it's in prevision for next events. I also would have appreciated less "commercial" spirit in some of the talks : it's a conference, people are there to discover a software and how it can fit their needs, not to hear "look who funded us, look our clients, we have now an Open Source strategy and we are the best". I think the networking moments are precisely dedicated to these more commercial approaches, not during the talks.

I apologize to all the speakers I can not mention below as I could not assist to multiple presentations at the same time. I have no interest of any kind in mentioning a person or a company rather than another. I just describe what I heard about at NoSQL Matters conference, to throw some NoSQL keywords around, and give an entry point more to the amazing world of non relational datastores and Big Data technologies.

The whole list of speakers and their slides is available [here](http://www.slideshare.net/NoSQLmatters/presentations).

## Quick reviews

[Rob Harrop](https://twitter.com/robertharrop "Rob Harrop") (Java Spring framework and now CTO at Bamboo) introduced the day with a small review of constraints and needs around the databases in general, and reminded the assembly that beyond the NoSQL buzz word, you have to think the data usage you want in order to choose the good system, relational or not, and probably both. He shared 2 really great technical blogs :

- [Kyle Kingsbury aka Aphyr](https://aphyr.com/) and the Jepsen project
- [The Morning Paper from Adrian Colyer](http://blog.acolyer.org/)

 

[Alexandre Vasseur](https://www.linkedin.com/pub/alexandre-vasseur/0/33/362 "Alexandre on linkedin") from Pivotal (Cloud Foundry) annouced the open sourcing of their Big Data Suite (GemFire, HawQ, GreenplumDB, SpringXD), which is built on top of [Apache Hadoop](https://hadoop.apache.org/) and [PostgreSQL](http://www.postgresql.org/) Open Source projects. Pivotal was founded by VMWare and EMC, and is member of the [ODP](http://opendataplatform.org/) project, with Hortonworks, IBM, Teradata and 15+ other partners. This initiative is a shared industry effort to standardize the Apache Hadoop Ecosystem and thus facilitate its integration in enterprises.

 

[Gregory Letribot](https://www.linkedin.com/in/gregoryletribot "Gregory on Linkedin") shared his experience at Criteo. He explained how is implemented their lambda architecture using [Druid](http://druid.io) and pointed why they chose Druid : read-oriented store, cpu efficient, compatible with HDFS, S3 or Cassandra storage, column oriented, fast filtering. More details on the [Druid architecture](http://druid.io/docs/0.7.0/Design.html) page. Druid is developed in Java.

 

Another great usecase was about [Riak](http://basho.com/riak/) usage at bookings.com by [Damien Krotkine](https://github.com/dams "Damien on GitHub"). They chose Riak because it's clustered, distributed, very robust, good and predictable at read/write performance, easy setup, easy administration, good performances. He pointed to us the problem of network traffic regarding to the replication parameters and the Riak cluster architecture, and described how they query the Riak ring of servers to optimize the network traffic . Riak is developed in Erlang.

 

As live coding demos, I saw the one of [David Pilato](https://twitter.com/dadoonet "David Pilato") from [ElasticSearch](https://www.elastic.co/products/elasticsearch) who demonstrated how to use ElasticSearch as an indexing and search database in a Java webapp.

 

[Sara Robinson](https://twitter.com/srobtweets "Sara Robinson") from [Google/Firebase](https://www.firebase.com/) was just terribly efficient and showed how to make a twitter-integrated live chat app in minutes with FireBase. FireBase is only available as a Service until you have really big needs. It's a data storage engine, with synchronization capabilities through push from server to client.

 

[Lucian Precup](https://twitter.com/lucianprecup "Lucian Precup") from Adelean presented the differences between SQL approach and ElasticSearch-like datastores usage based on querying usecases, and thus demonstrated in a concrete way the pros and the cons of each approach in querying data.

 

Please continue the discover in reading other speakers slides [NoSQL Matters Paris 2015 slideshare](http://www.slideshare.net/NoSQLmatters/presentations).

 

## Attendees

We were approximatively 4 to 8 women in the audience, and there was only 1 woman speaker.

NoDiversity sucks. Diversity matters.

NoSQL matters organisation does encourage diversity, and make its best efforts to get more representativity in its events. That's great. And we know how difficult it is to get female attendees and speakers; taking into account the state of the art, that there are still few women at decision making positions, few women in tech fields...

So come on, female IT engineers, we, at the Duchess group can help you prepare your Call For Papers and speeches !

Do some networking as attendee at next [NoSQL Matters Dublin on June, 04th](http://2015.nosql-matters.org/dub/)

Apply for a 25 to 40 min talk at [NoSQL matters Berlin 2015 Call for Papers closes on 31st May](http://bit.ly/BER_CfP)

And the NoSQL Matters Barcelona will be opened soon !

## Stay tuned, and just do it !

 

 

That was my day at NoSQL Matters 2015,

See you,
