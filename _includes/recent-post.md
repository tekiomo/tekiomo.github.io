{% for post in site.posts limit:3 %}
* [{{ post.title }}]({{ post.url }}) ({{ post.date | date: "%Y年%m月%d日" }})
{% endfor %}
