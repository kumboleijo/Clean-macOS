# Install Visual Studio Code plugins [1/2]
printf "⚙️ Put Visual Studio Code in quarantine to install plugins...\n"
xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app

printf "📦 Install Visual Studio Code plugins...\n"
open -a "Visual Studio Code"
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension Tyriar.sort-lines
code --install-extension yzhang.markdown-all-in-one
code --install-extension pkief.material-icon-theme
code --install-extension esbenp.prettier-vscode
code --install-extension emroussel.atomize-atom-one-dark-theme
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension redhat.vscode-yaml