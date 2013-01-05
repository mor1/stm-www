---
layout: page
active: commentary
image: church-side.jpeg
---

# Gospel Commentaries <small>Deacon Anthony</small> 

+-- {.clearfix}
&nbsp;
=--

+-- {.dl-horizontal}
<section>
  <dl>
  {% for post in site.categories.commentaries %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
