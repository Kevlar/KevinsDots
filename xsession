#!/bin/sh

###xsetroot -cursor_name left_ptr
###xset r rate 200 30 # keyboard repeat rate.

# kmix &
# kpackagekit-smart-icon &

trayer --edge top --align right --height 1 --width 5 --SetDockType true --SetPartialStrut true --expand true --tint 0x555555 --alpha 225 &


# Uncomment to enable networkmanager applet
#exec nm-applet --sm-disable &

exec emacs --daemon &
exec urxvtd -f &
xmodmap .xmodmap
exec ck-launch-session xmonad
