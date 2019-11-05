ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

brew install cmake
brew install zsh
brew install zsh-syntax-highlighting
brew install tmux

chsh -s /bin/zsh
