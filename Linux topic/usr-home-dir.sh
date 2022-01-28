#!/bin/bash

main()
{
homedir=$( getent passwd "igor" | cut -d: -f6 )
du -sh $homedir | awk -F' ' '{ print $1}'
}

main 
