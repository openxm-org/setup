#!/bin/sh
echo "This is Asir installer for iOS."
cd
if [ -d OpenXM ]; then
  echo "'OpenXM' directory already exists. Please rename/remove it and try \"sh install.sh\" again."
else
  wget https://openxm-org.github.io/setup/2024/ios/asir_ios.tar.gz
  apk add tar
  echo "Extracting Asir archive ..."
  tar xf asir_ios.tar.gz
  echo "Done!"
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
