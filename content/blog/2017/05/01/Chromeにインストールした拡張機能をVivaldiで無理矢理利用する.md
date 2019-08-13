---
title: "Chromeにインストールした拡張機能をVivaldiで無理矢理利用する"
date: 2017-05-01T00:00:00+09:00
tags: [Chrome]
---

Ubuntuで試した。

[Vivaldi](https://vivaldi.com/)はChromiumベースということで、Chromeウェブストアで配布されている拡張機能を利用できる。

試しに、

1. すでに存在している`.config/google-chrome`を`.config/vivaldi`にリネーム
1. Vivaldiを起動

すると、VivaldiでもChromeでインストールしていた拡張機能が有効になっており利用することができた。


ただし、Googleアカウント自体の同期ができるわけではない。  
ブックマークはVivaldiの初回起動時には存在するものの、再起動したら消えた。無に帰した。
