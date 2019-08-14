---
title: FirefoxとChromeのCSP違反時の報告内容を調べてみた
layout: post
tags: [HTTP]
---
内容がChromeの方が多かったり、同じキーでも値が異なっていたり。

ちなみにIE11はCSPに対応していないので調べていない。

## Firefox 56
### Request Header
```
Host: localhost
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Content-Length: 413
Content-Type: application/csp-report
Connection: keep-alive
```

### Request Body
```json
{
  "csp-report": {
    "blocked-uri": "https://avatars2.githubusercontent.com",
    "document-uri": "http://localhost/",
    "original-policy": "default-src http://localhost; script-src http://localhost unsafe-inline unsafe-eval; img-src http://localhost; style-src http://localhost unsafe-inline; child-src none; object-src none; report-uri http://localhost/",
    "referrer": "",
    "violated-directive": "img-src http://localhost"
  }
}
```

## Chrome 61.0.3163.100
### Request Header
```
Accept:*/*
Accept-Encoding:gzip, deflate, br
Accept-Language:ja-JP,ja;q=0.8,en-US;q=0.6,en;q=0.4
Cache-Control:no-cache
Connection:keep-alive
Content-Length:441
Content-Type:application/csp-report
DNT:1
Host:localhost
Origin:http://localhost
Pragma:no-cache
Referer:http://localhost/
User-Agent:Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36
```

### Request Body
```json
{
  "csp-report": {
    "document-uri": "http://localhost/",
    "referrer": "",
    "violated-directive": "img-src",
    "effective-directive": "img-src",
    "original-policy": "default-src self; script-src self unsafe-inline unsafe-eval; img-src self; style-src self unsafe-inline; child-src none; object-src none; report-uri /",
    "disposition": "enforce",
    "blocked-uri": "https://avatars2.githubusercontent.com/u/22626",
    "status-code": 200,
    "script-sample": ""
  }
}
```
