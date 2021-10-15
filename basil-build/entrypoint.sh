#!/usr/bin/env bash

set -euo pipefail

# Changing working directory to project path
cd "$INPUT_PATH"

# Build arguments for basil command
args=""
[ "$INPUT_CROSS_COMPILE" = "true" ] && args+=" -cross-compile"
[ -n "$INPUT_PLATFORMS" ] && args+=" -platforms=${INPUT_PLATFORMS}"

# Run basil build command
output=$(eval basil project build $args)
output=$(echo $output | sed 's/ $//g')

# Set action output parameters
echo "::set-output name=artifacts::$output"
