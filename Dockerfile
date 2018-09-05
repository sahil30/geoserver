FROM centos

#installing wget
RUN yum install -y wget 

RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm"

RUN yum install -y jdk-8u181-linux-x64.rpm 

RUN wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.13.2/geoserver-2.13.2-bin.zip

RUN yum install -y unzip

RUN unzip geoserver-2.13.2-bin.zip

RUN yum install -y which

RUN which java

ENV GEOSERVER_HOME /geoserver-2.13.2/

CMD [ "sh","/geoserver-2.13.2/bin/startup.sh","&"]

RUN ps aux

EXPOSE 8080
