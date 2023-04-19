#!/bin/bash

SCRIPT_DIR=$( dirname -- "$0"; )

DATA_FILE="$SCRIPT_DIR/time_taken.txt"

if ! test -f "$DATA_FILE"; then
    echo "start_date,time_taken_in_secs" > $DATA_FILE
fi

start_line_num=5
stop_line_num=14

START=$(date +%s)

for((i=$start_line_num;i<=$stop_line_num;++i)) do
    clear
    awk "NR == $i" $SCRIPT_DIR/README.md
    read -p "Press any keys to continue"
done

END=$(date +%s)
secs=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

echo "$START_FORMATTED,$secs" >> $DATA_FILE

echo "Shortcut kata (terminal) Completed!"
