FROM tomcat:9.0
COPY /target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN sed -i 's/port="8080"/port="9090"/g' /usr/local/tomcat/conf/server.xml
EXPOSE 9090
CMD ["catalina.sh","run"]

