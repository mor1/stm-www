---
layout: page
active: newsletters
image: church-side.jpeg
---

# Newsletters<br /><small>weekly parish events</small>

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
  {% for post in site.categories.newsletters %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--