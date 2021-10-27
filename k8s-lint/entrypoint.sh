#!/bin/sh -l

set -eu

kubeval_on_file() {
  printf "\n====================[ KUBEVAL ]====================\n\n"
  file=$1
  kubeval "$file"
}

kubeval_on_dir() {
  printf "\n====================[ KUBEVAL ]====================\n\n"
  dir=$1
  find "$dir" | grep -E "yml|yaml$" | xargs kubeval
}

kubescore_on_file() {
  printf "\n====================[ KUBE-SCORE ]====================\n\n"
  file=$1
  kube-score score "$file"
}

kubescore_on_dir() {
  printf "\n====================[ KUBE-SCORE ]====================\n\n"
  dir=$1
  find "$dir" | grep -E "yml|yaml$" | xargs kube-score score
}

run() {
  if [ -f "$1" ]; then
    (( $INPUT_ENABLE_KUBEVAL )) && kubeval_on_file "$1" || true
    (( $INPUT_ENABLE_KUBESCORE )) && kubescore_on_file "$1" || true
  elif [ -d "$1" ]; then
    (( $INPUT_ENABLE_KUBEVAL )) && kubeval_on_dir "$1" || true
    (( $INPUT_ENABLE_KUBESCORE )) && kubescore_on_dir "$1" || true
  else
    echo "$1 is neither a file nor a directory."
    exit 1
  fi
}

run "$INPUT_PATH"
