FROM alpine:3.20

LABEL repository="https://github.com/gardenbed/actions"
LABEL maintainer="Milad Irannejad <moorara@users.noreply.github.com>"

# Install required tools
RUN apk add --no-cache jq

# Install kubeval (https://github.com/instrumenta/kubeval)
RUN wget -q -O kubeval.tar.gz https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz && \
    tar -C /usr/local/bin/ -xf kubeval.tar.gz && \
    rm -rf kubeval.tar.gz && \
    kubeval --version

# Install kube-score (https://github.com/zegl/kube-score)
RUN latest_release=$(wget -qO - https://api.github.com/repos/zegl/kube-score/releases/latest) && \
    download_url=$(echo ${latest_release} | jq -r '.assets[] | select(.name | match("linux_amd64.tar.gz$")) | .browser_download_url') && \
    wget -q -O kube-score.tar.gz ${download_url} && \
    tar -C /usr/local/bin/ -xf kube-score.tar.gz && \
    rm -rf kube-score.tar.gz && \
    kube-score version

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
