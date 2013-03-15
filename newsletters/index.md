---
layout: page
active: newsletters
image: church-side.jpeg
---

# Newsletters<br /><small>weekly parish events</small>

+-- {.clearfix}
&nbsp;
=--

+-- {.dl-horizontal .calendar .span10}
<section>
  <dl>
  {% for post in site.categories.newsletters %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a class="pdf" href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
