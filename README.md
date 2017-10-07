---
permalink: /
---

[![CircleCI](https://circleci.com/gh/tekiomo/tekiomo.github.io.svg?style=svg)](https://circleci.com/gh/tekiomo/tekiomo.github.io)

----

ブログを書いています。

## [{{ site.blog.name }}](https://tekiomo.com/blog/)

### 最近の投稿

{% for post in site.posts limit:3 %}
* [{{ post.title }}]({{ post.url }}) ({{ post.date | date: "%Y年%m月%d日" }})
{% endfor %}

----

* tekiomo.com はGitHub Pagesで運用しています
* CSSフレームワークに[Bulma](http://bulma.io/)を使用しています
* [Cloudflare](https://www.cloudflare.com)を利用してHTTPS化しています
* coffeelint, stylelint を[CircleCI](https://circleci.com/gh/tekiomo/tekiomo.github.io)で行なっています
