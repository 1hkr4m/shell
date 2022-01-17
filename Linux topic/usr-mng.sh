#!bin/bash

Main ()
{
FILE=/etc/passwd
n=1

for name in $(awk 'BEGIN{FS=":"}{print $1}' < "FILE")
do
  echo "User$n = $name"
  groups $name
  su_status()
  home_dir_weight()
  last_login()
  let "n+=1"
done
exit 0
}

su_status()
{
var=$(sudo -l -U $name)
if [ $? -eq 0]
  echo("has sudo status")
else
  echo("no sudo")
fi
}

home_dir_weight()
{

}

last_login()
{
return last $name | head -n 1
}
