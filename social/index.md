---
layout: page
active: social
image: church-corner.jpeg
---

# Social Calendar<br /><small>parish social events</small>

+-- {.dl-horizontal .calendar .span10}
<section>
  <dl>
  {% for post in site.categories.social %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a class="pdf" href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
