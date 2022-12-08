FROM prosyslab/dude:test
COPY . /
ENTRYPOINT ["/entrypoint.sh"]