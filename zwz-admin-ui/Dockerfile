FROM node:lts-alpine as build-stage
WORKDIR /app
#COPY package*.json ./
#RUN npm install -g cnpm --registry=https://registry.npmmirror.com
#RUN cnpm install
COPY . .
#RUN npm run build:prod

# production stage
FROM nginx:alpine
COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
