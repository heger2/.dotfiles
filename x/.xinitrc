[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

numlockx &
dropbox-cli start &
feh --bg-scale /home/jeff/Pictures/wallpapers/tetons_night.png &
exec i3
