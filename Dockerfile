FROM centos:7
RUN yum install java-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.110/bin/apache-tomcat-9.0.110.tar.gz ./
RUN tar -xzf /apache-tomcat-9.0.110.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-9.0.110
RUN ls /opt/apache-tomcat-9.0.110/
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.110/bin/catalina.sh","run"]
ii
