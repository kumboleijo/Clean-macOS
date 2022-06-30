SCRIPT_PATH=$(dirname "$0")

# Update Git settings [1/1]
printf "⚙️ Update Git settings...\n"
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore > /dev/null 2>&1
cp $SCRIPT_PATH/.gitignore ~/.gitignore
cp $SCRIPT_PATH/.gitconfig ~/.gitconfig