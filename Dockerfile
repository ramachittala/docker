FROM ubuntu:14.04
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2014-06-01
RUN apt-get update
RUN apt-get install software-properties-common python-software-properties -y
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get -y install ruby2.2 ruby-dev build-essential redis-tools ruby-full 
RUN gem install rubygems-update
RUN update_rubygems
RUN gem install  sinatra 
RUN gen install json 
RUN gem install redis
RUN mkdir -p /opt/webapp
EXPOSE 4567
CMD [ "/opt/webapp/bin/webapp" ]
