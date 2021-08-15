FROM docker.elastic.co/kibana/kibana:7.14.0

LABEL Maintainer= Mehmet

USER root

# copy custom entrypoint:
COPY docker-entrypoint /usr/local/bin/docker-entrypoint

RUN chmod 755 /usr/local/bin/docker-entrypoint \
    && yum update -y \
    && yum clean all \

USER kibana
