---
layout: page
active: commentary
image: church-side.jpeg
---

# Gospel Commentaries <small>Deacon Anthony</small> 

+-- {.dl-horizontal .commentaries .span10}
<section>
  {% for post in site.categories.commentaries %}
    {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
    {% capture month %}{{ post.date | date: '%m' }}{% endcapture %}
    {% if post.next %}
      {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
      {% capture nmonth %}{{ post.next.date | date: '%m' }}{% endcapture %}
    {% endif %}    
    
    {% if forloop.first %}
    <h2>{{ year }}</h2>
    <dl>
      <ul>
    {% else %}
      {% if year != nyear %}    
      </ul>
    </dl>
    <h2>{{ year }}</h2>
    <dl>
      <ul>
      {% elsif month != nmonth %}
      </ul>
      <ul>
      {% endif %}
    {% endif %}
    <li>
      <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
      <dd>
        <a class="pdf" href="{{ post.url }}">{{ post.title }}</a>

      {% capture tyear %}{{ site.time | date: "%Y" }}{% endcapture %}

      {% capture dyear %}{{ tyear | minus:year }}{% endcapture %}
      {% capture dmonth %}{{ dyear | times:12 }}{% endcapture %}      
      {% capture tmonth %}
        {{ site.time | date: "%m" | plus:dmonth }}
      {% endcapture %}

      {% capture delta %}{{ tmonth | minus:month | minus:2 }}{% endcapture %}
      {% if delta contains '-' %}
        (<a href="http://www.universalis.com/Europe.England.Westminster/{{ post.date | date: '%Y%m%d' }}/mass.htm">readings</a>)
      {% endif %}
      </dd>
    </li>
  {% endfor %}
      </ul>
  </dl>
</section>
=--
