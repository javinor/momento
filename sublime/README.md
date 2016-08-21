# Sublime Text 3

## Install Package Control

Copy installation script to sublime terminal `ctrl+{backtick}` from https://packagecontrol.io/installation#st3

## Sublime Settings

Restore:
``` bash
cp Preferences.sublime-settings /Users/javinor/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
```

Save:
``` bash
cp /Users/javinor/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings .
```

## Inconsolata Font

```bash
brew tap caskroom/fonts
brew cask install font-inconsolata
```bash

or download from here: https://fonts.google.com/specimen/Inconsolata

or with no network:

```bash
cp inconsolata/*.ttf /Library/Fonts/
```
