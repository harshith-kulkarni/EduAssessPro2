FROM tomcat:9.0-jdk11
  
# Remove default ROOT app (optional, to avoid conflicts)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY target/EduAssessPro.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

