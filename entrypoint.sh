#!/bin/bash

# eval $(opam env) # 제대로 못 잡아주는중.....

env CAML_LD_LIBRARY_PATH=/root/.opam/default/lib/stublibs:/root/.opam/default/lib/ocaml/stublibs:/root/.opam/default/lib/ocaml > /dev/null
env OCAML_TOPLEVEL_PATH=/root/.opam/default/lib/toplevel > /dev/null
env PKG_CONFIG_PATH=/root/.opam/default/lib/pkgconfig > /dev/null
env HOSTNAME=32638fc6e417 > /dev/null
env PWD=/ > /dev/null
env MANPATH=:/root/.opam/default/man > /dev/null
env OPAM_SWITCH_PREFIX=/root/.opam/default > /dev/null
env HOME=/root > /dev/null
env LESSCLOSE=/usr/bin/lesspipe %s %s > /dev/null
env TERM=xterm > /dev/null
env LESSOPEN=| /usr/bin/lesspipe %s > /dev/null
env OLDPWD=/roote > /dev/null
PATH=/root/.opam/default/bin:$PATH > /dev/null

dune exec ./ocaml_test.exe $1 $2 $3 $4 # $1: issue_num, $2: issue_contents, $3: repository_url, $4: api_key