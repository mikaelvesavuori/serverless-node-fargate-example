FROM node:12-alpine
WORKDIR /src
COPY src/package*.json ./
COPY src/server.js ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]