---
layout: page
title: Archive
---

<ul class="archive-list">
  {% for post in site.posts %}
  <li class="archive-item">
    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
    <span class="archive-date">{{ post.date | date: "%B %-d, %Y" }}{% if post.author %} &bull; {{ post.author }}{% endif %}</span>
  </li>
  {% endfor %}
</ul>

{% if site.posts.size == 0 %}
<p class="no-articles">The archive is currently empty. Check back after our first edition.</p>
{% endif %}
