#!/bin/bash
$TO="namanj71@gmail.com"
# for monitoring the disk space used
disk_space= $(df -h /boot |awk '{print $5}')
if [ disk_space -ge 85 ]
then
   echo "disk space is greater 85%"
   echo "Subject:Disk Space limit exceed than 85%"
   echo "body: "   
