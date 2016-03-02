FROM node:5.6.0
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common
# RUN add-apt-repository ppa:webupd8team/java
# RUN apt-get update && apt-get -y upgrade
# RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
# RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
# RUN apt-get -y install oracle-java8-installer
RUN apt-get -y install python-pip
RUN pip install rethinkdb
ADD . /app
WORKDIR /app
CMD node index.js
