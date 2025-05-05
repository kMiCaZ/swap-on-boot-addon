FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y util-linux && apt-get clean

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
