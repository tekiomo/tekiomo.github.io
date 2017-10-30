---
layout: post
tags: [CSS, GitHub Pages]
---

GitHub PagesのリポジトリでCSSフレームワークBulmaを[SASSを利用してカスタマイズ](http://bulma.io/documentation/overview/customize/)したときのメモ

## 1. submoduleにjgthms/bulmaを追加
もし`_config.yml`で`sass.sass_dir(デフォルトは _sass)`を独自に指定していたらそのディレクトリを指定する

```sh
$ git submodule add https://github.com/jgthms/bulma _sass/bulma
```
## 2. style.scssを作成
[Customizing with Sass](http://bulma.io/documentation/overview/customize/)の「Customizing with Sass」を参考。importのパスだけ注意(`sass.sass_dir`から見たパスにする)。

```css
---
---

@import "bulma/sass/utilities/initial-variables";

$blue: #3498db;
$red: #e74c3c;
$green: #18bc9c;
$yellow: #f39c12;
$primary: #2c3e50;
$dark-primary: #1a242f;
$link: $blue;

@import "bulma/bulma";
```
