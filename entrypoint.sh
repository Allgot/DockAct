#!/bin/bash

eval $(opam env)
env

dune exec ./ocaml_test.exe $1 $2 $3 $4 # $1: issue_num, $2: issue_contents, $3: repository_url, $4: api_key