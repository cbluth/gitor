FROM docker.io/library/ubuntu:22.04
SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt dist-upgrade -y && \
    apt install --no-install-recommends -y \
        tor \
        torsocks

COPY container-entrypoint /usr/local/bin/
USER debian-tor
ENTRYPOINT ["/usr/local/bin/container-entrypoint"]
