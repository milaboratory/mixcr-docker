FROM openjdk:11-jre

ARG version="3.0.12"
ARG imgt_version="201946-3"
ARG imgt_script_version="6"

RUN mkdir /work

RUN cd / \
    && wget -q https://github.com/milaboratory/mixcr/releases/download/v${version}/mixcr-${version}.zip \
    && unzip mixcr-${version}.zip \
    && mv mixcr-${version} mixcr \
    && rm mixcr-${version}.zip

RUN cd /mixcr/libraries \
    && wget -q https://github.com/repseqio/library-imgt/releases/download/v${imgt_script_version}/imgt.${imgt_version}.sv${imgt_script_version}.json.gz

ENV PATH="/mixcr:${PATH}"

WORKDIR /work

ENTRYPOINT ["/bin/bash"]
