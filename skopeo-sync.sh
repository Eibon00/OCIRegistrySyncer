#!/bin/sh
/usr/bin/skopeo sync --src yaml --dest docker --dest-tls-verify=false --scoped src-images.yaml "$TARGET_REPO"
