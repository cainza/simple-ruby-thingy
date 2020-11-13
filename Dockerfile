############################################################
# Dockerfile DEMO IaC
# Based on Centos Openshift
############################################################

# Set the base image to use to Ubuntu
FROM docker.io/openshift/base-centos7

# Set the file maintainer (your name - the file's author)
MAINTAINER Francis Viviers

# Install tools 
RUN yum install -y net-tools 

#EXPOSE 22
CMD ["/bin/sh"]
