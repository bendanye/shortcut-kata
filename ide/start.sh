#!/bin/bash

SCRIPT_DIR=$( dirname -- "$0"; )

DATA_FILE="$SCRIPT_DIR/time_taken.txt"

if ! test -f "$DATA_FILE"; then
    echo "start_date;practice_type;time_taken_in_secs" > $DATA_FILE
fi

function kata() {
    local start_line_num=$1
    local stop_line_num=$2

    local START=$(date +%s)

    for((i=$start_line_num;i<=$stop_line_num;++i)) do
        clear
        awk "NR == $i" $SCRIPT_DIR/README.md
        read -p "Press any keys to continue"
    done

    local END=$(date +%s)
    local secs=$((END-START))

    local START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

    echo "$START_FORMATTED;$secs" >> $DATA_FILE
}

start_line_num=44
stop_line_num=56

kata 44 56

echo "Shortcut kata (ide) Completed!"