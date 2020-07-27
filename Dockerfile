FROM node:14

# Create app directory
WORKDIR C:/Users/conan/Documents/code/website-1

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 80

CMD [ "node", "server.js" ]