#!/bin/sh

set -eu

# Changing working directory to input path
cd "$INPUT_PATH"

# Run linters
golangci-lint run \
  --new="$INPUT_NEW_CHANGES" \
  --deadline="$INPUT_TIMEOUT" \
  ./...
