#!/bin/bash

echo "1234" | su -

opam init --yes --disable-sandboxing
eval $(opam env --switch=default)

dune build ocaml_test.exe

dune exec ./ocaml_test.exe

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"