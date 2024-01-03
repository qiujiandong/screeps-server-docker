FROM miniball/node:10-debian

WORKDIR /screeps
VOLUME [ "/screeps" ]
EXPOSE 21025

RUN apt-get update && apt-get install -y --no-install-recommends \
    python2 build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /usr/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]