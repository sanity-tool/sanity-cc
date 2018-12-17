#!/usr/bin/env bash

OPTIONS_DIR=${SANITY_DIR:-.sanity}

mkdir $OPTIONS_DIR 2>/dev/null
echo $PWD,$@ >> $OPTIONS_DIR/options

${REAL_CC:-gcc} "$@"
