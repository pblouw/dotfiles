
**Notes for Mac:**

Download and install Miniconda via website (no wget available).

For compiling Vim from source with python3 support, which is required for some
plugins, run the following command to install command line tools:

.. code-block:: batch

  Xcode-select --install

Now clone the Vim repo and do the following from within the repo:

.. code-block:: batch

  cd src
  ./configure --enable-pythoninterp \
              --enable-python3interp \
              --enable-fail-if-missing \
              --with-python3-config-dir=/Users/pblouw/miniconda3/lib/python3.7/config-3.7m-darwin

  make distclean  # if you build Vim before
  make
  sudo make install

**General Notes:**

The YouCompleteMe plugin does not play nice with Anaconda python, so it may be
necessary to reinstall the plugin with system python depending installation
order: 

.. code-block:: batch

  /usr/bin/python ~/.vim/bundle/Youcompleteme/install.py

To set git to store access tokens etc. on a new machine, do the following:

.. code-block:: batch

  git config --global credential.helper osxkeychain  # or whatever on Linux
  git config --global user.name "Name"
  git config --global user.email "you@mail"
  git config --global core.editor "vim"

To install powerline fonts

.. code-block:: batch

  # clone
  git clone https://github.com/powerline/fonts.git --depth=1
  # install
  cd fonts
  ./install.sh
  # clean-up a bit
  cd ..
  rm -rf fonts

To get airline to work in Vim, be sure to pick a Powerline Font after installing
powerline.

To enable directory searchs with FZF: Open the iterm2 preference settings, go
to Profiles -> Keys. In the bottom right of the window, there are different
buttons to choose the behaviour of Option key. Just choose Esc+. 

To install Zsh plugins:

.. code-block:: batch
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
 git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
