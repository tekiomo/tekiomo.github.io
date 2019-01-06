---
title: "jekyll-coffeescriptで unexpected - エラーをある程度解決する"
date: 2017-10-07T00:00:00+09:00
tags: [CoffeeScript, GitHub Pages]
---

GitHub Pagesで`jekyll-coffeescript`プラグインを利用すると、デプロイ時に`*.coffee`を`.js`に変換してくれる。  
しかし、`jekyll-coffeescript`の記法として、各coffeeファイルの先頭には
```
---
---
```
を書く必要がある。

これがcoffeelin時に
```
✗ #1: [stdin]:1:3: error: unexpected -

```
のようなエラーになるのでどうにか解決したい。

## とりあえずの解決方法
コンパイル対象のcoffeeファイルだけ目をつぶって、それ以外のファイルに影響を及ぼさないようにする。

まず、coffeelintの対象となるメインのcoffeeファイルを`./_include`以下に置く。  
今回は、 `./include/coffeescript/main.coffee`とした。これにじっくりとcoffeeのソースを書く。

そしてHTMLから読み込まれるcoffeeファイルを`./site.coffee`として下記の内容にする。

```
---
---

{% raw %}
{% include coffeescript/main.coffee %}
{% endraw %}
```

もっといい解決方法はないかな...。
