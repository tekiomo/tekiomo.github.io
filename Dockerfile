FROM jekyll/jekyll:pages

VOLUME /www
WORKDIR /www

ADD . /www
