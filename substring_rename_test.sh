#!/bin/bash

#$1 = image type
#$2 = index number starting at 1
#$3 = separator [-, _]

for i in *.$1
do
  newName=$(echo $i | cut -d${3:--} -f $2);
  echo "$i" "$newName".$1;
done

