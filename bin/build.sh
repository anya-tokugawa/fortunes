#!/bin/bash
set -eu

mkdir -p ./build/
rm -f ./build/*

while read -r from;do
  t1="./build/$(echo "$from" |sed -e 's;^\./src/;;g' -e 's;\.txt$;;g' | tr '/' '-' )"
  t2="${t1}.dat"
  cp "$from" "$t1"
  strfile -c % "$t1" "$t2" | tr -d $'\n'
  echo ""

done < <(find ./src/ -name "*.txt" -type f)
