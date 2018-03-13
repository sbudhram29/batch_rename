#!/bin/bash

#$1 = image type
#$2 = index number starting at 1

for i in *.$1
do
  newName=$(echo $i | cut -d'_' -f $2);
  echo "$i" "$newName".$1;
done

