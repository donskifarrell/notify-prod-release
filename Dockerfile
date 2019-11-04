# Container image that runs your code
FROM alpine:3.10

RUN set -e -x; \
        apk add --no-cache \
            bash \
            curl \
            jq \
            git \
            openssh-client \
        ;
        
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
