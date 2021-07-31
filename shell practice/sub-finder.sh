#!/bin/bash
domain=$1
list=$2
thread=$3
while read sub;do
	echo "$sub.$domain";
  done < $list | xargs -P$thread -I x bash -c "if host x &> /dev/null:then
	echo x;
fi"


