FROM ubuntu:16.04                                                                                                               

MAINTAINER Jeremy Likness <jeremy@jeremylikness.com>

# switch to Bash 
RUN rm /bin/sh && ln -s /bin/bash /bin/sh                                                                                       

# Grab some pre-requisites and install the 6.x version of Node
RUN apt-get update \
    && apt-get -y install build-essential \
    && apt-get -y install curl \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get -y install nodejs                                                                                                

# install the Angular CLI version
RUN npm i -g angular-cli@1.0.0-beta.24                                                                                                                
# make a directory and expose for mounting 
RUN mkdir -p /src 
VOLUME /src 