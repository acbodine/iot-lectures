FROM node

WORKDIR /opt/iot-lectures

COPY package.json .

RUN npm install
RUN npm install -g grunt

COPY . .

RUN grunt pug

EXPOSE 8000

ENTRYPOINT ["npm"]
CMD ["start"]
