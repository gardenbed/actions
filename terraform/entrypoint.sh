#!/bin/sh -l

set -eu

cd "$INPUT_PATH"

terraform init
terraform "$@"
