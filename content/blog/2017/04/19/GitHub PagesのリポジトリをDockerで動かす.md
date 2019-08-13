---
title: "GitHub PagesのリポジトリをDockerで動かす"
date: 2017-04-19T00:00:00+09:00
tags: [GitHub Pages, Docker]
---

[madduci/docker-github-pages](https://hub.docker.com/r/madduci/docker-github-pages/)でできる。


GitHub Pagesのリポジトリがあるディレクトリ内で↓を実行する。

```sh
$ docker run --rm -it -p 4000:4000 \
  -v "${PWD}":/site madduci/docker-github-pages serve \
  --watch --force_polling --host 0.0.0.0
```

## 追記
タイムゾーンを東京にする場合は`-e`でタイムゾーン情報を渡す。

```sh
docker run -e "TZ=Asia/Tokyo" --rm ...
```
