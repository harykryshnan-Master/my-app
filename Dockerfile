# Use an official Tomcat image as a base
FROM tomcat:9.0

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file to the webapps directory
COPY target/myweb-0.0.5.war myweb.war

# Expose the port on which Tomcat runs
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
