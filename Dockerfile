FROM dockerfile/nodejs

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN $TEST

EXPOSE 5000
RUN npm install
CMD ["npm", "start"]
