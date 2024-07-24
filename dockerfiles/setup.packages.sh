#!/usr/bin/env bash
set -eux

export DEBIAN_FRONTEND=noninteractive

apt-get update
# Remove commented lines and blank lines
apt-get install -y --no-install-recommends $(sed -e '/^\s*#.*$/d' -e '/^\s*$/d' "$1" | sort -u)
rm -rf /var/lib/apt/lists/*
