#!/bin/bash

docker run --rm -v $(pwd):/work -w /work dockerlamp_php56:latest php $1