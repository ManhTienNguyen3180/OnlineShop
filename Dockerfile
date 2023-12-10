FROM tomcat:9.0.1-jre8-alpine

COPY ./web.xml /usr/local/tomcat/webapps/ROOT/WEB-INF

COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

EXPOSE 8080
CMD ["catalina.sh", "run"]