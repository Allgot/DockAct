FROM prosyslab/classroom
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]