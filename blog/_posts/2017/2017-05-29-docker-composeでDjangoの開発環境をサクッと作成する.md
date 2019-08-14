---
title: docker-composeでDjangoの開発環境をサクッと作成する
layout: post
tags: [Django, Docker]
---

`Docker`だけで作りたかったのだけれども、`volume`を前提として`docker build`時に`migrate`しても、`docker run`すると`migrate`したファイルがいっさいがっさいなくなってしまうので`docker-compose`で作った。

ファイル構成は以下のような作りを想定。
```
.
./app
./manage.py
./requirements/develop.txt
./Dockerfile
./docker-compose.yml
```

`./docker-compose.yml`はこんな感じ。
```yaml
version: '2'
services:
  web:
    build: .
    command: python apps/manage.py runserver 0.0.0.0:8000 --insecure
    volumes:
      - .:/code
    ports:
      - "8000:8000"
```

`./Dockerfile`はこんな感じ。`/code`のディレクトリ名は適当に。
```
FROM python:3.5

ENV PYTHONUNBUFFERED 1

VOLUME /code
WORKDIR /code

ADD . /code

RUN pip install -r requirements/development.txt \
  && python3 manage.py migrate
```

初回`build`後に`createsuperuser`で管理画面ユーザーを作成する。必要なければ省ける。
```sh
$ docker-compose build
$ docker-compose run web python3 ./manage.py createsuperuser
$ docker-compose up
```
