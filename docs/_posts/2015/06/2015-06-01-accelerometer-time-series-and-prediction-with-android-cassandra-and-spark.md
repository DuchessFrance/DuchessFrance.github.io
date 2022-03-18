---
layout: "post"
author: 
  - "amira.lakhal"
title: "Predict your activity using your Android, Cassandra and Spark"
date: "2015-06-01"
categories: 
  - "coup-de-coeur"
  - "tech"
tags: 
  - "android"
  - "apache-spark"
  - "cassandra"
  - "iot"
  - "java"
  - "mllib"
  - "spark"
---

| Lately, I started a new sport activity: running. When you run, you get really curious about the acceleration, the distance, the elevation and other metrics you can analyse when you practice this kind of sport. As a runner, I started using phone application (runkeeper) and recently I bought a Garmin Watch so I can get more information about my running sessions. But how this kind of application analyse data and compute all this metrics? Let’s focus on one metrics: proper acceleration. |

## What is proper acceleration?

Proper acceleration or physical acceleration is the acceleration it experiences relative to freefall and is the acceleration felt by people and objects. It is measured by an accelerometer. The accelerometer data consist of successive measurements made over a time interval. that's what we call a time series.

[![timeseries](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/img_7973_1024.png)](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/img_7973_1024.png)

## How can I get an accelerometer?

Luckily, most of smartphones contain an accelerometer sensor. The sensor measures 3 values related to 3 different axes as shown in the picture bellow: [![accelerometerSchema](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/photo1.png)](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/photo1.png)

As an Android fan, I implemented an Android App: **Basic Accelerometer** which shows different axes values and the current date as timestamp.

## Let's create Basic Accelerometer Android App!

