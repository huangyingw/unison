#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt-get install -y \
    ocaml \
    opam

brew install \
    ocaml \
    opam

make \
    && sudo cp src/unison /usr/local/bin \
    && sudo cp src/unison-fsmonitor /usr/local/bin \
    && ~/loadrc/gitrc/g.sh
