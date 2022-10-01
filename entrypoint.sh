#!/bin/bash

# sudo su <<EOF

# opam install dune --yes
# eval $(opam config env)

# dune build OcamlTest.exe

# dune exec ./hello_world.exe
# EOF

opam install dune --yes
eval $(opam config env)

dune build OcamlTest.exe

dune exec ./hello_world.exe

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"