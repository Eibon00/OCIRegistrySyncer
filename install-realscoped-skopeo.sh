#!/usr/bin/env bash
# install-realscoped-skopeo.sh
# Download and replace system skopeo with the realscoped build from Neboer
set -euo pipefail

SKOPEO_BINARY_URL="${SKOPEO_BINARY_URL:-https://github.com/Neboer/realscoped-skopeo/releases/download/v1.20.0-realscoped/skopeo-linux-amd64}"
if [ -e "/usr/bin/skopeo" ]; then
    echo "Removing existing /usr/bin/skopeo"
    sudo rm -f -- "/usr/bin/skopeo"
fi
sudo curl -L --output /usr/bin/skopeo "$SKOPEO_BINARY_URL"
echo "Downloaded realscoped skopeo from $SKOPEO_BINARY_URL"
sudo chmod +x /usr/bin/skopeo
echo "Realscoped skopeo installed to /usr/bin/skopeo"
