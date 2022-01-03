#!/bin/bash

main()
{
prompt=$(sudo -nv 2>&1)

if [ $? -eq 0 ]; then
  # exit code of sudo-command is 0
  echo "has_sudo__pass_set"
elif echo $prompt | grep -q '^sudo:'; then
  echo "has_sudo__needs_pass"
else
  echo "no_sudo"
fi
}
