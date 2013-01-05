---
layout: page
active: calendar
image: church-corner.jpeg
---

# Parish Calendar <small>social &amp; liturgical events</small>

+-- {.clearfix}
&nbsp;
=--

&nbsp;

+-- {.well .well-small .muted .centered}
Coming soon!
=--

+-- {.dl-horizontal}
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
