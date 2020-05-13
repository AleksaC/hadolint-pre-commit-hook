#!/usr/bin/env bash
set -euo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
HADOLINT="${DIR}/hadolint"

if [ ! -f $HADOLINT ]; then
    echo -e "\nDownloading hadolint...\n"
    wget -O $HADOLINT https://github.com/hadolint/hadolint/releases/download/v1.17.6/hadolint-Linux-x86_64 &> /dev/null
fi

if [ ! -x ./hadolint ]; then
    chmod +x $HADOLINT
fi

$HADOLINT "$@"
