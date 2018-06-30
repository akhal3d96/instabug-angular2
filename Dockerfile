FROM node:10
COPY . /app
WORKDIR /app
RUN npm install && npm cache clean
EXPOSE 4200 49152
CMD npx ng serve
