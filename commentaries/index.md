---
layout: default
active: commentary
---

# Gospel Commentaries <small>Deacon Anthony</small> 

+-- {.commentaries .dl-horizontal}
<section>
  {% for post in site.posts %}

    {% if post.next %}
      {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
      {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
      {% capture month %}{{ post.date | date: '%B' }}{% endcapture %}
      {% capture nmonth %}{{ post.next.date | date: '%B' }}{% endcapture %}
    {% endif %}

    {% if forloop.first %}
          <dl>
<!--
    <div>
      <h2>{{ post.date | date: '%Y' }}</h2>
      
      <ul>
        <li>
          <h3>{{ post.date | date: '%B' }}</h3>
          <dl>
-->
    {% else %}
      {% if year != nyear %}
<!--
          </dl>
        </li>
      </ul>
-->
      <hr />

<!--
      <h2>{{ post.date | date: '%Y' }}</h2>

      <ul>
        <li>
          <h3>{{ post.date | date: '%B' }}</h3>
          <dl>
-->
      {% elsif month != nmonth %}
      <hr />
<!--
          </dl>
        </li>
      
        <li> 
          <h3>{{ post.date | date: '%B' }}</h3>
          <dl>
-->
      {% endif %}
    {% endif %}
            <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
            <dd>
              <a href="{{ post.url }}">{{ post.title }}</a>
              {% capture now %}{{ site.time | date: "%Y%m%d" }}{% endcapture %}
              {% capture then %}{{ post.date | date: "%Y%m%d" }}{% endcapture %}
              {% capture delta %}{{ now | minus:then | minus:30 }}{% endcapture %}

              {% if delta contains '-' %}
              (<a href="http://www.universalis.com/Europe.England.Westminster/{{ post.date | date: '%Y%m%d' }}/mass.htm">
              readings
              </a>)
              {% endif %}
            </dd>
  {% endfor %}
          </dl>
<!--
        </li>
      </ul>
    </div>
-->
</section>
=--
