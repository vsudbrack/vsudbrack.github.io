---
layout: page
title: Publications
description: List of publications
permalink: publications
---


<div id="publications">
    <section class="bg"></section>
    <h1 class="title">Publications</h1>
     
    <ol class="bibliography">
      {% for paper in site.data.publications reversed %}      
      {% include publications.html %}
      {% endfor %}
    </ol>

</div>