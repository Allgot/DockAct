FROM prosyslab/classroom
COPY entrypoint.sh /entrypoint.sh
USER 0
RUN opam init --yes --disable-sandboxing
RUN eval $(opam env)
RUN opam install dune
ENTRYPOINT ["/entrypoint.sh"]