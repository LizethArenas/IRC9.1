#!/bin/bash

path="/var/log/"
w="prueba.txt"

cd "$path"
for file in google*
do
#       echo "$file"
#       cat "$file" | grep -i "$w"
        grep -Ril "$w" "$file"
done
