#!/usr/bin/env bash

set -euo pipefail

get_platform() {
  echo "$(uname | tr '[:upper:]' '[:lower:]')_amd64"
}

get_filename() {
  echo "flux_${ASDF_INSTALL_VERSION}_$(get_platform).tar.gz"
}
