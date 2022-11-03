FROM prosyslab/dude:test
COPY entrypoint.sh /entrypoint.sh
RUN cd etc; cat bash.bashrc
ENTRYPOINT ["/entrypoint.sh"]