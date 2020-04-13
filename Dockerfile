FROM node:10
WORKDIR /app
RUN npm install
VOLUME ["/app/data"]
EXPOSE 7777
CMD ["npm", "start"]