FROM alpine:3.14

LABEL repository="https://github.com/gardenbed/actions"
LABEL maintainer="Milad Irannejad <moorara@users.noreply.github.com>"

# Install shellcheck (https://github.com/koalaman/shellcheck)
RUN wget -q -O shellcheck.tar.xz https://github.com/koalaman/shellcheck/releases/download/stable/shellcheck-stable.linux.x86_64.tar.xz && \
    tar --strip-components=1 -C /usr/local/bin/ --xz -xvf shellcheck.tar.xz shellcheck-stable/shellcheck && \
    rm -rf shellcheck.tar.xz && \
    shellcheck --version

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
