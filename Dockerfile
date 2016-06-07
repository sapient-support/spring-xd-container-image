FROM sapientsupport/spring-xd-base-image
MAINTAINER Amol

USER root
COPY startup /opt/spring-xd/startup
RUN chown springxd:springxd /opt/spring-xd/startup
RUN chmod u+x /opt/spring-xd/start
USER springxd

CMD ["/opt/spring-xd/startup"]
