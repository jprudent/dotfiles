# merge Xresource 
xrdb -merge ~/.Xresources

# run notification server
dunst &

# lauch i3 forcing dual screen
exec i3 --force-xinerama
