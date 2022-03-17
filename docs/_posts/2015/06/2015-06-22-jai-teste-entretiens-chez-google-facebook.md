---
layout: "post"
author: 
  - "Katia"
title: "J'ai testé pour vous : les entretiens chez Google et Facebook"
date: "2015-06-22"
categories: 
  - "developper"
  - "jai-teste-pour-vous"
  - "tech"
tags: 
  - "entretien-tech"
  - "interview"
coverImage: "omygod.png"
---

| Il y a deux ans j’ai participé en tant que speaker à [Google DevFest W](http://www.duchess-france.org/devfestw-paris/) à Paris. Cela faisait 6 mois que j’étais freelance. Peu après, Google m’a contacté pour me proposer de passer des entretiens chez eux. J’ai décliné pour deux raisons : la première, je voulais continuer à être freelance. La deuxième, je ne voulais pas y aller en mode “touriste”. Je savais qu’il fallait un minimum de préparation pour leurs entretiens d'algorithmique et structures de données. Et je n’avais ni le temps ni la motivation (cf je voulais être freelance) pour me lancer. |

Deux ans après, [je venais de lire “Lean In” de Sheryl Sandberg](http://www.duchess-france.org/inspirez-vous-avec-lean-in-de-sheryl-sandberg/) et à ce moment là on m’écrit depuis Londres pour me proposer de passer des entretiens chez Facebook. Et en même temps Google me relance. Après presque 3 ans de freelancing et deux missions, je me suis dit : et pourquoi pas ?

## Le process

Après un premier rendez-vous au téléphone avec les deux recruteurs, on m’explique en détail le process :

1. Un premier entretien téléphonique pour coder dans un document blanc les reponses à des questions pendant 45 minutes. Donc on oublie l'IDE.
2. Si on passe ce premier filtre, il y a aura ensuite une journée complète chez eux pour passer 4-5 entretiens d'algorithme et un d’architecture ou design de système scalable. Encore une fois, on oublie l’IDE pour le coding. C’est avec un crayon sur le tableau blanc.

Le contenu : **très dense**.  Des problèmes autour de la théorie des algorithmes (complexité de temps et d’espace), les structures de données (Stack, Queue, LinkedList, HashMap, PriorityQueue, Arbres, Arbres Binaires, Graphes ... ), des algorithmes de tri (quicksort, merge sort, radix-sort, bucket sort...), de recherche (binary search, recherche texte), de parcours des arbres (pre-order, in-order ...), graphes (BFS, DFS ...), récursivité, programmation dynamique (ou la récursivité “intelligente”), Maths (probabilité, numéros primaires etc.), concurrence, manipulation de bits, de strings etc.

Bref.

[![omygod](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/omygod.png)](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/omygod.png)

 

Et puis, **pas de pseudo-code** ! Tu codes dans ton langage préféré. Le code que tu vas écrire avec ton crayon ou sur google doc tu le copies/colles dans ton IDE et doit fonctionner à merveille. Sans bugs. Et tu testes à la main, en parcourant ton code avec ton stylo. Ni compiler, ni exécuter, ni test unitaire et encore moins de debugger.

## La préparation

Je viens de finir ma mission chez mon client, donc au lieu d’enchaîner un nouveau contrat je me dis que c'est le moment de me donner les moyens. Je décide de me préparer pour passer les entretiens. Je me donne 5 semaines à plein temps pour cela. Je cherche à me préparer pour les entretiens “on site”, même si je peux me faire jeter lors des 45 minutes du premier round. Donc le risque d’un gros investissement pour “rien”. “Rien” car dans le process je compte au moins apprendre énormément. La plupart de choses je les ai apprisses il y a presque 15 ans (la partie math, les arbres binaires etc.), et d’autres je ne les ai jamais vraiment vus ([Big O notation](http://bigocheatsheet.com/), manipulation binaire en Java etc.). Sans parler de la plupart des problèmes proposés que je n'ai jamais codé auparavant.

Je programme les deux interviews le même jour. Le matin ce sera Google et l’après midi Facebook. J’ai envie de réussir les deux, par fierté et challenge même si je sais que c’est très difficile.

**Comment je me prépare ?**

1. J’achète le bouquin [“cracking the code interview”](http://www.amazon.fr/Cracking-Coding-Interview-Programming-Questions/dp/098478280X)
2. Je suis les cours de [coursera](https://www.coursera.org/princeton)
3. Je m'entraine à programmer dans mon cahier à la main avec mon stylo
4. Je programme les exercices sur google doc et après je les copie sur mon IDE pour les corriger
5. Je trouve encore plus d’exercices sur des sites [divers](http://www.programcreek.com/)
6. J’achète l’application mobile [coderust](http://coderust.com/)
7. Je lis des bouquins et des articles sur la [scalabilité](http://highscalability.com/) et [big data](http://www.manning.com/marz/)
8. Je demande à plusieurs personnes de me faire passer des entretiens de test. J’en fait 2 en hang-out et 1 face-à-face.

Après 5 semaines en "full time", j'arrive à coder et à trouver certaines solutions assez vite, j’apprends à la force des choses quelques algorithmes par coeur et à appliquer la récursivité avec beaucoup plus de fluidité qu’avant.

**Bilan**

- 3 cahiers finis.
- 60 pages de google doc.
- N exercices dans mon Eclipse.
- Rêver des algorithmes.
- Me balader dans le métro avec mon cahier, mon application mobile et mes vidéos de coursera.
- Etre heureuse quand je réussi assez vite.
- Me sentir trop nulle quand je ne comprends pas.

## Le jour J

Je me prépare comme si j’allais en entretien chez mon client. Je suis à la maison mais je me mets en chaussures, pas de pantoufles. J’ai lu que ça aide pour se sentir “sérieux”. J'ai même fait la pose "wonder-woman" pendant quelques minutes comme Amy Cuddy explique qu'il faut faire dans son TED Talk ["Your body language shapes who you are"](http://www.ted.com/talks/amy_cuddy_your_body_language_shapes_who_you_are?language=fr).

 

### L'entretien de Google

![Logo_Google_2013_Official](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/Logo_Google_2013_Official.png)

A 11h00, l'heure prévue,  un ingénieur de Google m’appelle via hang-out depuis Zurich. Il m'explique qu'il va me poser 3 questions.

**Première question :** Trouve le médian parmi 3 numéros. Je ne cherche pas l’algo le plus sophistiqué du monde, mais le plus lisible. Si a=1, b=2 et c=3 median 2 Mais a=1 b=1 et c=3 median 1

Je commence à réfléchir, je suis ultra stressée. Si if ceci si if cela… A la fin j'arrive à trouver deux solutions possibles.

**2ème question :** Concevoir une structure de données similaire à un arbre binaire mais avec 4 branches, et ça représente une bitmap en noir et blanc. Je dois  écrire des méthodes, par exemple pour trouver tous les pixels d'une couleur donnée. Je fais ce que je peux, nous n'avons plus beaucoup de temps, j'ai perdu pas mal de temps lors de la première question.

**3ème question :** Donne moi des idées pour améliorer l'expérience utilisateur quand on utilise le navigateur depuis un smart-phone. Tu peux évoquer des solutions techniques "qui n'existent pas". La seule contrainte : tu ne peux pas changer l'infrastructure de tes fournisseurs tiers.

J'arrive à donner plusieurs idées.

A la fin, j'ai quelques minutes pour lui poser des questions concernant Google, le poste etc... L'entretien dure 1h05. Ce que j'apprécie de sa part c'est qu'il a tenu à me poser les trois questions et à me donner l'opportunité de répondre à tout.[](http://www.duchess-france.org/wp-content/uploads/2015/06/facebook-logo.jpg)

### L’entretien de Facebook

 

![facebook-logo](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/facebook-logo.jpg)

 

A 15h30 je teste ma connexion skype avec une Duchess pour assurer que je suis dans les bonnes conditions techniques. Je suis S U P E R stressée !! J'ai l'impression que j'ai tout oublié.

L’ingénieur de Facebook m’appelle par skype à 16h00. La connexion se coupe tout le temps des latences d’une minute, impossible de discuter. Il s'aperçoit qu’il y a des soucis avec son ordinateur, donc il reboot et il change de salle. Une demi heure après on commence à discuter, on a des petits coupures tout le temps, mais bon on arrive à se parler. Il me pose des questions du genre _“sur quoi tu as travaillé récemment et tu es fière”_, _“un bug compliqué ?”_ ou _“donne moi un trait de caractère que les autres pensent que tu as, mais tu ne te vois pas comme ça”_.

On passe à la partie technique, et comme on était en retard ça allait être environ 20 minutes, pas plus. Je dois avouer qu’il regardait un peu trop sa montre et cela m’a stressé d’avantage. Il me pose la question suivante : _“Tu as un array énorme non trié d’integers. Je te donne un integer. Trouve moi si deux integers dans l’array font la somme de l’integer”_

Dans ma tête, je me rappèle d’un coup un exercice similaire que j’ai fait où j’ai eu un souci. Il fallait trouver tous les numéros qui somment le numéro 24 en un grand array. Sachant que si je trouve 12 il faut que 12 soit présente deux fois, et non 1 seule fois ! (Le piège)

Je commence à faire une petite classe pour contenir le résultat de deux numéros. Et là il me dit : ah non, tu n’as pas besoin de trouver le numéro, juste si cela existe ! boolean hasSum(int\[\] arr, int num)

Donc je commence à lui dire que je peux utiliser un HashSet mais je vais partir d’abord sur une solution sans buffer. La solution serait O(N^2) temp et O(1) espace. Nous devons parcourir le tableau, pour chaque élément on cherche dans ce qui reste du tableau si rem existe (int rem = num - arr\[i\])

Une autre solution sans buffer mais avec mémoire O(log N) pour les appels récursifs peut être de trier les numéros en O(N log N) avec Quick Sort, parcourir ensuite le tableau une seule fois et pour chaque élément essayer de trouver le numéro "rem" en O(log N) avec la recherche binaire.

La solution O(N) temps et O(N) espace serait celle qui stocke les numéros du tableau dans un HashSet pour pouvoir checker si "rem" est un numéro qu'on a déjà vu auparavant.

 

Je me suis répété tout ça en boucle pendant des heures le lendemain et les jours qui ont suivi. Pourquoi je n’ai pas codé tout ça ? Pourquoi je n'ai pas dit ça ?

[![23-bigrelease-poster-730685](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/23-bigrelease-poster-730685.jpg)](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/23-bigrelease-poster-730685.jpg)

 

Ma tête a buggé. Je ne voyais pas le truc. J’ai été perturbée par le piège d'exercice du numéro 24 comme Jim Carrey dans le film 23. Je ne saurais expliquer exactement ce que je pensais. Je suis rentrée dans une spirale de confusion et de stress de laquelle je suis sortie dans la minute qui a suivie la fin de l’entretien. A ce moment là tout s'est remis en place dans mon esprit et j'ai tout vu d'un coup. Ma tête a fonctionné aussi mal que la connexion réseau de la personne qui m’a fait passer l’entretien. Une véritable catastrophe.

Gros fail.

Je savais que c’était mort.

## Le lendemain

Je sentais que pour Google je n’avais pas été exceptionnelle, mais vu le stress du moment et les questions, honnêtement j’aurais pu être meilleure mais cela n’aurait pas fait une grosse différence. Je n'ai pas montré une grosse confiance en moi mais j'ai aucun regret, rien à me reprocher. Le résultat pourrait être positif ou négatif ; le dénouement allait dépendre de l'appréciation de la personne qui m’a fait passer l’entretien et de la performance d’autres candidats face aux mêmes questions. Concernant l’entretien Facebook, comme dans une rupture, je suis passée par plusieurs étapes.

[![nullCoder](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/nullCoder.jpg)](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/nullCoder.jpg)

1. **Le choc :** je n'ai pas répondu ça, si ? si ?
2. **La négation :** Non, le gars de Facebook va comprendre que ce n'était pas normal, on va me donner une 2ème opportunité
3. **La colère :** Mais c'est  à cause du stress !! Mais sa connexion n'a pas aide !! Mais c'est la merde ces entretiens !!
4. **La dévalorisation :** Je suis vraiment trop nulle, je ne pourrai plus jamais coder, si je croise l'ingénieur lors d'une conférence je vais trop avoir la honte, je ne sert à rien, je vais partir élever des poulets
5. **L'acceptation :** Je n'ai peut-être pas été assez préparée malgré tout. Je dois gagner en confiance. Je ne suis pas au chômage après tout. Et la météo à Londres n'est pas terrible.
6. **La reconstruction :** Je vais continuer à me préparer, je vais essayer de ["top-coder"](http://www.topcoder.com/), je repasserai les entretiens l'année prochaine et j'écrirai un article pour en parler ! (et le-voilà l'article)

## Le résultat

Facebook : _“Unfortunately, we will not be moving forward with your candidacy for this role.”_

Tu m’étonnes ! :)

Google : _“​Unfortunately we can not proceed further with your application at this time . The interviewer has made the decision that you are not currently ready for the onsite stage as your performance wasn't strong enough._ _Even though there were some positive signs, the engineer wanted to see a more confident performance in terms of coding and problem-solving”_

Pas de soucis !!

Je me sens même encouragée par les “positive signs” ! Je n’ai pas de regrets et j’accepte çela. Ils ont raison : je ne suis pas assez sûre de moi, j'ai manquée de préparation malgré tout, sous le stress j'ai du mal à trouver les réponses vite et sereinement. Les entretiens on-site n'auraient été qu'une perte de temps pour tout le monde.

## Conclusions et conseils aux futurs candidats

Les deux recruteurs m'encouragent à réessayer dans 1 an. Ils me rassurent en me disant que la plupart des candidats ne réussissent pas leurs entretiens du premier coup.

Je vois aujourd’hui ces entretiens un peu comme l’examen pratique du permis de conduire. Examen que d’ailleurs j’ai aussi raté la même semaine :D

L’inconnu nous fait ressentir une grosse pression. Etant débutant, sans avoir assez conduit avec le stress on peut facilement perdre tous nos moyens. Pour tout vous dire, on m’a reproché pendant les cours de conduite, d’être _“parfois trop prudente et rouler un peu lentement”_ et j’ai raté mon examen pour _"excès de vitesse et conduite dangereuse"_. BAM !!

 

[![driving](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/driving.jpg)](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/driving.jpg) Lors de l'examen de conduite, on est jugé par quelqu’un qu’on ne connaît pas du tout et qui va dire oui/non. C'est binaire. Et tu ne peux pas lui dire: "_Attend, je recommence là. J'ai été stressé ! Pendant les cours je conduis très bien !"_ L'examen dure 30 minutes, ils voient plein de candidats et n'ont pas de temps à perdre. Tu dois donner ton meilleur et tu dois montrer que tu maîtrises. Si tu te rates tu peux le repasser, oui, mais dans quelques mois après avoir conduit d’avantage. Plus on conduit, plus on est confrontés aux nouvelles situations de la route, on maîtrise mieux la voiture, on gagne de l'expérience et on gagne en confiance. Plus on est sûr, plus on a les bons réflexes et les automatismes pour faire face au stress et avoir les bonnes réactions au volant de façon plutôt tranquille. Et puis passer une première fois l'examen enlève une partie de l’inconnue. Remplacez _conduire_ par _coder_ et _examen_ par _entretien_ dans tout ce que je viens de dire.

Je n’ai aucun regret d’avoir participé à ce process, au contraire. **J’ai E N O R M E M E N T  appris**. Après des années à coder en entreprise avec des frameworks, j'ai redécouvert les bases et l'algorithme. **Et c'est P A S S I O N A N T**. J'ai envie de continuer à apprendre, à résoudre des problèmes et à m'entraîner, mais plutôt en tâche de fond pour éventuellement repasser dans 1 an.

**Ce qui m’a manqué ?**

Des personnes avec qui m'entraîner à passer des entretiens avant l'entretien final, le travail en équipe pour comprendre certains exercices et en discuter. J’ai été trop seule.

**Un conseil ?**

Tenter la chance en **binôme** pour réaliser et discuter des exercices,  passer à tour de rôle des entretiens hang-out avec du timing, réaliser du code en white-board dans une salle pendant les pauses déjeuner, par exemple, et des entretiens de test sous ce format là. Si vous avez l’occasion d’y passer, je profite cet article pour vous dire de ne pas hésiter à me contacter  à ce sujet.

[![Goten-Trunks-Fusion-dragon-ball-all-fusion-33379377-855-482](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/Goten-Trunks-Fusion-dragon-ball-all-fusion-33379377-855-482.png)](/assets/2015/06/2015-06-22-jai-teste-entretiens-chez-google-facebook/Goten-Trunks-Fusion-dragon-ball-all-fusion-33379377-855-482.png)

 

Je vais peut-être vous écrire un 2ème article l’année prochaine intitulé **“j’ai re-testé pour vous : les entretiens de facebook et google. J’ai encore tout raté”**. Ou peut-être **“j’ai tout déchiré!!”**

Qui sait ! :)

L’histoire nous le dira.
