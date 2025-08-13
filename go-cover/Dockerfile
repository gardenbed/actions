FROM golang:1.25

LABEL repository="https://github.com/gardenbed/actions"
LABEL maintainer="Milad Irannejad <moorara@users.noreply.github.com>"

# Install Codecov Uploader
RUN wget -q -O /usr/local/bin/codecov https://uploader.codecov.io/latest/linux/codecov && \
    chmod 755 /usr/local/bin/codecov

# Install Code Climate test-reporter
RUN wget -q -O /usr/local/bin/test-reporter https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 && \
    chmod 755 /usr/local/bin/test-reporter

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
