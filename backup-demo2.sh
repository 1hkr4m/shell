!/bin/bash

MYLOG=$1

echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup

echo "Copying Files" >> /home/$USER/$MYLOG
cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG
