FROM ocaml/opam
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]