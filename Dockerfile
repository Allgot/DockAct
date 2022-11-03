FROM prosyslab/dude:test
COPY entrypoint.sh /entrypoint.sh
RUN ls
ENTRYPOINT ["/entrypoint.sh"]