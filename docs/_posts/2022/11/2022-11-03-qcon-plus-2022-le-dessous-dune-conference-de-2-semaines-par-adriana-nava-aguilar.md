---
layout: "post"
author:
  - "adriana"
title: "QCon Plus 2022 : Le dessous d’une conférence de 2 semaines par Adriana NAVA AGUILAR"
date: "2022-11-03"
categories:
  - "les-conferences"
---

_**Adriana NAVA AGUILAR** est Software Engineer @SoatFr. Elle adore le piment, les tacos, sa petite ![:dog2:](https://a.slack-edge.com/production-standard-emoji-assets/14.0/google-medium/1f415.png) , les communautés et aller digresser lors de conférences et des meetups, en particulier ceux de SoCraTes, de @DuchessFr et @LadiesCodeParis._

### Introduction

La conférence QCon Plus, édition totalement en ligne des conférences QCon, a eu lieu le mois de mai. J’ai eu la chance d’y assister et je vous partage mon expérience.

### Présentation de QCon Plus

QCon Plus est une conférence en ligne, qui se déroule pendant presque 2 semaines (du 10 au 20 mai pour cette édition). Elle regroupe des Software Engineers & Practitioners, qui partagent leurs expériences, connaissances, échecs et succès.  
Chaque jour de conférence est organisé en “Tracks”. Chaque track est composé de talks/séances de 50min se terminant avec une session de QA (Questions et Réponses) avec les speakers. Le programme complet se trouve ici:  
[https://plus.qconferences.com/schedule/plus2022/may/tabular](https://plus.qconferences.com/schedule/plus2022/may/tabular)

### Tracks

J’ai l’impression que les tracks reflètent les intérêts en vogue de l’année en cours :  l’architecture des applications, la résilience, les microservices et le Java (:’( pas de .Net). Voici la liste complète des tracks de 2022 :

![](https://lh5.googleusercontent.com/lC2U4UECk-x4fAq7JKRywy-3UQsFiCfC0KVb70xJlwiSJ_4R_xnamHVQ_p8jB65YwUG_U1iYL_KfwrLLJzoQ7h2ts-5OuenZs6xS7DXOqAn7Yv8ZF0OhFy0uGM229Wv_JCFm_npZgeyA0IPv3w7swosaQQs6V_tuh_rSqNfggL1NRm_-NPnSPepeFw)

### Speakers

Les postes et les profils des speakers étaient très variés. Par exemple, des auteurs, des Principal Engineers, des VP’s, des Developer Relations Engineers, des CTO’s. Travaillant dans d’entreprises aussi très variées comme : Microsoft, JetBrains, AWS, Monzo, SeatGeek,  Hasura, Shopify, Cockroach Labs, Twitter, Deepgram, … 

Ceci est un extrait en image des speakers, et la liste complète est disponible par là :[https://plus.qconferences.com/speakers/plus2022/may](https://plus.qconferences.com/speakers/plus2022/may)

![](https://lh3.googleusercontent.com/frDspVB3Bh6gZ92_Oh1YVTVtmznjO2RAjGykhzmroYwglCzhWgpEXAFJGNpCbJ4so1lG-D8HBhRKMOONPz6fURgXF5QIsAw1ReOt_8bRtxaMYmYiwXtd2gnCBUe-HAYsseS114-xfYsltxy5j0VaYewF4a1a7C05qa6Ik7xdXqs410OJt2Qyz342PA)

![](https://lh6.googleusercontent.com/yJQHheqIK00MC2Bfc_9WcAvnAL54U7oP-Iv11dVTHyvEOynv_WatSjKrHXYqOho_406mTMjUQm8Noq3mAxcLREETufU6vpXaoTB8FJilMQinmh6BpPXbwfIR_8MKL36V1oXLqxFXCRpb3KYaTThO3wta0zpr4JGOMi39VEGfJZBXcZBWNuEM8m459A)

![](https://lh3.googleusercontent.com/lJU9lJKChuB9hzEXS0sycPD1Clj-Juef6yn7J-cv1UZSJ7B_Ft2dmjcmb-zixct88rj8h2bP-LdWjugI1aIfXOFdkekV45opn5w6UA1Qw8Rl6XL4wLiHpyYXirDnc1ZpkqHEnDV32sG-Brbbp5-VP1X5GjtNQ1dRrFLCn23Rfs1jVk0RZeRDJjY_NA)

### Le contenu (at a glance)

J’ai compté **3 keynotes, 58 talks, 2 workshops et 3 un-conférences** dans l’agenda. Inutile de vous dire que je n’ai pas pu tout voir. Mais cela n’est pas du tout grave. Car les **séances sont disponibles en ligne** pour les voir et revoir, et beaucoup de **présentations sont téléchargeables** pour les participants**.** Et pour les non-participants il existe la possibilité de consulter les **newsletters InfoQ** où certaines des séances sont présentées en tant qu’articles.

### Les talks que j’ai particulièrement apprécié

### “Hone Your Tools: Building Effective & Delightful Developer Experiences”

**Speaker**: Suhail Patel, Staff Engineer @Monzo  
**Presentation**: https://www.infoq.com/presentations/monzo-tools-deploy/

Dans le talk **“Hone Your Tools: Building Effective & Delightful Developer Experiences**”, j’ai appris les termes : “**Developer Experience & Developer Enablemen**t”. L’idée générale derrière les deux termes serait de rendre le travail des devs plus agréable, plus fluide et plus efficace. 

Chez **Monzo néo-banque**, l’équipe de développement travaille sur plus de **2000 microservices** et **livre plusieurs centaines de fois par jour en production**. Ils ont atteint cette cadence grâce au “Developer Enablement” qui se matérialise par l’**utilisation de plusieurs outils/CLIs standards, pour les tâches répétitives ou de boilerplate(\*)**. Une fois le travail répétitif mis de côté, les développeurs peuvent se focaliser sur le code fonctionnel. 

J’ai demandé à Suhail Patel, quel était le processus de sélection et d’adoption “des outils standards”, et il a répondu que le processus était assez **“organique”**. Il pense que chez Monzo les ingénieurs ont une **curiosité naturelle**, une **“Culture Engineering”**. Ils testent un outil ou une stratégie dans une équipe, et si cela marche, ils la **partagent aux collègues**. Les collègues testent à leur tour, et si cela marche pour eux, un nouvel outil est né.

Je pense que cette stratégie doit également faciliter la compréhension et la mobilité inter-équipes. De plus, j’adore que les développeurs porteurs d’idées soient écoutés.

![](https://lh3.googleusercontent.com/zvj7HWGRG36VGyvHJrhJww87I59hnw9CQf6Xbg7azBbGhm4Pp1FNnM_kHyQ1UM2YQ8qHDwEmnY41vaWphG5zTTMk-zEtxbc5_8whH2sGppf9BsN4sXOcjoEFGrcgKMuU2QLiwB6JLHZH71kyXv35k9sLYexJw9WIFLBC1VIRP5xuKCshX17ydrsbeQ)

### How SeatGeek Successfully Handle High Demand Ticket On-Sales

**Speakers:** Anderson Parra, Senior Software Engineer @SeatGeek

                  Vitor Pellegrino, Director of Engineering @SeatGeek

[https://plus-archive.qconferences.com/plus2022/presentation/how-seatgeek-successfully-handle-high-demand-ticket-sales](https://plus-archive.qconferences.com/plus2022/presentation/how-seatgeek-successfully-handle-high-demand-ticket-sales) 

**Podcast**: [https://www.infoq.com/podcasts/handling-high-demand-ticket-on-sales-parra-pellegrino/](https://www.infoq.com/podcasts/handling-high-demand-ticket-on-sales-parra-pellegrino/)

L’équipe **SeatGeek**, qui produit des **systèmes de ticketing à haute demande** comme celui de l’**UEFA Champions League**, nous a présenté dans son talk “**Successfully Handle High Demand Ticket On-Sales**” les challenges du ticketing : la concurrence, les queues, les “Waiting Rooms et les zones protégées », pour en citer quelques-uns. 

En plus des concepts, j’ai adoré qu’ils nous partagent leur architecture et  comme ils matérialisent ces concepts avec Fastly, Lambdas, Dynamo et Datadog.

![](https://lh6.googleusercontent.com/j16M9KoKpjqfsXWAORAv4cD8jE4XQvhg_PBQVDF3u6qZBjijvw2cVP3Sv-ICqqDn0NoMrP9ziCwPKqThpOfX2chwRFU6uQjTH1l_kjGqG4GTNWlR4lA870_sXJ8zqX0YrnV4eomjI4WdDdJpWwuAoYAblrr07Dz2aDnsn4apgAbKtH6GdkRRSc83ew)

### “Transcribing Twilio Phone Calls With Deepgram”

**Speaker:** Tonya Sims, Python Software Developer Advocate @Deepgram

[https://plus-archive.qconferences.com/plus2022/presentation/transcribing-twilio-phone-calls-deepgram](https://plus-archive.qconferences.com/plus2022/presentation/transcribing-twilio-phone-calls-deepgram)

Dans le webinar “**Transcribing Twilio Phone Calls With Deepgram**“, Tonya Sims (@TonyaSims), qui au passage, a un parcours professionnel passionnant, nous a montré comment **transcrire des appels**  **téléphoniques en texte**, en utilisant **Twilio et Deepgram**.

![](https://lh4.googleusercontent.com/H4Jcx2lO9QeLwkdG7dPFAeA23NMtjoDJswNKjPK6M0siQHZ6luR6WRRqtPNNUD5MvinhSGEnu5EznD1qaAyyAEV3pnyR_GaBG-zFZNU82iwb_AhmCRdO-OcLNPTHRZiOSXRrLhUpY9iQ-F0UJRFFaOuwZKAcpNnXF2xh3Nysy9ANXhH7EiHGQyKsWw)  
Si comme moi vous avez envie de tester, voici son blog: [https://shorturl.at/fhyTU](https://shorturl.at/fhyTU) et si vous êtes fans de Python, je vous conseille d’aller voir celui-ci aussi: [https://shorturl.at/mJKP2](https://shorturl.at/mJKP2).

### “Examining the Past to Try to Predict a Future for Building Distributed Applications”

**Speakers:** Mark Little, VP of Engineering @RedHat and CTO @JBossMiddleware[https://plus-archive.qconferences.com/plus2022/keynote/examining-past-try-predict-future-building-distributed-applications](https://plus-archive.qconferences.com/plus2022/keynote/examining-past-try-predict-future-building-distributed-applications)

La keynote “**Examining the Past to Try to Predict a Future for Building Distributed Applications**” presentée par Mark Little, VP of Engineering @RedHat et CTO @JBossMiddleware, parcours et vulgarise l’évolution des systèmes distribués. Ces deux images résument bien l’esprit de la keynote.

![](https://lh3.googleusercontent.com/vLjdZF6OsNRTJbGG7ZDYs_YXBO2DfXSQtJDDlUeKx-o_w8BzMqpv0SkIoF2kEn3HHb-30hjuh4a0q04hu_lzn2CsB5DFzR4YoaBNt681Eq9Lst8yokzJ08-wQ642l6LsnK7ZAAYkqYSZ0MH81ul3ExOzsENqOkzEEHsl20nHg2_FVKOd2RjhV_BwPg)

![](https://lh4.googleusercontent.com/Jpa9HMIn3-a5Pe_n0UgAAPWNxEpUzorr-uX9GQWe-6AAYTzFEm0dqQwxFPAE0hG56ldF6PFu8dtoA9KYLhjIEZvXDR_sLk2Xz4Pdlap6E3TmuACXlGVrcgjSoSVR32BH9pAvabP7lbzgCIkBrjufWZ-ZX2z6qRRVCS3GPA2mVdGr1RuJUIsGzPU69A)

### “The Secret Strategy for Landing That Staff Engineer Role”

**Speaker:** Nicky Wrightson, Ventures CTO @blenheimchalcot

[https://plus-archive.qconferences.com/plus2022/presentation/secret-strategy-landing-staff-engineer-role](https://plus-archive.qconferences.com/plus2022/presentation/secret-strategy-landing-staff-engineer-role) 

**InfoQ:** [https://www.infoq.com/news/2022/04/remain-tech-staff-plus/](https://www.infoq.com/news/2022/04/remain-tech-staff-plus/)

Dans le talk “**The Secret Strategy for Landing That Staff Engineer Role**”, Nicky Wrightson (@NickyWrightson) nous a expliqué le rôle de **“Staff Engineer**”. Le rôle de **Staff Engineer** est plutôt moderne. Une fois **Senior**, les choix de carrière pour un Ingénieur étaient de **devenir manager ou architecte**. Mais actuellement il y a plein de **nouveaux “parcours d’évolution” dans la tech(\*)**, peut-être autant que de Cultures Tech et le titre de Staff Engineer en fait partie.

![](https://lh3.googleusercontent.com/rzcVmHkEpkCUVTOibgxAMqCsVtXHIo4rFmeQd0OLfcf5vX-HkdJrUjzG4LSglBKxAMB3QfuF_oC3hpHnD_SIVCpUURBPsU3JUte-T09HmHde9A8XrFJy3AbZI68DM627HeQtpGUk2HLF57l-FkiyRT5Dd1zfxMqAtrTVq7_Q55I8s5AgJEAVxTUH0w)

![](https://lh5.googleusercontent.com/kVOQRaTLmDX2rwqGjbo8sDDbu9TEm3hbclYLl8LZ33NY1O8DsihmLknHpJ98MHwURhgaKOg1-JPn2f2ZNmctHL4_IsoNLC2cgtt4bdqoq7ZTsv8hiXuOGVWl0je8gAjRRvVg1ANbNLfg_Nv5rEILppTfcCU_t1N3oGzw3KkAu0HiuubFqgqXWwSo2w)

Nicky décrit **le rôle de Staff Engineer**, comme **un rôle de « facilitateur et habilitateur”**. Le travail d’un Staff Eng. est **transversal**. Et il sera **autant intéressé par la technique****que par****les gens**.

Un **Staff Engineer n’est pas le développeur star** d’une organisation mais il mettra tout en place pour que **ses équipes puissent briller et réussir**. Un tel rôle existe et est nécessaire lorsque la complexité d’une organisation le justifie.   
Dans ce talk, j’ai découvert aussi le terme **“Career Framework”.** Nicky conseille de **demander le “Career Framework” d’une entreprise avant de la rejoindre**.

![](https://lh3.googleusercontent.com/li0Gpn-SxbHmoFCdrcdX1dPBBMP6r1-NfgJmF-Jp-HQycV62O4W9wZ1n-LpNRupLoRKG9NOLjo7Uzrdi_Ay5wtoOuOPX2Kn32jVPddB5owfihAwPbXAAK73tjGRVcSvlVX21Z5SWhS6E9jCkBZpkrnx7th3SGZsHtoDn54XNlaqwC7IVpD1nYS6kZQ)

![](https://lh3.googleusercontent.com/sTpp94B7QhdONAx99BAfbVqZF9DawIQxMT_IC4oZZaRc2WyaxO_uHo2hy1QHZVLZbq3wye-0ph1Lknp0fR-_XnXUBOTnvmhlhzx-JFxlPhdy4epRDWczZzpQABKhX-IGDZkbgaGrINNzXJWGoqWb05NVFucFEfCbLXBE5KGtxmRrs_xo3psGegtf1w)

### “How Open-Source Engagement Can Accelerate & Solidify Your Staff+ Career”

**Speaker:** Alex Porcelli, Sr. Principal Engineer @RedHat

[https://plus-archive.qconferences.com/plus2022/presentation/how-open-source-engagement-can-accelerate-solidify-your-staff-career](https://plus-archive.qconferences.com/plus2022/presentation/how-open-source-engagement-can-accelerate-solidify-your-staff-career)

**Speaker’s thread:** [https://twitter.com/porcelli/status/1501663895047454722](https://twitter.com/porcelli/status/1501663895047454722) **InfoQ**: [How to Accelerate Your Staff+ Career through Open Source Engagement (infoq.com)](https://www.infoq.com/articles/staff-plus-open-source-engagement/)

![](https://lh3.googleusercontent.com/TH9us9eMByuFQKnHaVuNQZD0In3KV1QD_-8fr87X09oJShp-HyNmwKbL97WXuxcXENrisuC3fQmUUBzCAOL-Gjzgoh08tbkqgZqDE1gbMCemPVrHGmVcEny0QbQ9M2I6rhSdnJ479yI4TiUfXAxUId_KFHq83WDJ0L3JzVeuDUPOlgx7o_Bjf9_YKg)

J’ai beaucoup apprécié le talk “**How Open-Source Engagement Can Accelerate & Solidify Your Staff+Career**”, d’Alex Porcelli (@porcelli), Sr. Principal Engineer @RedHat.

Car en utilisant son expérience et celles d’autres développeurs de projets Open Source (OSS), Alex construit un **« méta framework » pour réussir sa contribution aux projets OSS.** 

D’abord, Alex a décrit quelques **exemples de “Professional Paths”** de devs qui ont commencé en tant que **contributeurs des projets OSS, pour ensuite devenir membres de la Core Team du projet**. Et ensuite, il a mis en avance les skills, pratiques et méta connaissances qui leur ont permis de réussir cette intégration. 

Voici certaines des **stratégies** qu’il a évoquées :

1.  Choisir **un projet Open Source,** c’est choisir **d’intégrer sa communauté**
2.  C’est important de **prendre en compte la culture de la communauté**. Une ressource intéressante pour approfondir cette réflexion est le livre [The Culture Map – Erin Meyer](https://erinmeyer.com/books/the-culture-map/) 
3.  À l’arrivée dans la communauté, il vaut mieux commencer par **observer** comment les choses se font. **Avant de faire** et d’engager une bonne **communication**
4.  Dans un équipe/communauté, il faut suivre avant de demander à être suivi, pour avoir un vrai impact. Ou en anglais : **“In teams to lead you must first follow”** 
5.  Dans **l’Open Source, la qualité prime** et **il y a peu ou pas de place pour la politique** 
6.  **Contribuer** à un OS est super. Et **capitaliser**, c’est-à-dire **faire connaître** **notre contribution** à l’extérieur de **la communauté** est encore mieux. Ceci aide notre parcours professionnel ainsi que le projet Open Source
7.  Quelques exemples de contributions intéressantes à un projet OS sont : écrire un **blog**, résoudre des “**issues**”, donner du **feedback constructif**, et évidemment **coder et tester**

### Les Goodies

Si comme moi vous êtes fan de goodies, vous ne serez pas déçu de **QCon Plus**, car il y en a beaucoup et ils ne prendront pas de place dans votre appartement. Nous avons eu par exemple des eBooks, des articles techniques et des codes promotion venant des sponsors.

### Qui est derrière QCon Plus & InfoQ

La Qcon Plus est organisée par le groupe **C4 Media**, C4 = Community of Communities created by the Community & for the Community.

En plus de la QCon Plus, qui est totalement virtuelle, C4 Media organise plusieurs conférences physiques à San Francisco, New York, London, Munich, Beijing, Shanghai, Guangzhou…   
Et si vous aimez les articles InfoQ, vous pouvez participer à leur rédaction.

Les détails sont décrits par là : [https://bityl.co/D4Oi](https://bityl.co/D4Oi) , [https://bityl.co/D4Ok](https://bityl.co/D4Ok), et vous pouvez contacter Livia Marinescu par mail : [**livia.marinescu@infoq.com**](mailto:livia.marinescu@infoq.com) **.**

### Love & conclusion

J’ai particulièrement aimé dans cette conférence :

– L’organisation en **tracks** qui permet de se focaliser sur un sujet spécifique 

– La **qualité** et la **bienveillance** des **speakers**

– Les **retours d’expérience de speakers** qui montrent bien qu’ils sont des “**doers**”

– Les **séances QA** après le talk et encore après sur **slack**

– La stabilité de la **plateforme vidéo**

– La possibilité de **voir et revoir les videos** et d’**avoir les diapositives** des speakers

– Le **slack pour échanger** avec les participants et les speakers, **même après la conf**

– Le **sens du partage de la communauté**, matérialisé en vidéo sur le channel et sur les newsletters InfoQ:  [https://www.youtube.com/nctv](https://www.youtube.com/nctv/featured), [https://www.infoq.com/infoq/](https://www.infoq.com/infoq/)  

![](https://lh4.googleusercontent.com/lFI07vUb3zNjn5l73Kua9HflWDz6CHj6gn1gc-9vUfUfTtpxQnBEzBnPDdGVw5UofqWD2Jo22_4rLxAw-rMZCqUqmzVoMwPbjB-pvxHo80gcE0OKlc1qbK__4oo7iqjLgfCz95i68o7ISL4wgnxAa-8UHfcAfk_rYTD8sLEHTkzyvGvyqZ-lOhpv7Q)

– La **proximité**, **l’inclusion** et la **sympathie** de toute **la communauté**, matérialisées par exemple avec sa “**Bourse Diversité**”. D’ailleurs j’ai participé à deux éditions de la QCon Plus grâce à cette bourse.

  
Je pense que la **QCon Plus** est une **super conférence pour** tous et en particulier pour moi car en tant que **consultant**, je fais grâce à QCon Plus une espèce de veille technique accélérée pendant **2 semaines**.

**Liens:** 

[https://plus.qconferences.com/recap/may2022](https://plus.qconferences.com/recap/may2022)

[https://qconferences.com](https://qconferences.com/)

[https://www.infoq.com](https://www.infoq.com/)

[https://c4media.com](https://c4media.com/)

**Glossaire** :

 **\*Boilerplate:** refers to sections of code that have to be included in many places with little or no alteration. It is often used when referring to languages that are considered verbose, i.e. the programmer must write a lot of code to do minimal jobs.

[https://www.freecodecamp.org/news/whats-boilerplate-and-why-do-we-use-it-let-s-check-out-the-coding-style-guide-ac2b6c814ee7/](https://www.freecodecamp.org/news/whats-boilerplate-and-why-do-we-use-it-let-s-check-out-the-coding-style-guide-ac2b6c814ee7/)

**\*Parcours d’évolution:** 

[https://medium.com/geekculture/the-software-engineering-career-ladder-3667282aeaa2](https://medium.com/geekculture/the-software-engineering-career-ladder-3667282aeaa2)