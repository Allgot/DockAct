#!/bin/bash

opam init --yes --disable-sandboxing
eval $(opam env)
opam install dune

dune build ocaml_test.exe

dune exec ./ocaml_test.exe

# time=$(date)
# echo "::set-output name=time::$time"