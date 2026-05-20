#!/bin/bash

ACTION=$1

case "$ACTION" in
  zip)
    cd app && zip -r ../libs.zip libs
    echo "Zipped app/libs → libs.zip"
    ;;
  unzip)
    unzip -o libs.zip -d app
    echo "Unzipped libs.zip → app/"
    ;;
  *)
    echo "Usage: ./script.sh [zip|unzip]"
    ;;
esac