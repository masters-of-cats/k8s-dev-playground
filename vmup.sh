#!/bin/bash
set -euo pipefail

log() {
  echo
  echo "----------------------------------------------------------------------"
  echo "$1"
  echo "----------------------------------------------------------------------"
  echo
}

(
cd "$(dirname "$0")"
vagrant up --provision --provider virtualbox
)

log "Don't forget to read the post install steps for your OS in README.md."
