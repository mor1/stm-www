---
layout: page
active: liturgical
image: church-corner.jpeg
---

# Liturgical Calendar<br /><small>parish liturgical events</small>

+-- {.dl-horizontal .calendar .span10}
<section>
  <dl>
  {% for post in site.categories.liturgical %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a class="pdf" href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
