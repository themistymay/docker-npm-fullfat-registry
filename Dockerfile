FROM node:0.12.2

RUN npm install -g git+https://github.com/themistymay/npm-fullfat-registry.git

RUN mkdir /npm

RUN chmod -R 777 /npm

CMD npm-fullfat-registry \
  --fat=http://couchdb:5984/registry \
  --skim=https://skimdb.npmjs.com/registry \
  --seq-file=/npm/registry.seq \
  --missing-log=/npm/missing.log
