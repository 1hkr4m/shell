#!/bin/bash

# script demonstrates case statment
if [[ "${1}" = 'start' ]]
then
    echo "Start"
elif [[ "${1}" = 'stop'  ]]
then
    echo "Stoping"
elif [[ "${1}" = 'status' ]]
then
    echo 'Status'
else
    echo 'Supply a valid option' >2
    exit 1
fi


case "${1}" in 
    start)
        echo 'Starting.'
        ;;
    stop)
        echo 'Stoping'
        ;;
    status|state)
        echo 'Status'
        ;;
    *)
        echo 'Suply a valid option' >&2
        exit 1
        ;;
esac

