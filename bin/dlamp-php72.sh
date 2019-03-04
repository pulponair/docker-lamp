#!/bin/bash

docker run --rm -v $(pwd):/work -w /work dockerlamp_php72:latest php $1