FROM ubuntu

# Copy all files to /opt/works-on-my-machine in our container 
# and change the work directory also to /opt/works-on-my-machine
COPY . /opt/works-on-my-machine
WORKDIR /opt/works-on-my-machine

# Install npm
RUN apt update -y
RUN apt install npm -y

# Install npm dependencies (express, supestest, jest) and run tests
RUN npm install
RUN npm test

# If all tests succeed, then remove node_modules
# and install only prod dependencies (only express)
RUN rm -rf node_modules/
RUN npm install --only=prod

# Finally run the app
CMD ["npm", "start"]
