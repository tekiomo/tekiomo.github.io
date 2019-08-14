---
title: 任意のディレクトリにgem installする
layout: post
tags: [Ruby]
---

`GEM_HOME`でインストール先を指定できる。

```sh
$ export GEM_HOME=${HOME}/lib/gems
$ export PATH=${GEM_HOME}/bin/:${PATH}
$ gem install fakes3
```
