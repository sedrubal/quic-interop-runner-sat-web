#!/usr/bin/env sh

set -eux

DIR=logs/
BUCKET=b2://quic-interop-runner-sat

backblaze-b2 sync --excludeAllSymlinks --compareVersions none --skipNewer --excludeRegex ".*\.pickle" "${DIR}" "${BUCKET}/${DIR}"
backblaze-b2 sync --excludeAllSymlinks --compareVersions none --skipNewer --excludeRegex ".*" --includeRegex ".*\.html" "${DIR}" "${BUCKET}/${DIR}"
backblaze-b2 cancel-all-unfinished-large-files "${BUCKET}"
