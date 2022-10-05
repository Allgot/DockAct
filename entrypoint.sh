#!/bin/bash

opam init --yes --disable-sandboxing
eval $(opam env)
opam install dune

dune build ocaml_test.exe

dune exec ./ocaml_test.exe

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"