FROM prosyslab/dude:test
COPY entrypoint.sh /entrypoint.sh
RUN cd etc; ls -a
ENTRYPOINT ["/entrypoint.sh"]