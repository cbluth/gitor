FROM docker.io/library/ubuntu:22.04
SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt install --no-install-recommends -y \
        tor \
        torsocks

USER debian-tor
ENTRYPOINT ["tor", "--RunAsDaemon", "0", "-f", "/etc/tor/torrc"]
