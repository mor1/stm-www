---
layout: page
active: calendar
image: church-corner.jpeg
---

# Parish Calendar <small>social &amp; liturgical events</small>

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
