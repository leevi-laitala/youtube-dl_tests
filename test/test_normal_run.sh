#!/bin/bash
#change video
mkdir videofolder
cd ./videofolder
VALUE=1
youtube-dl -o "video" https://www.reddit.com/r/leagueoflegends/comments/y2qtmo/t1_gumayusi_lucian_insane_outplay_in_solo_queue/ && VALUE=0

if [ ! -e "video.*" ]; then
  VALUE=1
fi
cd ..
rm -r videofolder
exit $VALUE