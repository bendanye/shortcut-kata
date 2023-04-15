#!/bin/bash

SCRIPT_DIR=$( dirname -- "$0"; )

DATA_FILE="$SCRIPT_DIR/time_taken.txt"

if ! test -f "$DATA_FILE"; then
    echo "start_date;time_taken_in_secs" > $DATA_FILE
fi

function open_chrome() {
    open --new -a "Google Chrome"
    sleep 2
    open -a "Google Chrome" "https://www.google.com"
    open -a "Google Chrome" "https://www.yahoo.com"
    open -a "Google Chrome" "https://www.bing.com"
    open -a "Google Chrome" "https://www.youtube.com"
    open -a "Google Chrome" "https://support.google.com/chrome/answer/157179?hl=en&co=GENIE.Platform%3DDesktop"
}

open_chrome

start_line_num=5
stop_line_num=22

START=$(date +%s)

for((i=$start_line_num;i<=$stop_line_num;++i)) do
    clear
    awk "NR == $i" $SCRIPT_DIR/README.md
    read -p "Press any keys to continue"
done

END=$(date +%s)
secs=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

echo "$START_FORMATTED;$secs" >> $DATA_FILE

echo "Shortcut kata (browser) Completed!"
