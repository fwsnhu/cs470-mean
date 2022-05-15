# inherit from node v10
FROM node:10

# create directory for the source code
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./
RUN npm install

# uncomment below for production code
#RUN npm ci --only=production

# copy over app source code
COPY . . 

# expose the app port, tcp/3000
EXPOSE 3000

# run the angular server
CMD ["node", "server/server.js"]
