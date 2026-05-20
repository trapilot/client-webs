#!/bin/bash

ACTION=$1

case "$ACTION" in
  zip)
    zip -r libs.zip libs
    echo "Zipped libs → libs.zip"
    ;;
  unzip)
    unzip libs.zip -d .
    echo "Unzipped libs.zip"
    ;;
  *)
    echo "Usage: ./script.sh [zip|unzip]"
    ;;
esac