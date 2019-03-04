#!/bin/bash

docker run --rm -v $(pwd):/work -w /work dockerlamp_php71:latest php $1