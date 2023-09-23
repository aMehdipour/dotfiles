#!/usr/bin/env fish
killall -q polybar
while pgrep -u (id -u) -x polybar >/dev/null
    sleep 1
end
polybar main &

