#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar_top.log /tmp/polybar_btm.log
polybar top 2>&1 | tee -a /tmp/polybar_top.log & disown
polybar btm 2>&1 | tee -a /tmp/polybar_btm.log & disown

echo "Bars launched..."
