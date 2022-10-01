#!/bin/bash

sudo su - <<EOF
opam init
eval $(opam env)
opam install dune merlin ocaml-lsp-server odoc ocamlformat utop dune-release

dune build

dune exec ./main.exe
EOF

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"