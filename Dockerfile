FROM tomcat:9.0-jdk11
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
