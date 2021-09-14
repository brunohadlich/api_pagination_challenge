FROM node:16

ENV WD=/api/

WORKDIR ${WD}

COPY package.json package-lock.json ${WD}

RUN ["npm", "install"]

COPY . ${WD}

EXPOSE 8000/tcp

CMD npm run start