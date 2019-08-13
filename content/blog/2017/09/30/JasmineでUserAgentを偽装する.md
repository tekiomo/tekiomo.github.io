---
title: "JasmineでUserAgentを偽装する"
date: 2017-09-30T00:00:00+09:00
tags: [JavaScript]
---

[`spyOnProperty()`](https://jasmine.github.io/api/2.6/global.html#spyOnProperty)を利用する。

下記はiPadに偽装する例。
```js
spyOnProperty(window.navigator, 'userAgent')
  .and.returnValue('Mozilla/5.0 (iPad; CPU OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F91 Safari/602.1')
```
