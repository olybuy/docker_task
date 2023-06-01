FROM tomcat:8.0-alpine

RUN cd /usr/local/tomcat
RUN mkdir -p /webapps/my-app

ADD . /usr/local/tomcat/webapps/my-app/

EXPOSE 8080

CMD ["catalina.sh", "run"]