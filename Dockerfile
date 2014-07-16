FROM r351574nc3/kuali-oracle-base:latest

MAINTAINER Leo Przybylski https://github.com/r351574nc3/

# Environment variables
ENV MAVEN_VERSION 3.2.2
ENV TOMCAT_VERSION 7.0.54

ADD files /root/kuali/main/dev
ADD kradtraining /kradtraining

WORKDIR /kradtraining

EXPOSE 8080

ENV HOSTNAME localhost

ENTRYPOINT mvn -Dapplication.host=$HOSTNAME jetty:run
