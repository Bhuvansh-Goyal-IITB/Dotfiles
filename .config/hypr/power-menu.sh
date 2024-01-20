#!/bin/bash

choice=$(echo -e "Power Off\nReboot\nLock" | rofi -dmenu -theme-str "window { width: 190; } inputbar { enabled: false; } element-text { horizontal-align: 0.5; } element { children: [element-text]; }" -l 3)

case $choice in 
  "Power Off")
    systemctl poweroff
    ;;
  "Reboot")
    systemctl reboot
    ;;
  "Lock")
    swaylock
    ;;
esac
