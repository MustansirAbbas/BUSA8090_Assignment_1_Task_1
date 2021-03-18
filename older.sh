#!/bin/bash

#checking if atleast one arguement is passed
set -e
if [ "$#" -lt 1 ]
then
echo  "Please insert at least one argument"
exit
else
echo -e "\c"
fi

# initializing with oldest with first filename

oldest=$1

# using loops
for file in "$@"
do

 #each time checking if the other files are older than the one initalied 
 if [[ $file -ot $oldest ]]
 then
 #swapping if the new file is older then previous
  oldest=$file
 fi
done

# return the oldest file
echo "$oldest"
