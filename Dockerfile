FROM tomcat:9.0

# Set environment variables (if needed)
# ENV MY_VAR=my_value

# Create a directory to hold your application files
WORKDIR /usr/local/tomcat/webapps/myapp

# Copy your application files into the Tomcat webapps directory
COPY  /var/lib/jenkins/workspace/tomcat-pipeline/target/NETFLIX-1.2.2.war .

# If you have additional configuration files, you can copy them too
# COPY ./path/to/your/config-files/* /usr/local/tomcat/conf/

# Expose the default Tomcat port (8081)
EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
