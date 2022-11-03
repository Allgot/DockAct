FROM prosyslab/dude:test
COPY entrypoint.sh /entrypoint.sh
RUN env
ENTRYPOINT ["/entrypoint.sh"]