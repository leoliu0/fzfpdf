#!/bin/bash

content=$(pdftotext -l 1 $1 -)
IFS=$'\n'
for row in $content:
do
	echo $1: $row
done
