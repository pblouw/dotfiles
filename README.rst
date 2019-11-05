
**Notes for Mac:**

Download and install Miniconda via website (no wget available).

For compiling Vim from source with python3 support, which is required for some
plugins, run the following command to install command line tools:

.. code-block:: batch

  Xcode-select --install

Now clone the Vim repo and do the following from within the repo:

.. code-block:: batch

  cd src
  ./configure --enable-pythoninterp --enable-python3interp --enable-fail-if-missing
  make distclean  # if you build Vim before
  make
  sudo make install

**General Notes:**

The YouCompleteMe plugin does not play nice with Anaconda python, so it may be
necessary to reinstall the plugin with system python depending installation
order: 

.. code-block:: batch

  /usr/bin/python ~/.vim/bundle/Youcompleteme/install.py
