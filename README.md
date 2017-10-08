---
permalink: /
---

[![CircleCI](https://circleci.com/gh/tekiomo/tekiomo.github.io.svg?style=svg)](https://circleci.com/gh/tekiomo/tekiomo.github.io)

----

## [ブログ的な何か](https://tekiomo.com/blog/)

### 最近の投稿

{% for post in site.posts limit:3 %}
* [{{ post.title }}]({{ post.url }}) ({{ post.date | date: "%Y年%m月%d日" }})
{% endfor %}

----

## ChangeLog的な何か

{% include CHANGELOG.md %}
