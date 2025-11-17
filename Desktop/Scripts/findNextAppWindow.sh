# Get the active window ID
activeWinID=`xprop -root | grep '^_NET_ACTIVE_W' | awk -F'# 0x' '{print $2}' | awk -F', ' '{print $1}'`

# Find the name of the application that the window ID coordinates to
appName=`wmctrl -lx | grep $activeWinID | awk '{print$3}'`

# List all of the windows of that application
winList=`wmctrl -lx | grep $appName | awk '{print $1}'`

# Get next window to focus on, removing id active
switchTo=`echo $winList | sed s/\.\*$activeWinID// | awk '{print $1}'`

# If the current window is the last one go to the first
if [ "$switchTo" == "" ];then
    switchTo=`echo $winList | awk '{print $1}'`
fi

# Switch to the next instance
wmctrl -ia "$switchTo" &
