FROM ruby:3.3.6-alpine

LABEL repository="https://github.com/gardenbed/actions"
LABEL maintainer="Milad Irannejad <moorara@users.noreply.github.com>"

# Install required tools
# RUN apk add --no-cache

# Install RuboCop (https://rubocop.org)
RUN gem install rubocop

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
