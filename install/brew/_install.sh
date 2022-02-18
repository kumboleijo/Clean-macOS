SCRIPT_PATH=$(dirname "$0")

brew bundle --file=$SCRIPT_PATH/casks.rb
brew bundle --file=$SCRIPT_PATH/formulae.rb
brew bundle --file=$SCRIPT_PATH/mas.rb
brew bundle --file=$SCRIPT_PATH/taps.rb
