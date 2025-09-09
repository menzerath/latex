FROM debian:13.1
LABEL maintainer="Marvin Menzerath <dev@marvin.pro>"

RUN apt-get update && \
    apt-get install --yes texlive-full && \
    apt-get purge --yes *-doc && \
    apt-get clean --yes && \
    rm -rf /var/lib/apt/lists/*
