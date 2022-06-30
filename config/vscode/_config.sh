# Update Visual Studio Code settings [2/2]
printf "⚙️ Update Visual Studio Code settings...\n"
SCRIPT_PATH=$(dirname "$0")

sudo rm -rf ~/Library/Application\ Support/Code/User/settings.json > /dev/null 2>&1
sudo rm -rf ~/Library/Application\ Support/Code/User/keybindings.json > /dev/null 2>&1
cp $SCRIPT_PATH/settings.json ~/Library/Application\ Support/Code/User/settings.json
cp $SCRIPT_PATH/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json