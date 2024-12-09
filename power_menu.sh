#!/bin/bash

# Display a menu
chosen=$(echo -e "Lock\nLogout\nReboot\nShutdown" | wofi --show dmenu --prompt "Power Menu")

# Execute the selected action
case $chosen in
    Lock)
        swaylock # Replace with your lock screen command
        ;;
    Logout)
        hyprctl dispatch exit
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    *)
        exit 1
        ;;
esac
