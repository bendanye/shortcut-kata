#!/bin/bash

STICKY_INSTRUCTION_MAIN_FILE=""

SCRIPT_DIR=$( dirname -- "$0"; )

DATA_FILE="$SCRIPT_DIR/time_taken.txt"

if ! test -f "$DATA_FILE"; then
    echo "start_date,time_taken_in_secs" > $DATA_FILE
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

if [[ $STICKY_INSTRUCTION_MAIN_FILE == "" ]]; then
    clear
    awk "NR == 5" $SCRIPT_DIR/README.md
    read -p "Press any keys to start"

    start_line_num=6
    stop_line_num=26

    START=$(date +%s)

    for((i=$start_line_num;i<=$stop_line_num;++i)) do
        clear
        awk "NR == $i" $SCRIPT_DIR/README.md
        read -p "Press any keys to continue"
    done
else
    START=$(date +%s)
    python3 $STICKY_INSTRUCTION_MAIN_FILE --markdown_path "$SCRIPT_DIR/README.md" --beginning_part "## Practice" --ending_part "## " --window_location_option "middle"
fi

END=$(date +%s)
secs=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

echo "$START_FORMATTED,$secs" >> $DATA_FILE

echo "Shortcut kata (browser) completed in $secs seconds!!"
