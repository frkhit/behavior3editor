FROM node:10.23.0-buster

COPY . /CODE/

RUN npm install -g bower gulp && \
    cd /CODE/ && \
    npm install && \
    bower install --allow-root  && \
    gulp dist && \
    rm -rf node_modules && \
    rm -rf bower_components



