---
layout: "post"
author:
  - "pauline"
title: "Duchess at Scala.io"
date: "2024-04-02"
categories:
  - "code"
  - "event"
---

| ![Duchess in Scala.io](/assets/sponsors/scalaio.webp){: width="300"} | Duchess was at Scala.io for the 2024 edition in Nantes |


A couple of weeks ago was the scala conference in Nantes. This article focus of the scala women speakers present at the event.
Also Scala.io organizers offered 3 tickets to the Duchess France community.

# Focus on Monica's talk

Great feedback from Monica. She shared with us about her first year of java and gave very good hints.

**Help others to help you**<br/>
Junior people should focus on providing context, goal, and more generally be great communicators.

**Let us fail**<br/>
Let junior developers making and owning mistakes.
Senior people should let junior people (or new comers in the teams) fail so they can take ownership of their mistakes and learn from them. If you're a senior developer don't solve the problem for you're team mates but rather teach the steps to go through to tackle the problem. Enable the team to solve problems, even it takes a little long to solve these problems.

**Find a community**<br/>
Going in conferences, meetups.
Pair programming, mob programming sessions with your team.

🇬🇧 ***My first year in Scala*** <br/>
[![My first year in Scala](https://img.youtube.com/vi/Jyn2l1nhwZE/0.jpg){: width="600"}](https://www.youtube.com/watch?v=Jyn2l1nhwZE)

# Focus on Johanna's and Mehdi's talk

Starting with a few dance steps, Johanna and Mehdi presented [Kapoeira](https://github.com/lectra-tech/kapoeira/). 
Based on cucmber-scala, Kapoeira is an open source library which implements acceptance tests on kafka streams. 
It provides a simple language based on Gherkin standards (Given - When - Then) so an automated test can be written by a QA, a PO, or a developer.
If you're looking for high level automated test on kafka stream, you should definitely watch this video.   
Plus you will love many references about La Cité de la Peur, a classic french comedy.

🇬🇧🌴  ***Youpi dansons la Kapoeira en testant nos Kafka streams*** 🕺 💃<br/>
[![🌴 Youpi dansons la Kapoeira en testant nos Kafka streams 🕺 💃](https://img.youtube.com/vi/BUQFj2jrGj8/0.jpg){: width="600"}](https://www.youtube.com/watch?v=BUQFj2jrGj8&list=PLjkHSzY9VuL8we5GaQgqWrZSwiKtLM7Cb&index=5)

# Focus on Sophie's talk

If you're not completely comfortable at explaining the concept of contravariance, you should checkout Sophie's talk. She explains this concepts in a very clear way with simple examples.
She gives practical use cases, using an `Animal` type with concrete sub-types.
As a prerequiste you should be comfortable with **substitution**, when you have an `Animal` you can pass an instance of `Dog`,
and with **type classes**, a trait that takes one or more parameters.

#### Invariance

```
trait Rescue[A]:
  def adopt(name: String): A
```
There is no +, `Rescue` is invariant in `A`, even though `Dog` is a subtype of `Animal` there is no relation between `Rescue[Dog]` and `Rescue[Animal]`

#### Covariance

```
trait Rescue[+A]:
  def adopt(name: String): A
```
With that little + `Rescue` is **covariant** in `A` so if `Dog` is subtype of `Animal`, then `Rescue[Dog]` is a subtype of `Rescue[Animal]`

Then you can write
```
def adopt(name:String)(using rescue: Rescue[Animal]): Animal = rescue.adpot(name)

var poppy = adopt(name = "Poppy")
```
#### Contravariance
```
trait Clinic[-A]:
  def examine(partient: A): String
```
With that little - `Clinic` is **contravariant** in `A` so if `Dog` is a subtype of `Animal` then `Clinic[Animal]` is subtype of `Clinic[Dog]`, here the relationship is inverted 
Then you can write
```
def examine(dog:Dog)(using clinic:Clinic[Dog]): String = clinic.eximaine(dog)

val medor = Dog("Médor", bred = DogBred.Labrador)

val examintionReport = examine(medor)(using sumon[Clinic[Animal]])
```

🇬🇧 ***Contravariance: intuition building from first principles*** <br/>
[![Contravariance: intuition building from first principles](https://img.youtube.com/vi/A7t3b0kymFM/0.jpg){: width="600"}](https://www.youtube.com/watch?v=A7t3b0kymFM)

# Focus on Olya's talk

Olya shared her experience on Ukraine's Scala community building and about the book club organized on the basis of Intelias, where I currently work. 
Given the war with Russia, it is now physically unsafe for people to gather, so they have created an online community and meet each week to discuss one chapter of the book. 
This format allows people who were forced to leave the country, as well as invited guests, to join. In addition, they experimented with different formats and added "Scala Breaks" - small reports with examples of interesting problems or simply a scala of related topics. 
Thus, they have already read 5 books and more than 45 meetings.

🇬🇧 ***Ukraine's Scala community building lessons*** <br/>
[![Ukraine's Scala community building lessons](https://img.youtube.com/vi/6skPn0evEE8/0.jpg){: width="600"}](https://www.youtube.com/watch?v=6skPn0evEE8)


It was nice to meet scala ladies, and there is now a new channel #functional_programming in our slack! 

Let's finish with the traditional Duchess picture.

![The traditional Duchess picture!](/assets/2024/03/2024-03-30-scala-io/traditional-duchess-picture.jpg){: width="300"}
                                    