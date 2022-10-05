#!/bin/bash

sudo su <<EOF

opam init
eval $(opam config env)

dune build OcamlTest.exe

dune exec ./hello_world.exe
EOF

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"