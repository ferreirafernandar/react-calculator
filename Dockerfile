FROM node:14.17-alpine AS builder
LABEL Fernanda Ferreira <ferreirafernandar@gmail.com>

WORKDIR /app
EXPOSE 3000

COPY . .
RUN npm install --silent
RUN npm run build

CMD ["npm", "start"]