---
title: EXPLAINを自動で実行するpostgresql.confの設定のメモ
layout: post
tags: [PostgreSQL]
---

/var/lib/postgresql/data/postgresql.conf

```
shared_preload_libraries = 'auto_explain'

auto_explain.log_analyze = on
auto_explain.log_format = text
auto_explain.log_min_duration = 0

log_destination = 'stderr'
```
