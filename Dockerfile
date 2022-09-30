FROM ocaml/opam
COPY entrypoint.ml /entrypoint.ml
ENTRYPOINT ["/entrypoint.ml"]