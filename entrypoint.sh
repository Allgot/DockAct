#!/bin/bash

sudo su <<EOF

opam install dune # merlin ocaml-lsp-server odoc ocamlformat utop dune-release --yes
eval $(opam config env)

dune build OcamlTest.exe

dune exec ./hello_world.exe
EOF

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"