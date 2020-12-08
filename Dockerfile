FROM node:10.23.0-buster

COPY . /CODE/

RUN npm install -g bower gulp && \
    cd /CODE/ && \
    npm install && \
    bower install --allow-root  && \
    gulp dist && \
    rm -rf /CODE/node_modules && \
    rm -rf /CODE/bower_components && \
    rm -rf /CODE/.temp-dist/ && \
    rm -rf /CODE/dist/



