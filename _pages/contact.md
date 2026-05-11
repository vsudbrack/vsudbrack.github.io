---
layout: content
title: Contact
permalink: /contact
---

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


Get in touch by email: 

<div class="links" style="text-align: center;">
  <a 
    href="mailto:vitorsudbrack@gmail.com" 
    style="
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 999px;
      background: #f0f0f0;
      color: #515151;
      text-decoration: none;
      font-weight: 500;
    "
  >
    <span
      style="
        display: flex;
        align-items: center;
        justify-content: center;
        width: 32px;
        height: 32px;
        border-radius: 50%;
        background: #4d7a75;
        color: #f0f0f0;
      "
    >
    <i class="fa-solid fa-envelope"></i>    
    </span>
    <strong>vitorsudbrack@gmail.com</strong>
  </a>

</div>

<span style="font-size:0.8em; vertical-align: middle;">
  <i class="fa-solid fa-triangle-exclamation" style="margin-right:3px; color:#3d7c76;"></i> 
    My institutional email address at the University of Lausanne (@unil.ch) will be deactivated soon, so please avoid using it. 
    Previous institutional addresses (@unesp.br and @ufrgs.br) are no longer active.
</span>

<div style="text-align: center; margin-top: 20px;">
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

