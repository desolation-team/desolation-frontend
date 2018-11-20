FROM node:10.13-alpine
RUN mkdir /app
WORKDIR /app
COPY package.json /app/
RUN npm install
MAINTAINER desolation-team <desolation.project.team@gmail.com>
COPY src /app/src
ENV PORT=80
EXPOSE 80
CMD [ "npm", "start" ]
