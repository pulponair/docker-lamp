#!/bin/bash

docker run --rm -v $(pwd):/work -w /work dockerlamp_php70:latest php $1