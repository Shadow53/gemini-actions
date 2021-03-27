#!/bin/sh

args=""

if [ -n "$INPUT_CONFIG_FILE" ]; then
    args="$args --config $INPUT_CONFIG_FILE"
fi

if [ -n "$INPUT_CSS_FILE" ]; then
    args="$args --css $INPUT_CSS_FILE"
fi

gmi-web $args $(find . -name '*.gmi')