#!/bin/bash

i=1
datee=$(date "+%Y-%m-%d")

read -p "Title: " title
read -p "Session: " session

start_t=$(date "+%H:%M:%S")

t_in_s=$(date -d ${start_t} +%s)

if ! [ -f ${title}.log ]; then
    echo "======== SESSION START ========" > ${title}.log
    echo "Title: ${title}" >> ${title}.log
    echo "Session: ${session}" >> ${title}.log
    echo "Date: ${datee}" >> ${title}.log
    echo "===============================" >> ${title}.log
    echo "" >> ${title}.log
else
    echo "======== SESSION START ========" >> ${title}.log
    echo "Title: ${title}" >> ${title}.log
    echo "Session: ${session}" >> ${title}.log
    echo "Date: ${datee}" >> ${title}.log
    echo "===============================" >> ${title}.log
    echo "" >> ${title}.log
fi

while [ "${log,,}" != "done" ]; do
    
     
     read -p "Log ${i}: " log

     if [ "${log,,}" = "done" ]; then
         #Duration Calculation
         end_t=$(date "+%H:%M:%S")
         et_in_s=$(date -d ${end_t} +%s)
         let dur=et_in_s-t_in_s

         echo ""
         echo "Summary: "
         read -p "Tools Used: " tools
         read -p "Notes: " notes
         read -p "Upnext: " upnext
         read -p "Status (Completed/Incomplete): " status

         echo "" >> ${title}.log
         echo "======== SESSION SUMMARY ========" >> ${title}.log
         echo "Tools Used: ${tools}" >> ${title}.log
         echo "Notes: ${notes}" >> ${title}.log
         echo "Upnext: ${upnext}" >> ${title}.log
         echo $(printf "Duration: %02d:%02d:%02d" $((dur/3600)) $(( (dur%3600)/60 )) $((dur%60))) >> ${title}.log
         echo "Status: ${status}" >> ${title}.log
         echo "==== ============================" >> ${title}.log
         echo "" >> ${title}.log
         echo "======== END OF SESSION ========" >> ${title}.log
         echo "" >> ${title}.log

         continue
     fi

     echo "[${datee} $(date "+%H:%M:%S")] - ${log}" >> ${title}.log
     let i++
done
