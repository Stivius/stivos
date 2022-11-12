#!/bin/bash
source $(dirname $(realpath -s $0))/utils.sh

source_file="$1"
env_mapping="$2"

if ! variable_exists "$source_file"; then
  echo 'Specify source file for generation'
  exit
fi

if ! variable_exists "$env_mapping"; then
  echo 'Specify env mapping file'
  exit
fi

variables=( $(grep -oP '(?<=\$)\w+(?=\$)' $source_file) )

source $env_mapping
for i in "${variables[@]}"
do
  eval "value=\${$i}"
  if ! variable_exists "$value"; then
    echo "$i not defined"
    exit
  fi
done

target_file=`echo $source_file | sed "s/.template//"`
cp $source_file $target_file
for i in "${variables[@]}"
do
  eval "value=\${$i}"
  sed -Ei "s|\\\$$i\\\$|$value|g" $target_file
done
