#!/bin/bash

printf "\n=== APT-Installing dependencies\n"
apt-get update -y && apt-get install -y --no-install-recommends \
			     build-essential gcc libgmp-dev

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442
# Ubuntu 16 :
echo 'deb http://download.fpcomplete.com/ubuntu xenial main'|sudo tee /etc/apt/sources.list.d/fpco.list
apt-get update && sudo apt-get install stack -y

mkdir -p "$HOME"/.local/bin

export PATH=$HOME/.local/bin:$PATH


# Download and unpack the `stack` executable :
printf "\n=== Retrieving Stack build tool\n"
curl -L https://www.stackage.org/stack/linux-x86_64 | tar xz --wildcards --strip-components=1 -C $HOME/.local/bin '*/stack'

stack setup
