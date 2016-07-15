#!/bin/bash

printf "\n=== APT-Installing dependencies\n"
apt-get update -y && apt-get install -y --no-install-recommends git libgmp-dev

mkdir -p "$HOME"/.local/bin

export PATH=$HOME/.local/bin:$PATH


# Download and unpack the `stack` executable :
printf "\n=== Retrieving Stack build tool\n"
curl -L https://www.stackage.org/stack/linux-x86_64 | tar xz --wildcards --strip-components=1 -C $HOME/.local/bin '*/stack'

stack setup
