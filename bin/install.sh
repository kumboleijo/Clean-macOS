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

# Install Brew
printf "⚙️  Check Brew...\n"
if test ! $(which brew); then
  # Install Homebrew
    printf "📦 Installing XCode CL tools...\n"
    xcode-select --install
    printf "📦 Installing Homebrew...\n"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/$ROOT/install/master/install)"
  # Change permissions
    brew -v
    sudo chown -R $USER /usr/local/Cellar
  # Install MAS
    printf "📦 Installing MAS...\n"
    brew install mas
  # Check Brews
    brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor
else
    printf "📦 Homebrew is already installed...\n"
fi

# Install Apps and Tools
printf "📦 Installing Apps ands Tools...\n"

printf "📦 Brew...\n"
$ROOT/install/brew/_install.sh

printf "📦 Curl...\n"
$ROOT/install/curl/_install.sh

printf "📦 Helm...\n"
$ROOT/install/helm/_install.sh

printf "📦 VSCode...\n"
$ROOT/install/vscode/_install.sh

printf "📦 ZSH...\n"
$ROOT/install/zsh/_install.sh

printf "📦 iTerm...\n"
$ROOT/install/iterm/_install.sh

# Cleanup
printf "⚙️ Cleanup and final touches...\n"
brew -v update && brew -v upgrade && brew upgrade --cask && mas upgrade && brew -v cleanup --prune=2 && brew doctor

# Exit script
exit
