printf "⚙️ Update Zsh settings...\n"

SCRIPT_PATH=$(dirname "$0")

sudo rm -rf ~/.zshrc > /dev/null 2>&1
cp $SCRIPT_PATH/.zshrc ~/.zshrc

echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

sudo rm -rf ~/.p10k.zsh > /dev/null 2>&1
cp $SCRIPT_PATH/.p10k.zsh ~/.p10k.zsh