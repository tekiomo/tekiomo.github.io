---
title: Ansibleのタスクでnotifyだけ実行したい
layout: post
tags: [Ansible]
---

`notify` はモジュールではないため単体で実行できない。
`command` で `/bin/true` を実行し、 `notify` を呼び出すのがスマートそう。

```yml
- command: /bin/true
  notify: HANDLER_NAME
  when:
    - FOO is defined and FOO
```
