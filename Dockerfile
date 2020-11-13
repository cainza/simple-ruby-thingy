############################################################
# Dockerfile DEMO IaC
# Based on Centos Openshift
############################################################

# Set the base image to use to Ubuntu
FROM docker.io/openshift/base-centos7

# Set the file maintainer (your name - the file's author)
MAINTAINER Francis Viviers

# Install tools 
RUN yum install -y ruby rubygem-bundler
# Add files
COPY Gemfile /opt/app-root/src/
COPY app.rb /opt/app-root/src/
COPY config.ru /opt/app-root/src/

RUN cd /opt/app-root/src/ && bundle install

#EXPOSE 22
CMD ["/bin/sh"]
