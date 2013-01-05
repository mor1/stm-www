---
layout: page
active: justice-peace
image: church-corner.jpeg
---

# Justice &amp; Peace <small>diocesan commission</small>

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
  {% for post in site.categories.justice-peace %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--