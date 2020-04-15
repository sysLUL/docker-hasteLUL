FROM node:10
WORKDIR /app
RUN git clone https://github.com/seejohnrun/haste-server.git /app
RUN npm install
COPY package*.json ./app
COPY . /app
VOLUME ["/app/data"]
EXPOSE 7777
CMD ["npm", "start"]