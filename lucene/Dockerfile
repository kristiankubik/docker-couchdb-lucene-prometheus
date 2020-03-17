FROM openjdk:8-jre-alpine
USER root
RUN apk add --no-cache bash
ADD src/couchdb-lucene-2.1.0.tar.gz /opt/lucene-src
RUN mv /opt/lucene-src/couchdb-lucene-2.1.0/couchdb-lucene-2.1.0-SNAPSHOT /opt/lucene
# Clear cache
RUN rm -rf /var/cache/apk/* \
  && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /var/log/lucene \
  && ln -s /opt/lucene/logs/couchdb-lucene.log /var/log/lucene/log

VOLUME /opt/lucene/indexes
VOLUME /opt/lucene/conf

WORKDIR /opt/lucene

# COPY docker-entrypoint.sh /
# RUN chmod +x docker-entrypoint.sh
# ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5985
CMD ["/opt/lucene/bin/run"]
