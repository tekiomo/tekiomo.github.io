---
layout: post
tags: [CSS, JavaScript, Gulp]
---

独自タグ`foo`をclass`.foo`に置き換えたかったので、through2を使って書いてみた

```js
var gulp     = require('gulp');
var css      = require('css')
var through2 = require('through2')

gulp.task('imagemin', function(){
  return gulp.src(['/PATH/TO/CSSFILE'])
    .pipe(through2.obj(function (file, enc, callback) {
      var re = new RegExp('(^|\\s+)([a-z]+(?=(?:\\s+|:|\\.|\\s*(?:$|,))))', 'g')
      var parsed = css.parse(file.contents.toString('utf8'))
      for (var i in parsed.stylesheet.rules) {
        for (var j in parsed.stylesheet.rules[i].selectors) {
          parsed.stylesheet.rules[i].selectors[j] = parsed.stylesheet.rules[i].selectors[j].replace(re, '$1.$2')
        }
      }
      // 圧縮するなら
      // file.contents = new Buffer(css.stringify(parsed, {compress: true}))
      this.push(file)
      callback()
    }))
    .pipe(gulp.dest('/PATH/TO/DEST'))
});
```
