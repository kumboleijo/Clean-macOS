#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################
CURRENT_PATH=$(dirname "$0")
BASE_PATH=$(dirname "$CURRENT_PATH")

ROOT=$BASE_PATH                   # root folder of Clean-macOS
BIN=$BASE_PATH/bin                # shell scripts

###############################################################################
# Configure                                                                   #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Configure System, Apps and Tools
printf "📦 Configure System, Apps ands Tools...\n"

printf "🍏 macOS...\n"
$ROOT/config/macOS/_config.sh

printf "📦 Bashmania...\n"
$ROOT/config/bashmania/_config.sh

printf "📦 Git...\n"
$ROOT/config/git/_config.sh

printf "📦 Datagrip...\n"
$ROOT/config/datagrip/_config.sh

printf "📦 Forklift...\n"
$ROOT/config/forklift/_config.sh

printf "📦 VSCode...\n"
$ROOT/config/vscode/_config.sh

printf "📦 ZSH...\n"
$ROOT/config/zsh/_config.sh

# Cleanup
printf "⚙️ Cleanup and final touches...\n"
brew -v update && brew -v upgrade && brew upgrade --cask && mas upgrade && brew -v cleanup --prune=2 && brew doctor

# Exit script
exit
