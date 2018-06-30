FROM node:10 as build-stage
COPY . /app
WORKDIR /app
RUN npm install
EXPOSE 4200 49152
CMD npx ng build

FROM nginx:mainline
COPY --from=build-stage /app/dist/ /usr/share/nginx/html
# Copy the default nginx.conf provided by tiangolo/node-frontend
COPY --from=build-stage /app/nginx.conf /etc/nginx/conf.d/default.conf