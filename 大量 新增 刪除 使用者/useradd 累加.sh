#!/bin/bash
groupadd BTEAM
for i in $(seq 1 50)
do
useradd -G  BTEAM BTEAMxx$i
echo  QWExxRT$i | passwd --stdin BTEAMxx$i
done

