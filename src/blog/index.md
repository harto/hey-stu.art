---
layout: default
---

<ul class="blog-post-index">
    {% for post in site.posts %}
        <li class="blog-post-index-item">
            <a href="{{ post.url }}">{{ post.title }}</a>
            &mdash;
            {{ post.date | date: "%d %b %Y" }}
        </li>
    {% endfor %}
</ul>
