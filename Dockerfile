FROM node:10
WORKDIR /app
RUN git clone https://github.com/seejohnrun/haste-server.git /app
RUN npm install
RUN npm install memcached
COPY config.ts /app
VOLUME ["/app/data"]
EXPOSE 7777
CMD ["npm", "start"]