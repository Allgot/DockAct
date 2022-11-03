FROM prosyslab/dude:test
COPY entrypoint.sh /entrypoint.sh
RUN cd root;ls -a
ENTRYPOINT ["/entrypoint.sh"]