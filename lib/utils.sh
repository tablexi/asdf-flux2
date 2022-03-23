#!/usr/bin/env bash

set -euo pipefail

get_platform() {
  arch=$(uname -m)
  case $arch in
    armv*) arch="arm";;
    arm64) arch="arm64";; # m1 macs
    aarch64) arch="arm64";;
    *) arch="amd64";;
  esac
  echo "$(uname | tr '[:upper:]' '[:lower:]')_${arch}"
}

get_filename() {
  echo "flux_${ASDF_INSTALL_VERSION}_$(get_platform).tar.gz"
}
