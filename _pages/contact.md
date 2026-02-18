---
layout: content
title: Contact
permalink: /contact
---


You can contact me through my email: 

<div style="text-align: center;">
<a href="mailto:vitorsudbrack@gmail.com">
<i class="fa-solid fa-envelope" style="margin-right:6px;"></i>
<strong>vitorsudbrack@gmail.com</strong>
</a>
</div>

<span style="font-size:0.8em; display:inline-flex; align-items:center;">
  <i class="fa-solid fa-triangle-exclamation"
     style="margin-right:3px; color:#3d7c76;"></i>
  My institutional email at UNIL (@unil.ch) will be deactivated soon, so please avoid it.
</span>

### Other links
<style>
  /* remove list markers + indentation */
  #icons { list-style: none !important; padding-left: 0 !important; margin-left: 0 !important; }
  #icons li { list-style: none !important; }
  #icons li::marker { content: "" !important; }

  /* remove the big grey circles behind icons (theme usually styles the <a>) */
  #icons li a {
    background: none !important;
    border-radius: 0 !important;
    width: auto !important;
    height: auto !important;
    box-shadow: none !important;
  }

  /* remove the small dot separators if they are injected by CSS */
  #icons li::before { content: none !important; }
</style>

<div style="text-align: center;">
<ul id="icons">
    {% include social.html %}
    <li>
     <a href="https://www.researchgate.net/profile/Vitor_Sudbrack" target="_blank" title="ResearchGate">
        <i class="ai ai-researchgate"></i>
    </a>
    </li>
    <li>
     <a href="http://lattes.cnpq.br/1687206263257247" target="_blank" title="Lattes Platform (Brazil)">
        <i class="ai ai-lattes"></i>
    </a>
    </li>
</ul>
</div>

### Where I will be next

{% include events.html %}

