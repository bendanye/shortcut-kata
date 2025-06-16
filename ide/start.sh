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
TOTAL_SECS=$((END-START))

if [[ $OSTYPE == "darwin"* ]]; then
    START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')
elif [[ $OSTYPE == "msys" || $OSTYPE == "cygwin"* ]]; then
    START_FORMATTED=$(date -d @"$START" '+%Y-%m-%d %H:%M:%S')
fi

echo "$START_FORMATTED,$TOTAL_SECS" >> $DATA_FILE

MINUTES=$(( TOTAL_SECS/60 ))
SECS=$(( TOTAL_SECS%60 ))

echo "Shortcut kata (ide) completed in $MINUTES minutes, $SECS seconds"
