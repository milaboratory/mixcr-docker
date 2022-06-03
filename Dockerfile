# syntax=docker/dockerfile:1

FROM alpine:latest AS downloader
ARG version="3.0.13"
ARG imgt_version="202141-1"
ARG imgt_script_version="7"
WORKDIR /download
RUN wget https://github.com/milaboratory/mixcr/releases/download/v${version}/mixcr-${version}.zip \
	&& unzip mixcr-${version}.zip \
	&& mv mixcr-${version} mixcr
RUN wget https://github.com/repseqio/library-imgt/releases/download/v${imgt_script_version}/imgt.${imgt_version}.sv${imgt_script_version}.json.gz \
	&& gunzip imgt.${imgt_version}.sv${imgt_script_version}.json.gz

FROM adoptopenjdk:11-jre-hotspot as mixcr_base
COPY --from=downloader /download/mixcr /mixcr
ENV PATH="/mixcr:${PATH}"
WORKDIR /work
ENTRYPOINT ["/bin/bash"]

FROM mixcr_base
WORKDIR /mixcr/libraries
COPY --from=downloader /download/imgt*.json ./
WORKDIR /work
ENTRYPOINT ["/bin/bash"]
