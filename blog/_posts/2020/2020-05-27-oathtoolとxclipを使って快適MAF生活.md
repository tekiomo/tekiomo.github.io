---
title: oathtoolとxclipを使って快適MAF生活
layout: post
tags: [Ubuntu]
---

基本的に二要素認証の場合、 Android の Google Authenticator を利用しているが、 PC でログインしたいときにいちいちスマホを手に取りアプリを立ち上げるのが面倒だった。

PC で解決できないか調べていたところ [oathtool](https://www.nongnu.org/oath-toolkit/man-oathtool.html) を発見した。
これはQRコードとともに発行される認証キーを利用してコードを生成してくれる。

さらにコードを xclip でクリップボードにコピーすることでさらに使い勝手が良くなった。

```sh
$ sudo apt-get install oathtool xclip
$ oathtool {発行された認証キー} | xclip -selection clipboard
```

PC が手元にない環境でスマホからログインしたいケースも十分にあるため、Google Authenticator と oathtool を併用する。
