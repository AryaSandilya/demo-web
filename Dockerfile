FROM tomcat:9-jdk21

# Remove default web apps inside container
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from build context into container
COPY target/demo-web.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080