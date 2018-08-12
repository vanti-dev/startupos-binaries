#!/usr/bin/env bash
 # Wrapper script for running grpcwebproxy
 platform=$(uname)
 if [ "$platform" == "Darwin" ]; then
    BINARY=$(find . -iname grpcwebproxy_osx | head -n1)
elif [ "$platform" == "Linux" ]; then
    BINARY=$(find . -iname grpcwebproxy_linux | head -n1)
else
    echo "grpcwebproxy does not have a binary for $platform"
    exit 1
fi
 $BINARY "$@"
