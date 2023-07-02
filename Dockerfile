FROM tomcat:9

COPY target/webapp-dockerize-0.0.1-SNAPSHOT.war webapps/ROOT.war

ENV JPDA_ADDRESS="*:5005"
ENV JPDA_TRANSPORT="dt_socket"

EXPOSE 5005
EXPOSE 8080

CMD ["catalina.sh", "jpda", "run"]