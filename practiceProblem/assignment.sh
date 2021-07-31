#! /bin/bash
read -p "enter argument" n
if $n == "redhat"
then
  echo "fendora"
elif $n == "fendor"
then
  echo "redhat"
else
  echo "redhat|fendora"
fi
