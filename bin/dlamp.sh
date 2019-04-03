#!/bin/bash
usage() {
      echo "Usage:"
      echo "    dlamp -h                      Display this help message."
      echo "    dlamp php <command>           Execute PHP (latest Version - 7.2)"
      echo "    dlamp php71 <command>         Execute PHP 7.1"
      echo "    dlamp php70 <command>         Execute PHP 7.0"
      echo "    dlamp php56 <command>         Execute PHP 5.6"
      exit 0
}

while getopts ":h" opt; do
  case ${opt} in
    h )
      usage
      ;;
    \? )
      echo "Invalid Option: -$OPTARG" 1>&2
      exit 1
      ;;
  esac
done
shift $((OPTIND -1))

subcommand=$1; shift
case "$subcommand" in
  php )
    echo "$subcommand $1"
    docker run --rm -v /$(pwd):/work -w //work docker-lamp_php72:latest php $1
    ;;
  php71 )
    echo "$subcommand $1"
    docker run --rm -v /$(pwd):/work -w //work docker-lamp_php71:latest php $1
    ;;
  php70 )
    echo "$subcommand $1"
    docker run --rm -v /$(pwd):/work -w //work docker-lamp_php70:latest php $1
    ;;
  php56 )
    echo "$subcommand $1"
    docker run --rm -v /$(pwd):/work -w //work docker-lamp_php56:latest php $1
    ;;
  * )
    usage
    ;;
esac

