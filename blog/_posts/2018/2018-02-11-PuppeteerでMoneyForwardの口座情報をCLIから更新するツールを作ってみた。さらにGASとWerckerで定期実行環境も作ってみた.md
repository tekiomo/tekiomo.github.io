---
layout: post
tags: [JavaScript]
---

MoneyForwardに登録してあるすべての口座情報をCLIで更新できるツールを作ってみた。<br>[mf-all-updater](https://github.com/tekiomo/mf-all-updater)


## TL;DR

* [Puppeteer](https://github.com/GoogleChrome/puppeteer)便利
* WerckerとGASで定期的な自動実行環境を無料で作れる


## 作った理由

* 株価や仮想通貨は変動が頻繁なので、MoneyForwardの口座情報もできるだけ最新の情報にしておきたい
  * 株価に関しては、その日の終値を取得し、推移グラフをできるだけ正確な値にしておきたい
* MoneyForwardの更新周期がいまいちよく分からない
* MoneyForwardは有料会員ではないので一括更新ボタンが使えない→更新ボタンを押すことすら面倒



## 使い方

[mf-all-updater/README.md](https://github.com/tekiomo/mf-all-updater/blob/master/README.md)を参照のこと

XXX たまにログインできない(すぐに再実行すると確率大)という不具合がある。そのうち直す。

### 自動実行
定期実行させているGASからWerckerのパイプラインに対してPOSTしているだけ。無料でこのような環境を整えられるのはありがたい。


## 所感
Puppeteer、Wercker、GASマジ神
