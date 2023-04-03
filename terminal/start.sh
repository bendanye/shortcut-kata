start_line_num=5
stop_line_num=14

for((i=$start_line_num;i<=$stop_line_num;++i)) do
    clear
    awk "NR == $i" README.md
    read -p "Press any keys to continue"
done

echo "Shortcut kata (terminal) Completed!"