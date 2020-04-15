FROM node:10
WORKDIR /app
RUN git clone https://github.com/seejohnrun/haste-server.git /app
RUN npm install
RUN npm install npm install memcached
VOLUME ["/app/data"]
EXPOSE 7777
CMD ["npm", "start"]