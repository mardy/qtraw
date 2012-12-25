QtRaw
=====

Qt image plugin for loading raw files, via libraw. Once installed, it enables
all Qt applications to load raw files produced by most digital cameras.

The code is licensed udner the GPL v3 licence. If you need to distribute it
under a different license, please contact me at info@mardy.it

INSTALL
=======

The QtRaw plugin depends on Qt and libraw. In order to build it, make sure you
have the necessary development packages installed. Under Ubuntu, this can be
achieved by running these commands:

  sudo apt-get install libraw-dev libqt4-dev

Alternatively, you can find the libraw source code at
http://www.libraw.org/download


Once the dependencies are set up, the following commands will build and install
the plugin into your system:

  qmake
  make
  sudo make install

If everything worked correctly, all Qt applications should be able to load and
display raw camera files.
