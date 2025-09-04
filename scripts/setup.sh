#!/bin/bash
set -e

setup() {
  echo "=== Running system setup ==="
  sudo apt update -y
  sudo apt-get update -y
  sudo apt-get install -y maven nodejs npm
  echo "=== Setup completed successfully ==="
}

# Dispatcher
case "$1" in
  setup) setup ;;
  *)
    echo "Usage: $0 {setup}"
    exit 1
    ;;
esac
