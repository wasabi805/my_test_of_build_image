FROM node:20-alpine
RUN mkdir -p /app
WORKDIR /app
# COPY  . .
COPY package*.json /app/
RUN npm install
COPY . /app/
EXPOSE 4000
CMD ["node", "app.js"]
