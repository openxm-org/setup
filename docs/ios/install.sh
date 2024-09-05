#!/bin/sh
echo "This is Asir installer for iOS."
cd
if [ -d OpenXM ]; then
  echo "'OpenXM' directory already exists. Please rename/remove it and try \"sh install.sh\" again."
else
  wget https://openxm-org.github.io/setup/ios/asir_ios.tar.gz
  echo "Extracting Asir archive ..."
  tar xf asir_ios.tar.gz
  echo "Done!"
  if [ ! -f .feprc ]; then
    cp OpenXM/rc/feprc .feprc
  fi
  if [ ! -f .profile ]; then
    cp /etc/profile .profile
  fi
  if [ ! "$(cat .profile | grep 'source ./OpenXM/rc/bashrc' )" ]; then
    echo "source ./OpenXM/rc/bashrc" >> .profile
  fi
  rm asir_ios.tar.gz
  echo "Installing the ncurses library ..."
  apk add ncurses-dev
  echo "Asir setup has done!"
fi
