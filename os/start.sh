#!/bin/bash

STICKY_INSTRUCTION_MAIN_FILE=""

SCRIPT_DIR=$( dirname -- "$0"; )

DATA_FILE="$SCRIPT_DIR/time_taken.txt"

if ! test -f "$DATA_FILE"; then
    echo "start_date,time_taken_in_secs" > $DATA_FILE
fi

if [[ $STICKY_INSTRUCTION_MAIN_FILE == "" ]]; then
    clear
    awk "NR == 5" $SCRIPT_DIR/README.md
    read -p "Press any keys to start"

    start_line_num=6
    stop_line_num=15

    START=$(date +%s)

    for((i=$start_line_num;i<=$stop_line_num;++i)) do
        clear
        awk "NR == $i" $SCRIPT_DIR/README.md
        read -p "Press any keys to continue"
    done

else
    START=$(date +%s)
    python3 $STICKY_INSTRUCTION_MAIN_FILE --markdown_path "$SCRIPT_DIR/README.md" --beginning_part "## Practice" --ending_part "## "
fi

END=$(date +%s)
secs=$((END-START))

START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')

echo "$START_FORMATTED,$secs" >> $DATA_FILE

echo "Shortcut kata (os) completed in $secs seconds!"