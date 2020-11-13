############################################################
# Dockerfile DEMO IaC
# Based on Centos Openshift
############################################################

# Set the base image to use to Ubuntu
FROM centos:centos8

# Set the file maintainer (your name - the file's author)
MAINTAINER Francis Viviers

EXPOSE 8080

# Install tools 
RUN yum install -y ruby rubygem-bundler 

# Add files
RUN mkdir -p /demo && chmod 777 /demo
COPY Gemfile /demo
COPY app.rb /demo
COPY config.ru /demo
COPY startup.sh /demo

RUN chmod 777 /demo/startup.sh

#RUN cd /opt/app-root/src/ && bundle install
RUN gem install sinatra

# Start
CMD ["/demo/starup.sh"]
