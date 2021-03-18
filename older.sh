#!/bin/bash

set -e
if [ "$#" -lt 1 ]
then
echo  "Please insert at least one argument"
exit
else
echo -e "\c"
fi

oldest=$1

for file in "$@"
do
 if [[ $file -ot $oldest ]]
 then
	oldest=$file
 fi
done

echo "$oldest"
