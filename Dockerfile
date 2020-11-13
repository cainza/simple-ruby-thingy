############################################################
# Dockerfile DEMO IaC
# Based on Centos Openshift
############################################################

# Set the base image to use to Ubuntu
FROM centos:centos8

# Set the file maintainer (your name - the file's author)
MAINTAINER Francis Viviers

# Install tools 
RUN yum install -y ruby rubygem-bundler 

# Add files
RUN mkdir -p /demo && chmod 777 /demo
COPY Gemfile /demo
COPY app.rb /demo
COPY config.ru /demo

#RUN cd /opt/app-root/src/ && bundle install
RUN gem install sinatra

#EXPOSE 22o
CMD ["/bin/sh"]
