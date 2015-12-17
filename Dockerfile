FROM node:5.2.0-wheezy
MAINTAINER Amulya Bhatia <amulya.bhatia@t-online.de>

# Add the user 'node' in the system and 
# let this user access the directories needed by node/npm
RUN useradd -ms /bin/bash node && \
    chown -R node:node /home/node && \
    chown -R node:node /usr/local/lib/node_modules && \
    chown -R node:node /usr/local/bin

# Set 'node' as the user for this docker image
USER node
ENV HOME /home/node

# ENV HTTP_PROXY http://proxyurl_here

# Copy the npm config file in the home directory
COPY .npmrc /home/node/
