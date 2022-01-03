#!/bin/bash

MYLOG=$1
DATETIME=$(date +"%D %T")

echo "Timestamp before work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
echo "creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup
sleep 3
echo "Copying Files" >> /home/$USER/$MYLOG
cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp after work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
echo $DATETIME >> /home/$USER/$MYLOG
