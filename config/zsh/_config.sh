SCRIPT_PATH=$(dirname "$0")

rm -rf ~/.zshrc > /dev/null 2>&1
cp $SCRIPT_PATH/.zshrc ~/.zshrc

rm -rf ~/.p10k.zsh > /dev/null 2>&1
cp $SCRIPT_PATH/.p10k.zsh ~/.p10k.zsh