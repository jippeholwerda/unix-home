#!/bin/bash

if is_macos; then
    export EDITOR="/usr/local/bin/code -w"
else
    export EDITOR="/snap/bin/code -w"
fi
