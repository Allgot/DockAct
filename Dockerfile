FROM prosyslab/dude:test
COPY entrypoint.sh /entrypoint.sh
RUN cd root;cat .bashrc
ENTRYPOINT ["/entrypoint.sh"]