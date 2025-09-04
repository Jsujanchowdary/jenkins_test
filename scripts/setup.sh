#!/bin/bash
set -e

setup() {
  echo "=== Running system setup ==="
  apt update -y
  apt-get update -y
  apt-get install -y maven nodejs npm
  echo "=== Setup completed successfully ==="
}

case "$1" in
  setup) setup ;;
  *)
    echo "Usage: $0 {setup}"
    exit 1
    ;;
esac
