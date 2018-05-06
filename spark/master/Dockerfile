FROM spark-base:2.3.0

COPY ["./spark-env.sh.tpl", "/etc/spark/spark-env.sh.tpl"]

ENTRYPOINT ["/entrypoint"]
CMD ["start-master"]