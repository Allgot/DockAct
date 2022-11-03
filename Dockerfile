FROM prosyslab/dude:test
COPY entrypoint.sh /entrypoint.sh
RUN ls -a
ENTRYPOINT ["/entrypoint.sh"]