FROM openjdk:8-jre-alpine3.8

ARG version=3.0.2

RUN apk --no-cache add openssl wget bash \
    && mkdir /data

RUN cd / \
    && wget https://github.com/milaboratory/mixcr/releases/download/v${version}/mixcr-${version}.zip \
    && unzip mixcr-${version}.zip \
    && mv mixcr-${version} mixcr \
    && rm mixcr-${version}.zip

ENV PATH="/mixcr:${PATH}"

WORKDIR /data

ENTRYPOINT ["mixcr", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap"]
