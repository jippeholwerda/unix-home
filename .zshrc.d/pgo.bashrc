#!/bin/bash

function pgo-fwd-bpbro-test() {
  while :; do kubectl port-forward service/postgres-operator 8444:8443 -n bzk-bpbro-bhr; sleep 1; done
}

function pgo-fwd-bpbro-prd() {
  while :; do kubectl --as bzk-bpbro-tab port-forward service/postgres-operator 8445:8443 -n bzk-bpbro-bhr; sleep 1; done
}

function pgo-fwd-bro-acc() {
  while :; do kubectl port-forward service/postgres-operator 8444:8443 -n bzk-bro-pgo; sleep 1; done
}

function pgo-fwd-gir-acc() {
  while :; do kubectl port-forward service/postgres-operator 8444:8443 -n brzo-gir-bhr; sleep 1; done
}

function pgo-bro-acc() {
  export PGO_CA_CERT="${HOME}/.pgo/bro.acc.crt"
  export PGO_CLIENT_CERT="${HOME}/.pgo/bro.acc.crt"
  export PGO_CLIENT_KEY="${HOME}/.pgo/bro.acc.key"
  export PGOUSER="${HOME}/.pgo/bro-pgouser"
  export PGO_APISERVER_URL="https://127.0.0.1:8444"
  export PGO_NAMESPACE="bzk-bro-acc"
  ln -fs /usr/local/bin/pgo42 /usr/local/bin/pgo
}

function pgo-bpbro-test() {
  export PGO_CA_CERT="${HOME}/.pgo/bpbro.client.crt"
  export PGO_CLIENT_CERT="${HOME}/.pgo/bpbro.client.crt"
  export PGO_CLIENT_KEY="${HOME}/.pgo/bpbro.client.key"
  export PGOUSER="${HOME}/.pgo/bpbro-pgouser"
  export PGO_APISERVER_URL="https://127.0.0.1:8444"
  ln -fs /usr/local/bin/pgo40 /usr/local/bin/pgo
}

function pgo-bpbro-prd() {
  export PGO_CA_CERT="${HOME}/.pgo/bpbro.client.prd.crt"
  export PGO_CLIENT_CERT="${HOME}/.pgo/bpbro.client.prd.crt"
  export PGO_CLIENT_KEY="${HOME}/.pgo/bpbro.client.prd.key"
  export PGOUSER="${HOME}/.pgo/bpbro-pgouser"
  export PGO_APISERVER_URL="https://127.0.0.1:8445"
  ln -fs /usr/local/bin/pgo40 /usr/local/bin/pgo
}

function pgo-gir-acc() {
  export PGO_CA_CERT="${HOME}/.pgo/brzo.client.crt"
  export PGO_CLIENT_CERT="${HOME}/.pgo/brzo.client.crt"
  export PGO_CLIENT_KEY="${HOME}/.pgo/brzo.client.key"
  export PGOUSER="${HOME}/.pgo/brzo-pgouser"
  export PGO_APISERVER_URL="https://127.0.0.1:8444"
  ln -fs /usr/local/bin/pgo40 /usr/local/bin/pgo
}
