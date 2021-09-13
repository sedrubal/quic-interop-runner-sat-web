#!/usr/bin/env sh

DIR=logs/
BUCKET=b2://quic-interop-runner-sat

exec backblaze-b2 sync --compareVersions none --skipNewer "${DIR}" "${BUCKET}/${DIR}"
