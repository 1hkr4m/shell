#!/bin/bash

# This script will tell you how long until a certain date from today.
# In weeks, days, hours, minutes, and seconds and percentage of time passed.

# Usage: ./HowLongTo.sh 2018-12-25

# Check if the date is provided. If no by default it will be end of the year.
if [ -z "$1" ]; then
    date="2026-01-01"
else
    date=$1
fi

# Get the current date in seconds.
current_date=$(date +%s)

# Get the date in seconds.
target_date=$(date -d $date +%s)

# Calculate the difference in seconds.
difference=$((target_date-current_date))

# Calculate the difference in weeks, days, hours, minutes, and seconds.
weeks=$((difference/(60*60*24*7)))
days=$((difference/(60*60*24)))
hours=$((difference/(60*60)))
minutes=$((difference/60))
seconds=$difference

# Calculate the percentage how much time passed.
current_date=$((current_date-$(date -d "$(date +%Y)-01-01" +%s)))
target_date=$((target_date-$(date -d "$(date +%Y)-01-01" +%s)))
percentage=$((100*current_date/target_date))

# Print the results.
echo "Weeks: $weeks"
echo "Days: $days"
echo "Hours: $hours"
echo "Minutes: $minutes"
echo "Seconds: $seconds"
echo "Passed: $percentage%"