#FROM openjdk:8u151-stretch
FROM openjdk:11-jdk

# Install pacakges
RUN apt-get update

# Install ssh maven and git 
RUN apt-get -y install openssh-client maven git docker.io

# Confugure ssh client
ADD .ssh/id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa

# Clear cache
RUN apt-get clean