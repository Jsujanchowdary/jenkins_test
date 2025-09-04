#!/bin/bash
set -e

# Function: setup
setup() {
  local name=$1
  local env=$2
  local region=$3

  echo "=== Running setup ==="
  echo "Name: $name"
  echo "Environment: $env"
  echo "Region: $region"
  echo "=== Setup completed successfully ==="
}

# Function: deploy
deploy() {
  local app=$1
  local version=$2

  echo "=== Running deploy ==="
  echo "App: $app"
  echo "Version: $version"
  echo "=== Deploy completed successfully ==="
}

# Function: cleanup
cleanup() {
  echo "=== Running cleanup ==="
  echo "All temporary files removed"
  echo "=== Cleanup completed successfully ==="
}

# Main script: select function to call based on first argument
command=$1
shift  # remove the function name from $@

case "$command" in
  setup) setup "$@" ;;
  deploy) deploy "$@" ;;
  cleanup) cleanup "$@" ;;
  *)
    echo "Usage: $0 {setup|deploy|cleanup} [arguments...]"
    exit 1
    ;;
esac
