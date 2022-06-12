date_s=$(date +'%a %F %l:%M   ')
bat_loc=/sys/class/power_supply/BAT1
bat_s=$(cat $bat_loc/capacity $bat_loc/status)
echo $bat_s - "$date_s"
