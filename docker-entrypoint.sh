#!/bin/bash
set -e

if [ -n "$KUBECTL_CONFIG_CONTENT" ]; then
    # overwrite kubectl config file (useful for ci/cd)
    mkdir -p /root/.kube
    echo $KUBECTL_CONFIG_CONTENT | base64 --decode > /root/.kube/config
fi

exec "$@"
