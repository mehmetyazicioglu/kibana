FROM docker.elastic.co/kibana/kibana:7.14.0

LABEL Maintainer= Mehmet

USER root

# copy custom entrypoint:
COPY docker-entrypoint /usr/local/bin/docker-entrypoint

RUN chmod 755 /usr/local/bin/docker-entrypoint \
    && yum update -y \
    && yum clean all \
    && rm -rf /var/cache/yum /usr/share/logstash/pipeline /usr/share/logstash/config/pipelines.yml

USER kibana
