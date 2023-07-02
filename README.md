# Tomcat Debug webapp

Docker deployment of simple Spring web application into Tomcat with remote debug.

## Compiling and running the project

Make package:

    mvn clean package

Make docker image:

    docker build -t ludva/tomcat-debug:1-SNAPSHOT-tomcat9 .

Run docker container:

    docker run -it -p 8080:8080 -p 5005:5005 --name tomcat-debug ludva/tomcat-debug:1-SNAPSHOT-tomcat9

Test app:

    http://localhost:8080/test

Connect with remote debbuger:

    -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005

