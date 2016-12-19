#!/usr/bin/env bash

cd $(dirname $(readlink -f $0))

tmpdir=`mktemp -d /tmp/arXXXXXX`
enlightenment_remote -desktop-show 2 0
{
  PATH="$PATH:`pwd`" AR_TMP_DIR=$tmpdir torsocks terminology -d ../$1 -g 239x70 -S v-h;
  rm -fr $tmpdir
} &
