FROM node:latest

# Install Ruby Tools
RUN apt-get update && apt-get install -y ruby ruby-dev && \
    gem install bundler --no-user-install

# Install Global Node.js Tools
RUN npm install node-sass@3.5.3 gulp

# Expose port for development
EXPOSE 1234
EXPOSE 3001

# Set Workdir to the mounted directory
WORKDIR /usr/src/app

CMD bash
