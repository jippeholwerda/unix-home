#!/bin/bash

hitch() {
     command hitch "$@"
     if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
#alias unhitch='hitch -u'
#hitch
