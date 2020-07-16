#!/bin/bash

export PATH=~/.home/.bin:$PATH
if [ is_macos ]; then
    export PATH=~/.home/.bin/macos:$PATH
else
    export PATH=~/.home/.bin/linux:$PATH
fi
