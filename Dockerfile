FROM node:10
WORKDIR /app
RUN git clone https://github.com/seejohnrun/haste-server.git /app
COPY config.js /app
COPY favicon.ico /app/static
RUN npm install
VOLUME ["/app/data"]
EXPOSE 7777
CMD ["npm", "start"]
