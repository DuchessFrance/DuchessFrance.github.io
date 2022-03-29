---
layout: "post"
author: 
  - "claudia"
title: "A Glance Into the Future of CSS: dotCSS 2015 Recap'"
date: "2015-12-10"
categories: 
  - "les-conferences"
coverImage: "23523984071_53eaf529d7_b.jpg"
---

| Attending conferences is so much fun. And this time was no exception. dotCSS is held in the beautiful **Théâtre des Variétés**, which makes the perfect stage for the amazing speakers invited this year. |

[![](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/12339463_10156192922300411_8426632350468312926_o-1024x768.jpg)](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/12339463_10156192922300411_8426632350468312926_o.jpg)

dotCSS Stage Photo by Claudia Hernández

The first speaker to go up was [Rachel Andrew](https://twitter.com/rachelandrew) well known for her CSS Layout talks. She did a great job explaining what these modern layout methods are all about, including Grid, Flexbox and Box Alignment. To sum things up, the new CSS for Layout consists of:

- Items that understand themselves as part of an overall layout
- True separation of document source order and visual display
- Precise control of alignment - horizontally and vertically
- Responsive and flexible elements by default

Rachel also introduced the **fr** unit which is used to represent proportions, such as the proportions used to distribute remaining space in a flex layout computation.

Sadly, the CSS Grid Layout doesn't have much browser support yet, except IE and Edge mostly because 3 of 5 authors of the Grid spec are from Microsoft. Either way, pretty interesting talk about the tools that will be available pretty soon to help us structure our websites.

[![Andrey Sitnik](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/22974541493_de0c8fa172_b-1024x554.jpg)](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/22974541493_de0c8fa172_b.jpg)

Andrey Sitnik Photo by Nicolas Ravelli

Coming next, was [Andrey Sitnik](https://twitter.com/andreysitnik) author of PostCSS. Used by industry leaders such as Google, Twitter, Alibaba, and Shopify, PostCSS is a tool for transforming your CSS with Javascript plugins that can lint your code, support variables and mixins, transpile future CSS syntax, inline images, and more. The most well known plugin is **Autoprefixer** which adds all the required vendor prefixes to your properties. For people unaware of what PostCSS was, Andrey explained a little bit about the most useful plugins currently available and made it clear that PostCSS should be used to keep code maintainable and not just for syntax sugar.

The next talk was one of my favorites by [Daniel Eden](https://twitter.com/_dte) currently a designer at Dropbox and creator of **animate.css**. His talk focused on the difficulties of maintaining CSS code in large projects. He showed some really interesting statistics about the amount of CSS files and LOC they have been developing at Dropbox for the past few months, their alarming increase and the methods used to fix this issue. Daniel mentioned how sometimes it's easier to write more CSS code than to fix it. He also showed some great tools to manage this issue:

- [cloc](https://github.com/AlDanial/cloc), a small program that counts blank lines, comment lines, and physical lines of source code in many programming languages
- [CSSStats](http://cssstats.com/), a really cool website that shows interesting CSS analytics
- [Parker](https://github.com/katiefenn/parker), a stylesheet analysis tool that runs metrics on your stylesheets and will report on their complexity

After the first break and the opportunity to meet up other developers while eating really tasty macarons, [Una Kravets](https://twitter.com/una) came into stage. She's a developer on the IBM Design team and explained how CSS blend modes, filters, and gradients can be used to implement custom photo effects right in the browser.

[![Una Kravets](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/23307536080_bf99a241b5_c.jpg)](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/23307536080_bf99a241b5_c.jpg)

Una Kravets Photo by Nicolas Ravelli

I saw her before in Berlin at CSSConfEU and I highly recommend watching the video of her [Photoshop is Dead](https://www.youtube.com/watch?v=LY65F2e4B5w) talk since it's a longer version of this talk, in which she had more time to go deeper into the concepts she mentioned at dotCSS.

She's author of [CSSGram](http://una.im/CSSgram/) a library that recreates Instagram filters with pure CSS code an example of how powerful are the concepts she talked about in stage.

Next speaker, [Alan Stears](https://twitter.com/alanstearns) new co-chairman of the CSS Working Group talked about the importance of developers getting involved, asking for new features to browsers and helping file bugs. Stears talked about the fact that browsers prioritize which features to implement based on what developers ask for. He basically encouraged developers to speak up and make noise even if we think that it won't make a difference because at the end of the day it will.

[![23522955561_709766be62_c](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/23522955561_709766be62_c.jpg)](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/23522955561_709766be62_c.jpg)

Tom Giannattasio Photo by Nicolas Ravelli

[Tom Giannattasio](https://twitter.com/attasi) gave a mindblowing talk about the \`transfom\` property. He gave examples of how CSS can be capable of creating pretty realistic 3D forms, like the [Species in Pieces](http://species-in-pieces.com/#) website. Moreover, he showed how animating the \`transform\` rather than the \`left\` property gives a more smooth effect since it is capable of interpolating at sub-pixel positions. At the very least, the \`transform: translateZ(0)\` ; declaration triggers GPU acceleration in modern desktop and mobile browsers. This seems to be the most effective way of triggering GPU acceleration and allowing better animations. Tom did made clear that for more complex effects developers should use WebGL.

The Co-creator of Sass, [Chris Eppstein](https://twitter.com/chriseppstein) talked about a big issue in web development, how often times CSS development is not consider real programming and the ramifications of this misconception. He talked about the beginning of CSS and how it was conceived to be an easy declarative language but evolved into what we know now as CSS3. He mention important issues in the industry, between them the fact that more women are in CSS development that other areas of web technology and how CSS authors might not be paid a developer's salary because management won't think it's actual programming.

The last speaker, [Daniel Glazman](https://twitter.com/glazou) talked about the future of CSS. One of the cool things to hear is that finally Custom Properties ([CSS Variables](http://www.w3.org/TR/css-variables/)) turned into W3C Candidate Recommendation on December 3rd. There was also a lot of buzz for the [Houdini](https://wiki.css-houdini.org/) project, which target is to develop features that explain the “magic” of Styling and Layout on the web. This way CSS can stop being a black box for most developers and help us reach it more easily.

[![23523984071_53eaf529d7_b](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/23523984071_53eaf529d7_b-1024x590.jpg)](/assets/2015/12/2015-12-10-futur-of-css-dotcss-2015-overview/23523984071_53eaf529d7_b.jpg)

Speakers Photo by Nicolas Ravelli

I had a blast at dotCSS. I met amazing developers, listened to really interesting talks and learned a lot. I want to give a special thank you to [dotCSS](http://www.dotcss.io/) and [Duchess France](http://www.duchess-france.org/) for their fellow program and the opportunity they gave me by giving me a ticket for the conferences. Once again, I got myself very inspired by all the people I came across and I can't wait to start preparing to become myself a speaker !
