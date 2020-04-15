FROM adoptopenjdk:11-jre-hotspot

ARG version="3.0.13"

RUN mkdir /work

RUN apt-get update \
    && apt-get install -y unzip \
    && rm -rf /var/lib/apt/lists/* \
    && cd / \
    && curl -s -L -O https://github.com/milaboratory/mixcr/releases/download/v${version}/mixcr-${version}.zip \
    && unzip mixcr-${version}.zip \
    && mv mixcr-${version} mixcr \
    && rm mixcr-${version}.zip

ENV PATH="/mixcr:${PATH}"

WORKDIR /work

ENTRYPOINT ["/bin/bash"]
