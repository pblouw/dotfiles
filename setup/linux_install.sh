# NOTES:
# install VIM from source with python support (required for certain plugins)
log_file=~/install_progress_log.txt

sudo apt-get install zsh
if type -p zsh > /dev/null; then
    echo "zsh Installed" >> $log_file
else
    echo "zsh FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get install zsh-syntax-highlighting


sudo apt-get install tmux
if type -p tmux > /dev/null; then
    echo "tmux Installed" >> $log_file
else
    echo "tmux FAILED TO INSTALL!!!" >> $log_file
fi

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

chsh -s /bin/zsh
zsh miniconda.sh

sudo apt-get install fonts-powerline
../fzf/install

#==============
# Give a summary of what has been installed
#==============
echo -e "\n====== Summary ======\n"
cat $log_file
echo
rm $log_file
