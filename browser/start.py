import os
import sys
import time
import platform
import subprocess
from datetime import datetime

STICKY_INSTRUCTION_MAIN_FILE = ""
BROWSER = "Google Chrome"

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_FILE = os.path.join(SCRIPT_DIR, "time_taken.txt")
README_FILE = os.path.join(SCRIPT_DIR, "README.md")

# Ensure data file exists
if not os.path.isfile(DATA_FILE):
    with open(DATA_FILE, "w") as f:
        f.write("start_date,time_taken_in_secs\n")


def open_browser():
    urls = [
        "https://www.google.com",
        "https://www.yahoo.com",
        "https://www.bing.com",
        "https://www.youtube.com",
        "https://support.google.com/chrome/answer/157179?hl=en&co=GENIE.Platform%3DDesktop",
    ]

    if platform.system() == "Darwin":  # macOS
        subprocess.call(["open", "-n", "-a", BROWSER])
        time.sleep(2)
        for url in urls:
            subprocess.call(["open", "-a", BROWSER, url])
    elif platform.system() == "Windows":
        for url in urls:
            os.startfile(url)
    else:
        print(f"Unsupported OS for opening {BROWSER}.")
        sys.exit(1)


open_browser()

if STICKY_INSTRUCTION_MAIN_FILE == "":
    os.system("cls" if platform.system() == "Windows" else "clear")

    with open(README_FILE, "r") as f:
        lines = f.readlines()

    if len(lines) >= 5:
        print(lines[4].strip())
    input("Press any key to start...")

    start_line_num = 6
    stop_line_num = 26

    start_time = time.time()

    for i in range(start_line_num, stop_line_num + 1):
        os.system("cls" if platform.system() == "Windows" else "clear")
        if i - 1 < len(lines):
            print(lines[i - 1].strip())
        input("Press any key to continue...")
else:
    start_time = time.time()
    subprocess.call(
        [
            sys.executable,
            STICKY_INSTRUCTION_MAIN_FILE,
            "--markdown_path",
            README_FILE,
            "--beginning_part",
            "## Practice",
            "--ending_part",
            "## ",
            "--window_location_option",
            "middle",
        ]
    )

end_time = time.time()
elapsed_secs = int(end_time - start_time)

start_formatted = datetime.fromtimestamp(start_time).strftime("%Y-%m-%d %H:%M:%S")

with open(DATA_FILE, "a") as f:
    f.write(f"{start_formatted},{elapsed_secs}\n")

print(f"Shortcut kata (browser) completed in {elapsed_secs} seconds!!")
