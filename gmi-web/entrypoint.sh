#!/bin/sh

die() {
    echo "$@" 1>&2
    exit 1
}

args=""

if [ -n "$INPUT_CONFIG_FILE" ]; then
    args="$args --config $INPUT_CONFIG_FILE"
fi

if [ -n "$INPUT_CSS_FILE" ]; then
    args="$args --css $INPUT_CSS_FILE"
fi

if ! gmi-web $args $(find . -name '*.gmi'); then
    die "failed to generate HTML files"
fi

if [ -n "$INPUT_DELETE_GMI" ] && [ "$INPUT_DELETE_GMI" = "true" ]; then
    if ! find . -name '*.gmi' -delete; then
        die "failed to delete GMI files"
    fi
fi
