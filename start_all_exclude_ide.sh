#!/bin/bash

SCRIPT_DIR=$( dirname -- "$0"; )

sh "$SCRIPT_DIR/terminal/start.sh"
sh "$SCRIPT_DIR/start.sh"
sh "$SCRIPT_DIR/os/start.sh"
python3 "$SCRIPT_DIR/browser/start.py"