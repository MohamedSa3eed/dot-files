
# dot-files

This is a collection of my personal configuration files for various programs and tools that I use on my Linux system.

## Video


https://github.com/MohamedSa3eed/dot-files/assets/88633195/8a6e97de-cb97-43d6-b2ca-7828b1da1cac


## Installation

To use these configuration files on your own system, you can clone this repository into your home directory:

```
git clone https://github.com/MohamedSa3eed/dot-files.git 
```

Alternatively, you can copy each individual configuration file to its corresponding location on your system.

## Contents

This repository includes configuration files for the following programs and tools and some scripts:

- `i3`: window manager configuration
- `bash`: Bash shell configuration
- `zsh`: Zsh shell configuration
- `neovim`: Neovim text editor configuration
- `dmenu`: dynamic menu configuration
- `ranger`: file manager configuration
- `compton`: X11 compositor configuration
- `polybar`: status bar configuration
- `sxiv`: image viewer configuration
- `zathura`: document viewer configuration
- `dunst`: notification daemon configuration
- `BATCONTROL.sh`: Script to control battery charging threshold 
- `set-multilingual-keyboard.sh`: Script to set multiple keyboard layouts on X server


## License

Feel free to use them as inspiration for your own configuration files. If you find a bug or have a suggestion for improvement, please feel free to create an issue or submit a pull request.

## Acknowledgments

I'd like to thank the open source community for providing many of the tools and programs that I use on a daily basis. Without them, this repository would not exist.this is my **system configurations**
# i3 Window Manager Keybindings

This README provides an overview of the keybindings for the i3 window manager. These keybindings allow you to control window management, workspace switching, and other features of i3.

## Mod Key

The `Mod` key refers to the modifier key used in combination with other keys to trigger actions. By default, i3 uses the `Mod4` key, which corresponds to the Super (Windows) key.

## Window Management

| Key Combination      | Action                                       |
|----------------------|----------------------------------------------|
| Mod + Enter          | Launch the terminal emulator                  |
| Mod + h              | Focus the window to the left                  |
| Mod + j              | Focus the window below                        |
| Mod + k              | Focus the window above                        |
| Mod + l              | Focus the window to the right                 |
| Mod + Shift + h      | Move the focused window to the left           |
| Mod + Shift + j      | Move the focused window below                 |
| Mod + Shift + k      | Move the focused window above                 |
| Mod + Shift + l      | Move the focused window to the right          |
| Mod + s              | Set the layout to stacking                    |
| Mod + w              | Set the layout to tabbed                      |
| Mod + e              | Toggle between horizontal and vertical split  |
| Mod + f              | Toggle fullscreen mode for the focused window |
| Mod + x              | Toggle tiling/floating mode for the focused window |
| Mod + r              | Reload the configuration file                  |
| Mod + Shift + c      | Restart i3 inplace (preserves your layout/session) |
| Mod + Shift + e      | Exit i3 (logs you out of your X session)       |
| Mod + 9              | Lock the screen                                |
| Mod + Shift + g      | Enter the gap mode                             |

## Workspaces

| Key Combination          | Action                                                       |
|--------------------------|--------------------------------------------------------------|
| Mod + < number >           | Switch to a specific workspace (e.g., Mod + 1 switches to workspace 1) |
| Mod + Ctrl + < number >    | Move the focused container to a specific workspace          |
| Mod + Shift + < number >   | Move the focused container to a specific workspace and switch to that workspace |

## Customization

Feel free to customize the keybindings according to your preferences. To modify the keybindings, edit the i3 configuration file located at `~/.config/i3/config`. Remember to reload i3 for the changes to take effect.

For a complete reference of all available keybindings and settings, please consult [the i3 User's Guide](https://i3wm.org/docs/userguide.html).
