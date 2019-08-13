---
title: "dev_appserver.pyでつまづいた"
date: 2017-10-27T00:00:00+09:00
tags: [GCP]
---

`gcloud`をインストールすると、一緒にインストールされる`dev_appserver.py`を使うとローカルでの開発用にサーバーを立てられる。  
それを実行したときにちょっとつまづいたのでメモ

## ImportError: No module named 'setup'
このエラーはPython2(2.7？)でないと出る模様。Python2.7などを利用することで解決できる。


## google.appengine.tools.devappserver2.wsgi_server.BindError: Unable to bind localhost:8000
すでに8000番ポートを利用していると発生する。

ただし`--port XXXX`だけではダメで`--admin-port XXXX`も指定する。

```sh
# NG
$ dev_appserver.py --port 8001

# OK
$ dev_appserver.py --port 8001 ./app.yaml --admin_port 8002
```
