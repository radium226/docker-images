#!/bin/bash

build_base()
{
  cd "./base"
  docker build -t "spark-base:2.2.0" "."
  cd -
}

build_master()
{
  docker-compose build "spark-master"
}

build_worker()
{
  docker-compose build "spark-worker"
}

build_history_server()
{
  docker-compose build "spark-history-server"
}

main()
{
  build_base
  build_master
  build_worker
  build_history_server
}

main "${@}"
