FROM debian:bullseye-slim

RUN apt-get update \
    && apt-get install -y util-linux procps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
