# Use an existing docker image as a base
FROM node:alpine

WORKDIR /usr/app

# Download and install a dependency
COPY ./package.json ./
RUN npm install
COPY ./ ./
# Tell the image what to do when it starts as a container
CMD ["npm", "start"]

#redirect 
#docker run -p 8080:8080 tatianagrigorieva/node-web-docker