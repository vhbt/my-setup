#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#bash ./icon.sh
# Launch bar1 and bar2
#polybar -c ~/.config/polybar/config.ini main &
# polybar top &
#polybar bottom &

# xps 15 + monitor
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top &
done