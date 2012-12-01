---
layout: default
active: commentary
---

# Gospel Commentaries

Deacon Anthony's weekly gospel commentary will be listed here. 

<div class="commentaries">
  <ul>
    {% for post in site.posts %}
    <li>
      {{ post.date | date: "%B %e, %Y" }}
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
    {% endfor %}
  </ul>
</div>
