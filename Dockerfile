FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=4.3.3

RUN wget -O neo4j.tar.gz https://neo4j.com/artifact.php?name=neo4j-community-$version-unix.tar.gz && \
mkdir /opt/sh/neo4j && \
tar -xf neo4j.tar.gz -C /opt/sh/neo4j --strip-components 1 && \
rm -rf neo4j.tar.gz

WORKDIR /opt/sh/neo4j