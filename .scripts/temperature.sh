#!/bin/sh
#
# Saumon i3blocks scripts
# temperature (display hardware temperature)
#

temp=$(sensors | grep -i "CPU" | awk '{print substr($2,2);}' | cut -d '.' -f1)
#temp=$(sensors "$BLOCK_INSTANCE" | grep Tdie | awk '{print substr($2,2);}' | cut -d '.' -f1)

if [ "$temp" -ge 80 ]; then
  color="#f44336"
  icon=""
elif [ "$temp" -ge 60 ]; then
  color="#ff9800"
  icon=""
elif [ "$temp" -ge 50 ]; then
  color="#dddddd"
  icon=""
else
  color="#dddddd"
  icon=""
fi

printf "<span color='%s'> %s  %s<span font_size='small'>°C</span></span>\n" "$color" "$icon" "$temp" 

