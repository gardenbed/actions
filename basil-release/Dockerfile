FROM alpine:3.14

LABEL repository="https://github.com/gardenbed/basil-cli"
LABEL maintainer="Milad Irannejad <moorara@users.noreply.github.com>"

# Install required tools
# RUN apk add --no-cache

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
