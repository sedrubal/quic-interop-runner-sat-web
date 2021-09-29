#!/usr/bin/env sh

set -eux

HOST="faui7s4.informatik.uni-erlangen.de"
PATH_ON_HOST="/var/www/interop.sedrubal.de/logs/"

exec rsync -avzlxhi --info=progress2 ./logs/ "${HOST}:${PATH_ON_HOST}"
# exec rsync -avzlxhi --info=progress2 --zc=zstd "${HOST}:${PATH_ON_HOST}" .
