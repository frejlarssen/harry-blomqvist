#!/bin/bash

NUM=0
for file in *
do
	echo $NUM
	TYPE=$(echo $file | sed -n 's/^.*\([.].*\)$/\1/gp')
	echo $TYPE
	SHASUM=$(shasum -a 1 $file | sed -n 's/^\(.*\)  .*$/\1/gp')
	echo $SHASUM
	echo $file
	mv $file $SHASUM$TYPE
	((NUM++))
done