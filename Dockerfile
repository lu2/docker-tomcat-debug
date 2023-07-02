FROM tomcat:9

COPY target/webapp-dockerize-0.0.1-SNAPSHOT.war webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]