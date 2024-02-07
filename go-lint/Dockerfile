FROM golang:1.22

LABEL repository="https://github.com/gardenbed/actions"
LABEL maintainer="Milad Irannejad <moorara@users.noreply.github.com>"

# Install golangci-lint (https://github.com/golangci/golangci-lint)
RUN wget -qO - https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s latest

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
