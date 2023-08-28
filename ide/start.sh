#!/bin/bash

SCRIPT_DIR=$( dirname -- "$0"; )

DATA_FILE="$SCRIPT_DIR/time_taken.txt"

if ! test -f "$DATA_FILE"; then
    echo "start_date;time_taken_in_secs" > $DATA_FILE
fi

START=$(date +%s)

echo "Shortcut kata (ide) Started. Please any keys to stop"
read

END=$(date +%s)
secs=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')
echo "$START_FORMATTED,$secs" >> $DATA_FILE

echo "Shortcut kata (ide) Completed!"
