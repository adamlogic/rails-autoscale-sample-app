#!/usr/bin/env bash

case $JOB_BACKEND in

  sidekiq)
    echo "Starting Sidekiq..."
    bundle exec sidekiq -q urgent -q default
    ;;

  resque)
    echo "Resque not yet supported..."
    ;;

  delayed_job)
    echo "Starting Delayed Job..."
    QUEUES=urgent,default rake jobs:work
    ;;

  que)
    echo "Que not yet supported..."
    ;;

  *)
    echo "JOB_BACKEND '$JOB_BACKEND' not supported"
    exit 1
    ;;

esac
