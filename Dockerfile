FROM debian:9-slim

RUN apt-get update && apt-get install -y \
    jq \
    mosquitto-clients

COPY check /opt/resource/check
COPY in    /opt/resource/in
COPY out   /opt/resource/out

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check

RUN rm -rf /tmp/*

CMD ["bash"]
