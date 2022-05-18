FROM centos:7.6.1810

#Pre installation

RUN yum update -y &&\
    yum install -y zip &&\
    yum install -y unzip &&\
    yum install -y wget &&\
    yum install -y lsof &&\
    yum install epel-release -y &&\
    yum install -y jq &&\
    yum clean all




RUN yum -y update &&\
    yum install -y java-1.8.0-openjdk &&\
    yum install -y ant &&\
    yum clean all
    
# Setup JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/
RUN export JAVA_HOME
