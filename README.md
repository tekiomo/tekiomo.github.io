---
permalink: /
---

[![wercker status](https://app.wercker.com/status/fdd0aea8ad5e133afbb932dc04ffde8a/s/master "wercker status")](https://app.wercker.com/project/byKey/fdd0aea8ad5e133afbb932dc04ffde8a)

----

## [ブログ的な何か](https://tekiomo.com/blog/)

### 最近の投稿

{% for post in site.posts limit:3 %}
* [{{ post.title }}]({{ post.url }}) ({{ post.date | date: "%Y年%m月%d日" }})
{% endfor %}

----

## ChangeLog的な何か

{% include CHANGELOG.md %}
