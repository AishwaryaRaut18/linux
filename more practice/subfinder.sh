#!/bin/bash
domain=$1
list=$2
thread=$3
(while read sub;do
             if host"$sub.$domain" &> /dev/null;then
		     echo"$sub.$domain"
	     fi
     done<$list) |xargs -P"$thread" -I x
     
