FROM node:0.12.2

RUN apt-get install curl

RUN npm install -g git+https://git@github.com/themistymay/npm-fullfat-registry.git

RUN curl -X PUT http://192.168.59.104:5984/registry

CMD npm-fullfat-registry \
  --fat=http://192.168.59.104:5984/registry \
  --skim=https://skimdb.npmjs.com/registry \
  --seq-file=registry.seq \
  --missing-log=missing.log
