#!/bin/bash

#$1 = image type
#$2 = season
#$3 = company
#$4 = index number starting at 1

for i in *.$1
do
  newName=$(echo $i | cut -d'_' -f $4);
  mv "$i" $2"_$3_$newName".$1;
done

