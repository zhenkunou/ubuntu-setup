#!/bin/sh

SETUP=~/workspace/ubuntu-setup

ln -sf $SETUP/.bash_aliases         ~/.
ln -sf $SETUP/.vimrc.local          ~/.
ln -sf $SETUP/.vimrc.bundles.local  ~/.
ln -sf $SETUP/.ctags                ~/.
ln -sf $SETUP/.gitconfig            ~/.
ln -sf $SETUP/.conkyrc              ~/.
#ln -sf $SETUP/.proxy.ini           ~/.

ln -sf $SETUP/xmonad.hs             ~/.xmonad/.
ln -sf $SETUP/bin/*                 ~/bin/.
sudo ln -sf $SETUP/hosts                 /etc/.
sudo ln -sf $SETUP/lighttpd.conf         /etc/lighttpd/.

