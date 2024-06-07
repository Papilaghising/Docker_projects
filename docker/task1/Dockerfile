FROM nginx:stable-alpine3.17-slim
COPY index.html /usr/share/nginx/html
EXPOSE 80 

FROM node:14
WORKDIR /var/
COPY . /var
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]

