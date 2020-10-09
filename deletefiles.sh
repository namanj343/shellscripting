#!/bin/bash
ls -ltr <directory-name> |awk '{print $9}' > <storefilenewdirectoryorfile>
for i in `cat storefilenewdirectoryorfile`; do
	STARTTIME= $(date +%s -d"$i 00:00:00")
	ENDTIME= $(date +%s)
	echo $((ENDTIME - STARTTIME)) | awk '{print int($1/60)}'> <nameoffilewithdefinedtimeperiod>
	COUNT= `cat nameoffilewithdefinedtimeperiod`
	if [ $COUNT -gt <definethetimeperiod> ]; then
		rm -rf <directory-name>/$i
	fi
done
