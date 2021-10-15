#!/bin/sh -l

set -eu

# ...
echo "$INPUT_ARTIFACTS"

# Set action output parameters
echo "::set-output name=release_tag::foo"
echo "::set-output name=release_url::bar"
