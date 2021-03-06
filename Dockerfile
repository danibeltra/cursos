FROM jboss/wildfly:09.0.1.Final
MAINTAINER José Luis Zamora Sánchez joseluiszamora@jlz.gmail.com
EXPOSE 8080 9990
RUN /opt/jboss/wildfly/bin/add-user.sh expertojava expertojava --silent
COPY target/cursos.war /opt/jboss/wildfly/standalone/deployments/
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement","0.0.0.0"]
