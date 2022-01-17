#!/bin/bash

echo "Enter login for new user"
read name
echo "Enter password for new user"
read password

useradd -m -p $password $name
mkdir /home/$name/.ssh
ssh-keygen -f /home/$name/.ssh/$name_keys.pub
chown -R $name:$name /home/$name/.ssh
chmod 700 /home/$name/.ssh
chmod 600 /home/$name/.ssh/$name_keys.pub

echo "Does new user need sudo? (y/n)"
read sado
if [[ $sado == "y" ]]
then
    usermod -G sudo $name
    echo "Sudo assigned"
else
    echo "$name stay mortal"
fi

