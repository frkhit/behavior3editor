FROM node:10.23.0-buster

COPY . /CODE/

RUN npm install -g bower gulp && \
    cd /CODE/ && \
    npm install && \
    bower install --allow-root  && \
    gulp dist


