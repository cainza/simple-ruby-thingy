############################################################
# Dockerfile DEMO IaC
# Based on Centos Openshift
############################################################

# Set the base image to use to Ubuntu
FROM docker.io/openshift/base-centos7

# Set the file maintainer (your name - the file's author)
MAINTAINER Francis Viviers

# Install SSHD
RUN yum install -y openssh-server

# Create system keys
RUN  /usr/bin/ssh-keygen -A

# ADD SSH FOLDER AND KEY
RUN mkdir /root/.ssh/
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjzsXxWE0rDQQxWFY/TfhAPB73kdrVWUf1g5/YCAc0aCdQgAXx5Hn9T+pH7gj0kkQrEK03p8Dn3UsRyBVpflQvO/zMDtLq840cdXJPnrpyHytzYtSfzBDRV7SP2MOBdh8tw5qOKUqOct6uhJEIp17iRS0twDp04yl31XGUAFc9y4PvFcUu1RasHp8NDTeAdkrI1I46UndzvFMQtY2cKQp1jDSkQ7Chjr7NSN6MNwSA1gL/YRNiT4/NOKfjM4ZOLdxiRBZPaLhv3ddbgOKDCOOxNcE2+6rYLHZF/8YXbG2crJD56Ek/RQw5xMAQze7CIJBd/4zvtpevTdpNXlXLshVZ" > /root/.ssh/authorized_keys

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
