#!/usr/bin/env bash
set -euo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
HADOLINT="${DIR}/hadolint"

BASE_URL="https://github.com/hadolint/hadolint/releases/download/v1.17.6"
case $OSTYPE in
    "linux-gnu")
        URL="${BASE_URL}/hadolint-Linux-x86_64"
        ;;
    "darwin")
        URL="${BASE_URL}/hadolint-Darwin-x86_64"
        ;;
esac

if [ ! -f $HADOLINT ]; then
    echo -e "\nDownloading hadolint...\n"
    wget -O $HADOLINT $URL &> /dev/null
fi

if [ ! -x ./hadolint ]; then
    chmod +x $HADOLINT
fi

$HADOLINT "$@"
