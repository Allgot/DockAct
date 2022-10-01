#!/bin/bash

sudo su <<EOF
opam init --yes --disable-sandboxing
opam install dune #merlin ocaml-lsp-server odoc ocamlformat utop dune-release --yes
eval $(opam config env)

dune build

dune exec ./main.exe
EOF

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"