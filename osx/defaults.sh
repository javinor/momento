#!/usr/bin/env sh

# Safari {{{

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# }}}


# Activity Monitor {{{

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

# }}}


# Finder {{{

# Show the ~/Library folder.
chflags nohidden ~/Library

# Show hidden files and file extensions by default
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Allow text-selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# }}}


# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Set a really fast keyboard repeat rate.
defaults write -g KeyRepeat -int 2

# Require password immediately after sleep or screen saver.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots as PNGs, without shadow
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

# Disable the sudden motion sensor as it’s not useful for SSDs
sudo pmset -a sms 0

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

for app in "Activity Monitor" "cfprefsd" "Dock" "Finder" "Safari" \
					 "SystemUIServer" "Terminal"; do
	kill all "${app}" > /dev/null 2>&1
done

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Defaults are set."
echo "Some changes will not take effect until you reboot your machine."