FROM docker.elastic.co/kibana/kibana:7.14.0

LABEL Maintainer="Mehmet Yazicioglu"

USER root

RUN yum update -y \
    && yum clean all

USER kibana
