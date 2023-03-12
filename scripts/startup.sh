# symbol composition
setxkbmap -option compose:menu
# Set up language toggle
setxkbmap -model pc104 -layout us,ru -variant ,, -option grp:alt_shift_toggle

# Screen temp and brightness
#xrandr --output LVDS-1 --brightness 0.8
redshift -P -O 4500K

# Picom for transparency
# Actually, turned it off. 
# Looks unbearable with context menus
#picom --daemon

# polybar
polybar
