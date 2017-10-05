---
layout: page
permalink: /
---

* `http://tekiomo.com/` はGitHub Pagesで運用しています
* CSSフレームワークに[Bulma](http://bulma.io/)を使っています

----

* [ブログ](/blog/)を書いています
  * 最近の投稿
{% for post in site.posts limit:3 %}
    * [{{ post.title }}]({{ post.url }}) ({{ post.date | date: "%Y年%m月%d日" }})
{% endfor %}
