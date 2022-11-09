#!/bin/sh

set -eu

# Changing working directory to input path
cd "$INPUT_PATH"

# Run linters
if [ -z "$INPUT_FROM_REVISION" ]; then
  golangci-lint run --deadline="$INPUT_TIMEOUT" ./...
else
  golangci-lint run --deadline="$INPUT_TIMEOUT" --new-from-rev="$INPUT_FROM_REVISION" ./...
fi
