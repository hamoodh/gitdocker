FROM stackbrew/ubuntu:14.04
MAINTAINER Hamoodh "hamoodh@xerago.com"

RUN apt-get update && apt-get clean
RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get install jenkins

EXPOSE 8080
CMD [""]
