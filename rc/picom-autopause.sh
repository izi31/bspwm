#!/bin/sh

picom_running() {
    pgrep -x picom > /dev/null
}

stop_picom() {
    pkill -x picom
}

start_picom() {
    picom --config ~/.config/picom/picom.conf &
}

while true; do
    active_win=$(xprop -root _NET_ACTIVE_WINDOW | awk '{print $5}')
    if [ "$active_win" = "0x0" ]; then
        sleep 1
        continue
    fi

    fullscreen=$(xprop -id "$active_win" _NET_WM_STATE | grep -c "_NET_WM_STATE_FULLSCREEN")

    if [ "$fullscreen" -gt 0 ]; then
        if picom_running; then
            echo "Fullscreen detected, stopping picom"
            stop_picom
        fi
    else
        if ! picom_running; then
            echo "No fullscreen, starting picom"
            start_picom
        fi
    fi
    sleep 1
done
