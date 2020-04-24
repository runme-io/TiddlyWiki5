FROM node:12.10.0

# Create directory where we will place the application
WORKDIR /usr/src/app

# Copy application source code to the image
COPY . .

#Create new demo project
RUN npm i
RUN node tiddlywiki.js mynewwiki --init server 

#Expose running port
EXPOSE 8080

# How we will run application
ENTRYPOINT node tiddlywiki.js mynewwiki --listen