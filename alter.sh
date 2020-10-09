#!/bin/bash
To= "namanj71@gmail.com"
ram_free= $(free -mt | grep Total:|awk '{print $4}')
if  [ $ram_free -le 400 ]
then  
   echo "sending mails"
   echo "Subject: WARNING: RAM size of instance is LOW" |sendmail $TO 
