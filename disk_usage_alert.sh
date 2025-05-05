#!/bin/bash

num=80

df -h | grep -E '^/dev/' | while read line; do
	usage=$(echo $line | awk '{print $5}' | tr -d '%')
	name=$(echo $line | awk '{print $1}')
	if [ $usage -gt $num ]; then
		echo "$name usage is greater than 80%"
	else
		echo "$name is nomal"
	fi
done
