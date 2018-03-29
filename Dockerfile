FROM jenkins/jenkins:lts

COPY brentwg_jenkins.crt /var/lib/jenkins/cert
COPY brentwg_jenkins.key /var/lib/jenkins/pk
ENV JENKINS_OPTS --httpPort=-1 --httpsPort=8083 --httpsCertificate=/var/lib/jenkins/cert --httpsPrivateKey=/var/lib/jenkins/pk
EXPOSE 8083

