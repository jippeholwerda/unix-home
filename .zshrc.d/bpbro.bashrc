#!/bin/bash

# export PATH=$PATH:~/Code/bpbro/bpbro-code/src/build/local

bpbro () {
  if ! pwd | grep -q /Code/bpbro/bpbro-code; then
    cd ~/Code/bpbro/bpbro-code
  fi
  
  # source /Users/jippeholwerda/Code/bpbro/bpbro-code/src/build/local/env.sh
}
