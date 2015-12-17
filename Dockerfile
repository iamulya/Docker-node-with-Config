FROM node:5.2.0-wheezy
MAINTAINER Amulya Bhatia <amulya.bhatia@t-online.de>

RUN useradd -ms /bin/bash node && \
    chown -R node:node /home/node && \
    chown -R node:node /usr/local/lib/node_modules && \
    chown -R node:node /usr/local/bin

USER node
ENV HOME /home/node
# ENV HTTP_PROXY http://proxyurl_here

COPY .npmrc /home/node/
