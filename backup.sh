#!/bin/bash
#My second automation script

echo "starting system backup..."

#safty first
if [ -z "$1" ];then

  echo "error:you forget the name"
  exit 1
fi

#making a loop
for target in "$@";do
	echo "------------------"
	echo "processing:"$target..." "

	#building costum name
	destination="${target}_backup$(date +%F)"


	#creating backup
	mkdir $destination

	#coping
	cp -r $target/* $destination/
	echo "seuccess,saved to $destination"
done

echo "backup seccessful!"
