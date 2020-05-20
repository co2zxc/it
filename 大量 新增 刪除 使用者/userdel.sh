#!/bin/bash
for i in $(seq 1 50)
do
userdel  -r BTEAMxx$i
echo  delet BTEAMxx$i 
done

