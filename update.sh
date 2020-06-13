#!/bin/bash

INSTALL_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

USER_HOME=$HOME

# Make sure user path is correct.
if [ $USER = 'root' ]
then
  USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
fi

echo $USER_HOME

git -C $INSTALL_PATH submodule update --remote

sudo make -C "$INSTALL_PATH/dwm" clean install
sudo make -C "$INSTALL_PATH/dwmblocks" clean install
sudo make -C "$INSTALL_PATH/st" clean install
sudo make -C "$INSTALL_PATH/dmenu" clean install

ln -sfn "$INSTALL_PATH/dwm" "$USER_HOME/.config/"
ln -sfn "$INSTALL_PATH/dwmblocks" "$USER_HOME/.config/"
ln -sfn "$INSTALL_PATH/st" "$USER_HOME/.config/"
ln -sfn "$INSTALL_PATH/dmenu" "$USER_HOME/.config/"
