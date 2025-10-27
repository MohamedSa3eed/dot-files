# Start Hyprland only on TTY1 if Wayland is not already running
if [[ $(tty) == /dev/tty1 ]] && [[ -z $WAYLAND_DISPLAY ]]; then
    exec Hyprland
fi
export TERMINAL=kitty
export XDG_TERMINAL_EXEC=kitty
