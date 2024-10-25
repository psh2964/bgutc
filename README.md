# Bash Graphical User Theme Changer (bgutc)

bgutc is a bash script for linux that allows for quick switching between different theming presets. 

## Installation

---
### Dependencies
 - zenity
---

> [!WARNING]
> It is reccomended to backup your configuration files before installing bgutc


### Manual installation

```
$ git clone https://github.com/sam-bytes/bgutc.git
$ cd bgutc
# bash install.sh
```

## Configuration


### Step 1: Add programs to your config
On the **first** line of the configuration file, add the names of the programs whose themes you want to switch:

---
> ~/.config/bgut.conf
```
rofi waybar
```
---
### Step 2: Add presets to your config

On the **second** line, add the names of your themes:

---
> ~/.config/bgut.conf
```
rofi polybar
waterfall nightfall
```
---
### Step 3: Preset Creation

---
You now have to provide the path to each program's configuration files, for each preset:
> ~/.config/bgut.conf
```
[program's name]
conf="/path/to/the/programs/config/folder"
preset_1="/home/username/.config/bgutc/program/preset_1/" 
preset_2="/home/username/.config/bgutc/program/preset_2/"
```
---

### Full example:

> ~/.config/bgut.conf
```
rofi waybar
waterfall nightfall

[rofi]
conf="/home/user/.config/rofi/"
waterfall="/home/user/.config/bgutc/rofi/waterfall/"
nightfall="/home/user/.config/bgutc/rofi/nightfall/"

[waybar]
conf="/home/user/.config/waybar/"
waterfall="/home/user/.config/bgutc/waybar/waterfall/"
nightfall="/home/user/.config/bgutc/waybar/nightfall/"
```

## Compatibility:

Currently, bgutc is compatible with:

#### WM's
- i3
- sway


#### Bars
- polybar
- waybar

#### Other
- rofi

## If you have an issue

Open an issue and it will be fixed as soon as possible.
