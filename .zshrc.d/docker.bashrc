#!/bin/bash

alias dockviz="docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"
alias sen="docker run -v /var/run/docker.sock:/run/docker.sock -ti -e TERM tomastomecek/sen"
alias dry="docker run -it -v /var/run/docker.sock:/var/run/docker.sock moncho/dry"
