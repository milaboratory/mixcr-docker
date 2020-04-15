FROM adoptopenjdk:11-jre-hotspot

ARG version="3.0.13"
ARG imgt_version="202011-3"
ARG imgt_script_version="6"

RUN mkdir /work

RUN apt-get update \
    && apt-get install -y unzip \
    && rm -rf /var/lib/apt/lists/* \
    && cd / \
    && curl -s -L -O https://github.com/milaboratory/mixcr/releases/download/v${version}/mixcr-${version}.zip \
    && unzip mixcr-${version}.zip \
    && mv mixcr-${version} mixcr \
    && rm mixcr-${version}.zip

RUN cd /mixcr/libraries \
    && curl -s -O https://github.com/repseqio/library-imgt/releases/download/v${imgt_script_version}/imgt.${imgt_version}.sv${imgt_script_version}.json.gz

ENV PATH="/mixcr:${PATH}"

WORKDIR /work

ENTRYPOINT ["/bin/bash"]
