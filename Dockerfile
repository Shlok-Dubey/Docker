FROM node:22-alpine

WORKDIR /app

COPY . .

RUN npm install 

RUN npx tsc -b
 
EXPOSE 3000 

CMD ["node" , "dist/index.js"]