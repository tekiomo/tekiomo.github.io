---
title: stylelintプラグインでdoiuseのチェック
layout: post
tags: [CSS, npm]
---

[doiuse](http://doiuse.herokuapp.com/)はCSSのスタイルが指定したブラウザでサポートしてくれるかチェックしてくれる。  
[doiuseはnpmでも公開されている](https://www.npmjs.com/package/doiuse)のでnpm-scriptsなりgulpなりでチェック環境を作れるのだけれども、[stylelint](https://www.npmjs.com/package/stylelint)のプラグインである`stylelint-no-unsupported-browser-features`を利用して、`stylelint`に含めることができるのでやってみた。

[https://github.com/ismay/stylelint-no-unsupported-browser-features](https://github.com/ismay/stylelint-no-unsupported-browser-features)

```sh
$ npm i -D stylelint stylelint-no-unsupported-browser-features

# stylelint-config-standard を使うなら
$ npm i -D stylelint-config-standard
```

./.stylelintrcはこんな感じ
```json
# ./.stylelintrc
{
  "extends": "stylelint-config-standard",
  "plugins": [
    "stylelint-no-unsupported-browser-features"
  ],
  "rules": {
    "plugin/no-unsupported-browser-features": [true, {
      "browsers": ["> 1% in JP"]
    }]
  }
}
```

実行はこんな感じ。stylelintの実行と変わらない。
```sh
$ ./node_modules/.bin/stylelint /PATH/TO/CSS/*
```

browsersを含めていると何故かstylelintのプロセスが終了しない。(環境は node v7.10.1, npm 5.5.1)

./browserslistに定義してあげるととりあえず動いた。
```
# ./browserslist
> 1% in JP
```
