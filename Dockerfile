FROM centos:7
MAINTAINER test
RUN yum install -y wget
RUN cd /
ADD jre-8u152-linux-x64.tar.gz /
RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
RUN tar zxvf apache-tomcat-7.0.90.tar.gz
ENV JAVA_HOME=/jre1.8.0_152
ENV PATH=$PATH:/jre1.8.0_152/bin
CMD ["/apache-tomcat-7.0.90/bin/catalina.sh", "run"]

