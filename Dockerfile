FROM node:14
WORKDIR /app
COPY . ./
RUN npm install -g typescript && npm install && npm run build
COPY . .
EXPOSE 30000
CMD [ "node", "lib/index.js" ]
