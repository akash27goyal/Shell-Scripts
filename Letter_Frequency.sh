#!/bin/bash

# This Script read sentence from file and output word frequency list.

#Check if input is valid
if [[ -z ${1} ]]
then
	echo "Use the script like this: ${0} -file_name"
	exit 1
fi

SENTENCES=$(cat ${1})
if [[ -z "${SENTENCES}" ]]
then
	echo "${1} is an empty file."
	exit 1
fi

cat ${1} | tr '[:upper:]' '[:lower:]' | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{print $2 " " $1}'