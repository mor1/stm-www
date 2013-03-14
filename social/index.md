---
layout: page
active: social
image: church-corner.jpeg
---

# Social Calendar<br /><small>parish social events</small>

+-- {.dl-horizontal .calendar .span10}
<section>
  <dl>
  {% for post in site.categories.calendar %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
