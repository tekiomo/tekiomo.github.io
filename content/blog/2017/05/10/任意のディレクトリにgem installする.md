---
title: "任意のディレクトリにgem installする"
date: 2017-05-10T00:00:00+09:00
tags: [Ruby]
---

`GEM_HOME`でインストール先を指定できる。

```sh
$ export GEM_HOME=${HOME}/lib/gems
$ export PATH=${GEM_HOME}/bin/:${PATH}
$ gem install fakes3
```
