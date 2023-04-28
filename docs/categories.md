---
layout: page
author:
  - "Selma"
title: "Catégories"
date: "2023-03-11"
---

Vous retrouverez ci-dessous les liens vers les differentes catégories.

{% for category in site.categories %}

<li>
<a href="/category/{{category|first}}">{{category|first}}</a>
</li>
{% endfor %}
