FROM tomcat:9-jdk21

# Remove default apps
RUN rm -rf C:\Users\khana\Downloads\Setup\apache-tomcat-9.0.115-windows-x64\apache-tomcat-9.0.115\webapps\demo-web.war

# Copy WAR file
COPY target/demo-web.war C:\Users\khana\Downloads\Setup\apache-tomcat-9.0.115-windows-x64\apache-tomcat-9.0.115\webapps\demo-web.war

EXPOSE 8081