#!/bin/bash

build_base()
{
  cd "./base"
  docker build -t "spark-base:2.3.0" "."
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

build_history()
{
  docker-compose build "spark-history"
}

main()
{
  build_base
  build_master
  build_worker
  build_history
}

main "${@}"
