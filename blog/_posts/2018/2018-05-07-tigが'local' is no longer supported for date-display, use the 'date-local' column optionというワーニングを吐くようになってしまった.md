---
title: tigが'local' is no longer supported for date-display, use the 'date-local' column optionというワーニングを吐くようになってしまった
layout: post
tags: [Git]
---

tig終了時に`tig warning: ~/.tigrc:10: 'local' is no longer supported for date-display, use the 'date-local' column option`というワーニングを吐くようになってしまった。

該当箇所はこんな感じ
```
set main-view = id:yes date:local author:full commit-title:graph=yes,refs=yes
```

どうやら手元のtigがアップデートされlocalは値の指定が必須になったらしい。


```diff
- set main-view = id:yes date:local author:full commit-title:graph=yes,refs=yes
+ set main-view = id:yes date:local=yes author:full commit-title:graph=yes,refs=yes
```
https://github.com/jonas/tig/blob/master/tigrc

ワーニングが出なくなった。
