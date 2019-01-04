ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# So we use all of the packages we are about to install
echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.bashrc
source ~/.bashrc

brew install git
brew install zsh
brew install zsh-syntax-highlighting
brew install vim 
brew install tmux

chsh -s /bin/zsh
