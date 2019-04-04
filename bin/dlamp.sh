#!/bin/bash
usage() {
    echo "Usage:"
    echo "    dlamp -h                                  Display this help message."
    echo "    dlamp php [-72|-71|-70|-56] <command>     Execute PHP"
    echo "    dlamp composer <command>                  Execute composer"
    exit 0
}

get_php_version() {
    local php_version=72
    local valid_php_versions=(72 71 70 56)

    if [[ " ${valid_php_versions[*]} " == *"${1:1:2}"* ]]; then
        php_version=${1:1:2}
    fi

    echo $php_version
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
        php_version=$(get_php_version $1); shift
        docker run --rm -v /$(pwd):/work -w //work docker-lamp_php$php_version:latest php "$*"
        ;;
    composer )
        docker run --rm -v /$(pwd):/work -w //work docker-lamp_php72:latest composer "$*"
        ;;
    * )
        usage
        ;;
esac

