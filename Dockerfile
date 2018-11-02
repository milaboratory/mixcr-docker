FROM openjdk:8-jre-alpine3.8

RUN apk --no-cache add openssl wget bash \
    && mkdir /data

RUN cd / \
    && wget https://github.com/milaboratory/mixcr/releases/download/v3.0.2/mixcr-3.0.2.zip \
    && unzip mixcr-3.0.2.zip \
    && mv mixcr-3.0.2 mixcr \
    && rm mixcr-3.0.2.zip

ENV PATH="/mixcr:${PATH}"

WORKDIR /data

ENTRYPOINT ["mixcr", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap"]