All source code is available on [my Github repository here.](https://github.com/MiraLak/AccelerometerAndroidApp) First step, I implemented the start activity: https://gist.github.com/MiraLak/924090ad709098284d6c

After creating the starting menu, I have to collect the sensor values in a new activity: “AccelerometerActivity”. To use the sensor, the activity class must implements SensorEventListener. https://gist.github.com/MiraLak/cd7832d742d530598754

Now, I’m able to get information from the sensor and post them to an online REST service. I used [Retrofit,](http://square.github.io/retrofit/) a REST client for Android and Java: https://gist.github.com/MiraLak/5a86bb3586204b8b290f

After that, I added an asynchronous task to post sensor values at each sensor's update: https://gist.github.com/MiraLak/0242d2caa0df24bee28f

Now we're able to launch our app!

#### How to install the app on your phone?

- Download [Android Studio](https://developer.android.com/sdk/index.html)
- Clone the [BasicAccelerometer](https://github.com/MiraLak/AccelerometerAndroidApp) project and open it on Android Studio
- Activate developer mode on your Android phone (must have 4.0.3 version and above).
- Plug your phone, run the app and choose your phone as a target.

The application will start automatically on your phone and you will see the screen below:

[![BasicAccelerometerScreen1](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/Screenshot_2015-05-31-17-10-06.png)](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/Screenshot_2015-05-31-17-10-06.png)

Now as the application is started, we will focus on the REST Service.

## REST Service and Cassandra DB

The android app is ready to sent us real time data: time series of our acceleration. As you may have noticed, I used acceleration bean on my Android app: https://gist.github.com/MiraLak/63261abb04f17fc62e5f The acceleration is posted to a REST service. The REST API receiving accelorometers data and storing them into Cassandra. Each acceleration contains:

- acceleration capture date as a timestamp (eg, 1428773040488)
- acceleration force along the x axis (unit is m/s²)
- acceleration force along the y axis (unit is m/s²)
- acceleration force along the z axis (unit is m/s²)

Rest API sources are [available on my Github here](https://github.com/MiraLak/accelerometer-rest-to-cassandra). All data are saved on Cassandra Data Base.

> [Apache Cassandra](http://cassandra.apache.org/) is an NoSQL database. When writing data to Cassandra, data is sorted and written sequentially to disk. When retrieving data by row key and then by range, you get a fast and efficient access pattern due to minimal disk seeks – time series data is an excellent fit for this type of pattern.

To start Cassandra data base:

- dowload the archive [Cassandra 2.1.4](http://apache.mirrors.ovh.net/ftp.apache.org/dist/cassandra/2.1.4/apache-cassandra-2.1.4-bin.tar.gz)
- open it
- execute this command: `sh /bin/cassandra`

On the REST application, I used [Spring Data Cassandra](http://projects.spring.io/spring-data-cassandra/) which uses DataStax java driver so I can easily interact with Cassandra DB to do different operations:  write, read, update or delete. Spring Data Cassandra helps to configure Cassandra cluster and create my keyspace: https://gist.github.com/MiraLak/14d835992cf2980ceebe

After configuration, I created my application model:

https://gist.github.com/MiraLak/1d2bf2d8e28bff7a3a98

We are trying to store historical data, so I used a compound key (user\_id and timestamp) as they are unique:

https://gist.github.com/MiraLak/ac995c21ee05387cd893

Then, I added the REST controller. The controller receives POST request with an acceleration and insert values on Cassandra DB. https://gist.github.com/MiraLak/fc187ed3a25d7de5d1e6

The acceleration bean used in the controller is the same as defined for the Android app with an extra attribute: userID (I'll explain the usage later).

After defining the REST controller and defining Cassandra configuration, we're able to run the application:

https://gist.github.com/MiraLak/a97d9b9375660b932e50

Spring Boot starts a Jetty Server but you can use Tomcat Server instead. You'll have to update project dependencies: `dependencies { compile("org.springframework.boot:spring-boot-starter-web") { exclude module: "spring-boot-starter-tomcat" } compile("org.springframework.boot:spring-boot-starter-jetty") compile("org.springframework.boot:spring-boot-starter-actuator") compile("org.springframework.data:spring-data-cassandra:1.2.0.RELEASE") testCompile("junit:junit") }`

### Let's launch REST app!

We have already our Andoid. We run now the REST app. Then you have to add REST app URL to Android app: `http://myLocalIp:8080/accelerometer-api`

As soon as you click on start button, Basic Accelerometer app begins to send acceleration data to the REST service:

[![basicAccelerometerScreen2](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/Screenshot_2015-05-31-17-57-43.png)](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/Screenshot_2015-05-31-17-57-43.png)

And then we start see insertion logs on REST app:

[![insertIntoCassandraLogs](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/logs.png)](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/logs.png)

And if we check Cassandra DB, we launch a [CQL](https://cassandra.apache.org/doc/cql3/CQL.html) terminal to do some queries: `sh apache-cassandra-2.1.4/bin/cqlsh`

Here's how data looks like in Cassandra: [![cassandraCqlTerminal](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/cassandraCqlTerminal.png)](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/cassandraCqlTerminal.png)

At this level, we collect data from the accelerometer and we store it in Cassandra Data Base.

## How to analyse accelerometer data?

Remember, we aim to analyse our acceleration data. We must have some references to be able to create a decision tree model.

Luckily this model already exist and there is an interresting article explaining how to create a decision tree model based on acceleration data using data from Cassandra, Spark and MLib [here](http://www.duchess-france.org/analyze-accelerometer-data-with-apache-spark-and-mllib/).

> [Apache Spark](https://spark.apache.org/) is a fast and general engine for large-scale data processing.  [MLlib](https://spark.apache.org/docs/1.3.0/mllib-guide.html) is a standard component of Spark providing machine learning primitives on top of Spark which contains common algorithms , and also basic statistics and [feature extraction functions.](https://spark.apache.org/docs/1.3.0/mllib-feature-extraction.html)

The source code to do prediction with an exiting model is [available on my Github here](https://github.com/MiraLak/activityRecognitionV2). \[Update: this is the latest version with Scala\]

We want now to guess just by analysing our acceleration if we are walking, jogging, standing up, sitting down, goind up or downstairs. The decision tree model contains Resilient Distributed Dataset (RDD) of labeled points based on some features.

> A Resilient Distributed Dataset (RDD), the basic abstraction in Spark. Represents an immutable, partitioned collection of elements that can be operated on in parallel.

The feature include different values: https://gist.github.com/MiraLak/1cc323a08e3880da4695

So to analyse the collected data from BasicAccelerator application, we have to compute features as defined in our decision tree model. We init our Spark Context: https://gist.github.com/MiraLak/74be7d0db0eb81099fb9

Then, we read data from Cassandra Data Base (UserID "TEST\_USER" is hard coded in REST service application, you can update it or add it to Android App).

> [Spark-Cassandra Connector](https://github.com/datastax/spark-cassandra-connector) is a lightning-fast cluster computing with Spark and Cassandra. This library lets you expose Cassandra tables as Spark RDDs, write Spark RDDs to Cassandra tables, and execute arbitrary CQL queries in your Spark applications.

The connector transforms data written into Cassandra into Spark's RDDs: https://gist.github.com/MiraLak/e9276bb60145245f359f

After creating our features and computed them into vectors, we can call the model and try to predict our activity. You must use spark-cassandra-connector-java-assembly-1.3.0-SNAPSHOT or above to be able to save and load models: https://gist.github.com/MiraLak/a130849a9fa7a1916d55

### Last final step: prediction

Now we can launch our prediction to see if we can predict the activity based on acceleration:

1. Launch the REST application
2. Start the Andoid app with REST application URL
3. Do an activity during 30seconds (Sitting, Standing Up, Walking, Jogging or Going up or down stairs) while holding the phone in one hand.
4. Stop the Android app
5. Launch the prediction activity:

https://gist.github.com/MiraLak/b213be868d61f29d227d

Then you will see the predicted activity as a result:

[![predictActivity](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/predictActivity.png)](/assets/2015/06/2015-06-01-accelerometer-time-series-and-prediction-with-android-cassandra-and-spark/predictActivity.png)

### Conclusion

We've seen how to use a connected object (smartphone) to collect time series data and store it into Cassandra. Then we used Spark Cassandra Connector to transform data into RDD. Then we analysed those RDD using a decision tree model created with Spark. This is a just a light simple of the infinite possibilies we can have nowadays with conneted devices.
