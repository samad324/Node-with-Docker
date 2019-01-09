# Base Image For out Image
FROM node:alpine

# Specify the work directory
WORKDIR /usr/app

# run Commands before cteating image
COPY ./package.json ./
RUN npm install 
COPY ./ ./

# assign a base command to the image
CMD ["npm", "start"]

