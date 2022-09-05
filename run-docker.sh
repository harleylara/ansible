#!/bin/bash

docker run --rm -it \
    -v $PWD:$HOME/ansible \
    test-env bash
