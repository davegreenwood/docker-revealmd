FROM node:alpine

RUN apk update
RUN npm install -g --production reveal-md
EXPOSE 1948 35729
WORKDIR /slides
CMD [ "reveal-md", "/slides"]
