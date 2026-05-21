#!/bin/bash

ACTION=$1

case "$ACTION" in
  zip)
    cd project && zip -r ../libs.zip libs
    echo "Zipped project/libs → libs.zip"
    ;;
  unzip)
    unzip -o libs.zip -d project
    echo "Unzipped libs.zip → project/"
    ;;
  *)
    echo "Usage: ./script.sh [zip|unzip]"
    ;;
esac