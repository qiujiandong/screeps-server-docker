FROM debian:buster-slim

COPY tsinghua_sources.list /tmp/

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-transport-https ca-certificates
RUN cat /tmp/tsinghua_sources.list > /etc/apt/sources.list \
    && apt-get update && apt-get install -y --no-install-recommends nodejs npm \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g yarn

CMD ["node"]