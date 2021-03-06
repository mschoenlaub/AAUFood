FROM node:6.9.5
ENV TZ="/usr/share/zoneinfo/Europe/Vienna"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app
RUN bash -l -c 'npm run build'

EXPOSE 3000

CMD [ "node", "index.js" ]
