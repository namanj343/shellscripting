#!/bin/bash
#Watch video for delete files for a particular date
#https://youtu.be/c3J9-CZ3L3c
get_date=$( ls -l | awk '{print $6,$7}')
echo  $get_date

#delimitor in shell script is use to seperate variable with txt like#
#expr "filename_20200121" | awk -F_ '{print $NF}'
# -F_: use for seperation 
# To get the basename of file we will use
#basename `filename.txt` .txt
# it will give us output of filename 
#if [ $get_date! ="" ]
#        echo $get_date
#	break
##fi
#To delete a logs if it has log month then 1 months
iif [ $del_month -eq 0 ]
then 
del_month=12
del_year=`expr $arg_year - 1`
else
#printf command should have 2 digit number
del_month= `printf "%02d" $del_month`
del_year= `$arg_year`
fi
del_date=`expr $del_year$del_month01`
for f in $arg_path/*
do
filename=`expr $(basename $f.log)`
filedate= `expr $filename | -F_ '{print $NF}`
if [ $filedate -le $del_date ]
then rm -f $f
fi
done



