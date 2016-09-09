#Dockerfile for Artifactory
FROM centos
COPY startup.sh /tmp/startup.sh 
RUN yum install -y rsync;yum install -y net-tools

RUN useradd -g Artifactory Artifactory;curl http://<IP-address>:<portNo>/jfrog-artifactory-oss-4.12.0.1.rpm  -o /tmp/jfrog-artifactory-oss-4.12.0.1.rpm;curl http://<IP-address>:<portNo>/jdk-8u101-linux-x64.rpm -o /tmp/jdk-8u101-linux-x64.rpm;chmod 775 /tmp/startup.sh;

RUN su -l Artifactory;rpm -ivh /tmp/jdk-8u101-linux-x64.rpm;rpm -ivh /tmp/jfrog-artifactory-oss-4.12.0.1.rpm;ls -lrt /tmp


ENV PATH=$PATH:/opt/jfrog/artifactory/bin

EXPOSE 8081

ENTRYPOINT ["/tmp/startup.sh"]

######################
