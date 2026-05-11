---
layout: page
title: News
description: List of news
permalink: news
---

<div id="publications">
    <section class="bg"></section>
    <h1 class="title">News</h1>
     
<div class="news-list" style="padding: 70px 0 15px 30px;">
  {% for item in site.data.news reversed  %}

    <div 
      class="news-item"
      style="
        display: flex;
        gap: 1rem;
        margin-bottom: 0.8rem;
        vertical-align: top;
      "
    >

      <p style="
        margin: 0;
        min-width: 90px;
        font-size: 0.9rem;
        color: #515151;
        font-weight: 600;
        text-align: right;
      ">
        {{ item.date }}
      </p>

      <p style="
        margin: 0;
        line-height: 1.4;
        font-size: 1.05rem;
        text-indent: 0px;
        vertical-align: middle;
      ">
        {{ item.text }} 
{% if item.url %}
<a href="{{ item.url }}" target="_blank" title="More">
  <span
    style="
      display: inline-flex;
      align-items: center;
      justify-content: center;
      vertical-align: middle;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background: #f4f4f4;
      color: #515151;">
    <i class="fa fa-arrow-right" style="font-size: 11px;"></i>
  </span></a>

{% endif %}
      </p>
      

    </div>

  {% endfor %}
</div>

</div>