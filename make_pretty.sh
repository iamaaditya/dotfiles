#!/bin/zsh

p='pretty_'
cat $1 | python -m json.tool >> $p$1
