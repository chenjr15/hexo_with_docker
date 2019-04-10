FROM node:alpine
WORKDIR /blog
RUN npm install hexo -g &&\
    hexo init&& hexo generate
EXPOSE 4000

CMD [ "hexo","server" ]