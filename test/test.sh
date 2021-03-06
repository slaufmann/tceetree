#!/bin/bash -x

set -euo pipefail

TCEETREE=../tceetree

${TCEETREE} -V -i cscope.out -o tceetree.out

diff -u \
    <(grep '^[[:space:]]' tceetree.out.orig | sort) \
    <(grep '^[[:space:]]' tceetree.out | sort) \
