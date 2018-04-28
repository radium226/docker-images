FROM spark-base

COPY ["./spark-env.sh.tpl", "/etc/spark/spark-env.sh.tpl"]

ENTRYPOINT ["/entrypoint"]
CMD ["start-master"]
