#!/bin/bash

#$1 = image type
#$2 = index number starting at 1
#$3 = separator

for i in `ls -r *.$1`
do
  newName=$(echo $i | cut -d${3:--} -f $2);
  mv "$i" "$newName".$1;
done

