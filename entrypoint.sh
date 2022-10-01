#!/bin/bash

# sudo su <<EOF

# opam install dune --yes
# eval $(opam config env)

# dune build OcamlTest.exe

# dune exec ./hello_world.exe
# EOF

apt-get update
apt-get install software-properties-common

add-apt-repository ppa:avsm/ppa
apt update
apt install opam

opam init
eval $(opam config env)

opam install dune dune-release --yes
eval $(opam config env)

dune build OcamlTest.exe

dune exec ./hello_world.exe

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"